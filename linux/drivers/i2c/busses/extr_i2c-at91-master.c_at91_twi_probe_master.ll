; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_probe_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_probe_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.at91_twi_dev = type { %struct.TYPE_6__, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i64 }

@atmel_twi_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot get irq %d: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"atmel,fifo-size\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Using FIFO (%u data)\0A\00", align 1
@at91_twi_algorithm = common dso_local global i32 0, align 4
@at91_twi_quirks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @at91_twi_probe_master(%struct.platform_device* %0, i32 %1, %struct.at91_twi_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.at91_twi_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.at91_twi_dev* %2, %struct.at91_twi_dev** %7, align 8
  %9 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %10 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %9, i32 0, i32 4
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %15 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @atmel_twi_interrupt, align 4
  %18 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %19 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call i32 @dev_name(%struct.TYPE_8__* %20)
  %22 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %23 = call i32 @devm_request_irq(%struct.TYPE_7__* %13, i32 %16, i32 %17, i32 0, i32 %21, %struct.at91_twi_dev* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %28 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %31 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %80

36:                                               ; preds = %3
  %37 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %38 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @at91_twi_configure_dma(%struct.at91_twi_dev* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %60 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %59, i32 0, i32 1
  %61 = call i32 @of_property_read_u32(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %65 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %68 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_info(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %63, %54
  %72 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %73 = call i32 @at91_calc_twi_clock(%struct.at91_twi_dev* %72)
  %74 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %75 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32* @at91_twi_algorithm, i32** %76, align 8
  %77 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %78 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32* @at91_twi_quirks, i32** %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %71, %51, %26
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i32, i32, i32, i32, %struct.at91_twi_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @at91_twi_configure_dma(%struct.at91_twi_dev*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @at91_calc_twi_clock(%struct.at91_twi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
