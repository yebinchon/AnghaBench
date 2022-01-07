; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c___i2c_bit_add_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c___i2c_bit_add_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32, i32*, i32*, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32* }

@bit_test = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@i2c_bit_algo = common dso_local global i32 0, align 4
@i2c_bit_quirk_no_clk_stretch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Not I2C compliant: can't read SCL\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Bus may be unreliable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32 (%struct.i2c_adapter*)*)* @__i2c_bit_add_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i2c_bit_add_bus(%struct.i2c_adapter* %0, i32 (%struct.i2c_adapter*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32 (%struct.i2c_adapter*)*, align 8
  %6 = alloca %struct.i2c_algo_bit_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 (%struct.i2c_adapter*)* %1, i32 (%struct.i2c_adapter*)** %5, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 4
  %10 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  store %struct.i2c_algo_bit_data* %10, %struct.i2c_algo_bit_data** %6, align 8
  %11 = load i32, i32* @bit_test, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %15 = call i32 @test_bus(%struct.i2c_adapter* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @bit_test, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 3
  store i32* @i2c_bit_algo, i32** %27, align 8
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 0
  store i32 3, i32* %29, align 8
  %30 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 2
  store i32* @i2c_bit_quirk_no_clk_stretch, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %5, align 8
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %40 = call i32 %38(%struct.i2c_adapter* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %37
  %46 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %51, i32 0, i32 1
  %53 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %54, i32 0, i32 1
  %56 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %50, %45
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %43, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @test_bus(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
