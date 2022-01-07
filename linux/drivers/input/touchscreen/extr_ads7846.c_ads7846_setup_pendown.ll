; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_setup_pendown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_setup_pendown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ads7846 = type { i32, i64 }
%struct.ads7846_platform_data = type { i64, i32, i64 }

@GPIOF_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ads7846_pendown\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to request/setup pendown GPIO%d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"no get_pendown_state nor gpio_pendown?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.ads7846*, %struct.ads7846_platform_data*)* @ads7846_setup_pendown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7846_setup_pendown(%struct.spi_device* %0, %struct.ads7846* %1, %struct.ads7846_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.ads7846*, align 8
  %7 = alloca %struct.ads7846_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.ads7846* %1, %struct.ads7846** %6, align 8
  store %struct.ads7846_platform_data* %2, %struct.ads7846_platform_data** %7, align 8
  %9 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %10 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %15 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ads7846*, %struct.ads7846** %6, align 8
  %18 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %21 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @gpio_is_valid(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %27 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GPIOF_IN, align 4
  %30 = call i32 @gpio_request_one(i32 %28, i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %37 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %69

42:                                               ; preds = %25
  %43 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ads7846*, %struct.ads7846** %6, align 8
  %47 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %54 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %7, align 8
  %57 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @gpio_set_debounce(i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %52, %42
  br label %67

61:                                               ; preds = %19
  %62 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %69

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %13
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %61, %33
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @gpio_set_debounce(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
