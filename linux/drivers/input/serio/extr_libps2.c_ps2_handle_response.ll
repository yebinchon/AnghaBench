; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_handle_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32, i32, i32, i32* }

@PS2_FLAG_CMD1 = common dso_local global i32 0, align 4
@PS2_FLAG_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_handle_response(%struct.ps2dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ps2dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ps2dev* %0, %struct.ps2dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %6 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %12 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %15 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  store i32 %10, i32* %19, align 4
  br label %20

20:                                               ; preds = %9, %2
  %21 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %22 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %31 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %35 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %40 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %39, i32 0, i32 2
  %41 = call i32 @wake_up(i32* %40)
  br label %42

42:                                               ; preds = %38, %27
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %45 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @PS2_FLAG_CMD, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %52 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %56 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %55, i32 0, i32 2
  %57 = call i32 @wake_up(i32* %56)
  br label %58

58:                                               ; preds = %48, %43
  ret i32 1
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
