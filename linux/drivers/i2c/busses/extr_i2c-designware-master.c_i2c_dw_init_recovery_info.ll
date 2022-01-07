; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_init_recovery_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_init_recovery_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, %struct.i2c_adapter, %struct.i2c_bus_recovery_info }
%struct.i2c_adapter = type { %struct.i2c_bus_recovery_info* }
%struct.i2c_bus_recovery_info = type { %struct.gpio_desc*, i32, i32, i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@i2c_generic_scl_recovery = common dso_local global i32 0, align 4
@i2c_dw_prepare_recovery = common dso_local global i32 0, align 4
@i2c_dw_unprepare_recovery = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"running with gpio recovery mode! scl%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c",sda\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_init_recovery_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_init_recovery_info(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca %struct.i2c_bus_recovery_info*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %7, i32 0, i32 2
  store %struct.i2c_bus_recovery_info* %8, %struct.i2c_bus_recovery_info** %4, align 8
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %9, i32 0, i32 1
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %5, align 8
  %11 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %15 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.gpio_desc* %15, %struct.gpio_desc** %6, align 8
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %17 = call i64 @IS_ERR_OR_NULL(%struct.gpio_desc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %21 = call i32 @PTR_ERR_OR_ZERO(%struct.gpio_desc* %20)
  store i32 %21, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %24 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %24, i32 0, i32 4
  store %struct.gpio_desc* %23, %struct.gpio_desc** %25, align 8
  %26 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %27 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GPIOD_IN, align 4
  %30 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store %struct.gpio_desc* %30, %struct.gpio_desc** %6, align 8
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %32 = call i64 @IS_ERR(%struct.gpio_desc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.gpio_desc* %35)
  store i32 %36, i32* %2, align 4
  br label %63

37:                                               ; preds = %22
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %39 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %39, i32 0, i32 0
  store %struct.gpio_desc* %38, %struct.gpio_desc** %40, align 8
  %41 = load i32, i32* @i2c_generic_scl_recovery, align 4
  %42 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @i2c_dw_prepare_recovery, align 4
  %45 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @i2c_dw_unprepare_recovery, align 4
  %48 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %4, align 8
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %51, i32 0, i32 0
  store %struct.i2c_bus_recovery_info* %50, %struct.i2c_bus_recovery_info** %52, align 8
  %53 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %54 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %56, i32 0, i32 0
  %58 = load %struct.gpio_desc*, %struct.gpio_desc** %57, align 8
  %59 = icmp ne %struct.gpio_desc* %58, null
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %62 = call i32 @dev_info(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %37, %34, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.gpio_desc*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
