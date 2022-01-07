; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.adcxx = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad_input = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"device_create_file failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"hwmon_device_register failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adcxx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adcxx_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adcxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.TYPE_3__* @spi_get_device_id(%struct.spi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.adcxx* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.adcxx* %15, %struct.adcxx** %5, align 8
  %16 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %17 = icmp ne %struct.adcxx* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %108

21:                                               ; preds = %1
  %22 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %23 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %22, i32 0, i32 0
  store i32 3300, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %26 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %28 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %27, i32 0, i32 2
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %31 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %35 = call i32 @spi_set_drvdata(%struct.spi_device* %33, %struct.adcxx* %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %59, %21
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %39 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 3, %40
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ad_input, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @device_create_file(i32* %45, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %85

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = call i32 @hwmon_device_register(i32* %64)
  %66 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %67 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %69 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %62
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %78 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %6, align 4
  br label %85

81:                                               ; preds = %62
  %82 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %83 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %82, i32 0, i32 2
  %84 = call i32 @mutex_unlock(i32* %83)
  store i32 0, i32* %2, align 4
  br label %108

85:                                               ; preds = %73, %54
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %100, %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ad_input, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @device_remove_file(i32* %93, i32* %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  br label %88

103:                                              ; preds = %88
  %104 = load %struct.adcxx*, %struct.adcxx** %5, align 8
  %105 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %81, %18
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_3__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.adcxx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.adcxx*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hwmon_device_register(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
