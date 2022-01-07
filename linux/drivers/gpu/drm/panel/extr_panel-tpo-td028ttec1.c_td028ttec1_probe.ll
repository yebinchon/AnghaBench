; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td028ttec1.c_td028ttec1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td028ttec1.c_td028ttec1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.td028ttec1_panel = type { %struct.TYPE_3__, %struct.spi_device*, i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to setup SPI: %d\0A\00", align 1
@td028ttec1_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @td028ttec1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td028ttec1_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.td028ttec1_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.td028ttec1_panel* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.td028ttec1_panel* %9, %struct.td028ttec1_panel** %4, align 8
  %10 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %11 = icmp ne %struct.td028ttec1_panel* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.td028ttec1_panel* %17)
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %21 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %20, i32 0, i32 1
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = call i32 @devm_of_find_backlight(i32* %23)
  %25 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %26 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %28 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %34 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %15
  %38 = load i32, i32* @SPI_MODE_3, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  store i32 9, i32* %42, align 4
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = call i32 @spi_setup(%struct.spi_device* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 1
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %70

53:                                               ; preds = %37
  %54 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %55 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %54, i32 0, i32 0
  %56 = call i32 @drm_panel_init(%struct.TYPE_3__* %55)
  %57 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %58 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %57, i32 0, i32 1
  %59 = load %struct.spi_device*, %struct.spi_device** %58, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 1
  %61 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %62 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  %64 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %65 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32* @td028ttec1_funcs, i32** %66, align 8
  %67 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %4, align 8
  %68 = getelementptr inbounds %struct.td028ttec1_panel, %struct.td028ttec1_panel* %67, i32 0, i32 0
  %69 = call i32 @drm_panel_add(%struct.TYPE_3__* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %53, %47, %32, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.td028ttec1_panel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.td028ttec1_panel*) #1

declare dso_local i32 @devm_of_find_backlight(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
