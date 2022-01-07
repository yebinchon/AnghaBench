; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cr0014114.c_cr0014114_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cr0014114.c_cr0014114_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.cr0014114 = type { i64, i32, i32, i32*, i64, %struct.spi_device*, i32, i8* }

@.str = private unnamed_addr constant [37 x i8] c"LEDs are not defined in device tree!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@leds = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cr0014114_recount_work = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CR_FW_DELAY_MSEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"first recount failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"second recount failed %d\0A\00", align 1
@CR_RECOUNT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cr0014114_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr0014114_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.cr0014114*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call i64 @device_get_child_node_count(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %115

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %22 = load i32, i32* @leds, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @struct_size(%struct.cr0014114* %21, i32 %22, i64 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(i32* %20, i64 %24, i32 %25)
  %27 = bitcast i8* %26 to %struct.cr0014114*
  store %struct.cr0014114* %27, %struct.cr0014114** %4, align 8
  %28 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %29 = icmp ne %struct.cr0014114* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %115

33:                                               ; preds = %18
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 2
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(i32* %35, i64 %37, i32 %38)
  %40 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %41 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %43 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %42, i32 0, i32 7
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %115

49:                                               ; preds = %33
  %50 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %51 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %50, i32 0, i32 6
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %54 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %53, i32 0, i32 2
  %55 = load i32, i32* @cr0014114_recount_work, align 4
  %56 = call i32 @INIT_DELAYED_WORK(i32* %54, i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %59 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %63 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %66 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %65, i32 0, i32 5
  store %struct.spi_device* %64, %struct.spi_device** %66, align 8
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i32, i32* @CR_FW_DELAY_MSEC, align 4
  %69 = call i64 @msecs_to_jiffies(i32 %68)
  %70 = sub nsw i64 %67, %69
  %71 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %72 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %74 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  %75 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %76 = call i32 @cr0014114_sync(%struct.cr0014114* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %49
  %80 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %81 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %115

86:                                               ; preds = %49
  %87 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %88 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %90 = call i32 @cr0014114_sync(%struct.cr0014114* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %95 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %115

100:                                              ; preds = %86
  %101 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %102 = call i32 @cr0014114_probe_dt(%struct.cr0014114* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %115

107:                                              ; preds = %100
  %108 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %109 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %108, i32 0, i32 2
  %110 = load i32, i32* @CR_RECOUNT_DELAY, align 4
  %111 = call i32 @schedule_delayed_work(i32* %109, i32 %110)
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = load %struct.cr0014114*, %struct.cr0014114** %4, align 8
  %114 = call i32 @spi_set_drvdata(%struct.spi_device* %112, %struct.cr0014114* %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %105, %93, %79, %46, %30, %12
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @device_get_child_node_count(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i64 @struct_size(%struct.cr0014114*, i32, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cr0014114_sync(%struct.cr0014114*) #1

declare dso_local i32 @cr0014114_probe_dt(%struct.cr0014114*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.cr0014114*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
