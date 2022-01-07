; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lb035q02.c_lb035q02_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lb035q02.c_lb035q02_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.lb035q02_device = type { %struct.TYPE_3__, %struct.spi_device*, i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to parse enable gpio\0A\00", align 1
@lb035q02_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lb035q02_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb035q02_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.lb035q02_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lb035q02_device* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.lb035q02_device* %9, %struct.lb035q02_device** %4, align 8
  %10 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %11 = icmp ne %struct.lb035q02_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.lb035q02_device* %17)
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %21 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %20, i32 0, i32 1
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %25 = call i32 @devm_gpiod_get(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %27 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %29 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %15
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %38 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %65

41:                                               ; preds = %15
  %42 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %43 = call i32 @lb035q02_init(%struct.lb035q02_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %65

48:                                               ; preds = %41
  %49 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %50 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %49, i32 0, i32 0
  %51 = call i32 @drm_panel_init(%struct.TYPE_3__* %50)
  %52 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %53 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %52, i32 0, i32 1
  %54 = load %struct.spi_device*, %struct.spi_device** %53, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %57 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32* %55, i32** %58, align 8
  %59 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %60 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32* @lb035q02_funcs, i32** %61, align 8
  %62 = load %struct.lb035q02_device*, %struct.lb035q02_device** %4, align 8
  %63 = getelementptr inbounds %struct.lb035q02_device, %struct.lb035q02_device* %62, i32 0, i32 0
  %64 = call i32 @drm_panel_add(%struct.TYPE_3__* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %48, %46, %33, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.lb035q02_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.lb035q02_device*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @lb035q02_init(%struct.lb035q02_device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
