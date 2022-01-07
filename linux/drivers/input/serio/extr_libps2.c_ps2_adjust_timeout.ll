; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_adjust_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_adjust_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2dev*, i32, i32)* @ps2_adjust_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_adjust_timeout(%struct.ps2dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ps2dev* %0, %struct.ps2dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %55 [
    i32 128, label %8
    i32 129, label %15
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @msecs_to_jiffies(i32 100)
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @msecs_to_jiffies(i32 100)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %12, %8
  br label %56

15:                                               ; preds = %3
  %16 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %17 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 170
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %24 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @serio_pause_rx(i32 %25)
  %27 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %28 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %27, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %30 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @serio_continue_rx(i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %22, %15
  %34 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %35 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ps2_is_keyboard_id(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %43 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @serio_pause_rx(i32 %44)
  %46 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %47 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %46, i32 0, i32 2
  store i32 0, i32* %47, align 4
  %48 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %49 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %48, i32 0, i32 3
  store i32 0, i32* %49, align 8
  %50 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %51 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @serio_continue_rx(i32 %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %41, %33
  br label %56

55:                                               ; preds = %3
  br label %56

56:                                               ; preds = %55, %54, %14
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i32 @serio_continue_rx(i32) #1

declare dso_local i32 @ps2_is_keyboard_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
