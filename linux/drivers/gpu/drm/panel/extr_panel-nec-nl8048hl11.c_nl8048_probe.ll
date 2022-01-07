; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-nec-nl8048hl11.c_nl8048_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-nec-nl8048hl11.c_nl8048_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.nl8048_panel = type { %struct.TYPE_3__, %struct.spi_device*, i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to parse reset gpio\0A\00", align 1
@SPI_MODE_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to setup SPI: %d\0A\00", align 1
@nl8048_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @nl8048_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl8048_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.nl8048_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nl8048_panel* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.nl8048_panel* %9, %struct.nl8048_panel** %4, align 8
  %10 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %11 = icmp ne %struct.nl8048_panel* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.nl8048_panel* %17)
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %21 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %20, i32 0, i32 1
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %25 = call i32 @devm_gpiod_get(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %27 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %29 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %15
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %38 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %81

41:                                               ; preds = %15
  %42 = load i32, i32* @SPI_MODE_0, align 4
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  store i32 32, i32* %46, align 4
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = call i32 @spi_setup(%struct.spi_device* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 1
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %81

57:                                               ; preds = %41
  %58 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %59 = call i32 @nl8048_init(%struct.nl8048_panel* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %81

64:                                               ; preds = %57
  %65 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %66 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %65, i32 0, i32 0
  %67 = call i32 @drm_panel_init(%struct.TYPE_3__* %66)
  %68 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %69 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %68, i32 0, i32 1
  %70 = load %struct.spi_device*, %struct.spi_device** %69, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 1
  %72 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %73 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32* %71, i32** %74, align 8
  %75 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %76 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32* @nl8048_funcs, i32** %77, align 8
  %78 = load %struct.nl8048_panel*, %struct.nl8048_panel** %4, align 8
  %79 = getelementptr inbounds %struct.nl8048_panel, %struct.nl8048_panel* %78, i32 0, i32 0
  %80 = call i32 @drm_panel_add(%struct.TYPE_3__* %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %64, %62, %51, %33, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.nl8048_panel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.nl8048_panel*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @nl8048_init(%struct.nl8048_panel*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
