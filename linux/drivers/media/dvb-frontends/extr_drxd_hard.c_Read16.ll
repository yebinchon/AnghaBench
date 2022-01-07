; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_Read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_Read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32, i32*, i32)* @Read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Read16(%struct.drxd_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drxd_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [2 x i32], align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.drxd_state*, %struct.drxd_state** %6, align 8
  %14 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds i32, i32* %17, i64 1
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 255
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = or i32 %25, %28
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds i32, i32* %24, i64 1
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  store i32 %33, i32* %30, align 4
  %34 = load %struct.drxd_state*, %struct.drxd_state** %6, align 8
  %35 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %40 = call i64 @i2c_read(i32 %36, i32 %37, i32* %38, i32 4, i32* %39, i32 2)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %61

43:                                               ; preds = %4
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %48, %51
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %43
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %56, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %42
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @i2c_read(i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
