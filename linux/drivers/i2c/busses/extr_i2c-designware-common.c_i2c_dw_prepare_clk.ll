; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_prepare_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_prepare_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_dw_prepare_clk(%struct.dw_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %14 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PTR_ERR(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %20
  %30 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %31 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %38 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %17
  %44 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %45 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_disable_unprepare(i32 %46)
  %48 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %49 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %41, %27, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
