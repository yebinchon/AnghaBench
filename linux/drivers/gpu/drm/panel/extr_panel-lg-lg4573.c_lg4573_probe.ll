; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.lg4573 = type { %struct.TYPE_3__, %struct.spi_device* }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SPI setup failed: %d\0A\00", align 1
@lg4573_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lg4573_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4573_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.lg4573*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lg4573* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.lg4573* %9, %struct.lg4573** %4, align 8
  %10 = load %struct.lg4573*, %struct.lg4573** %4, align 8
  %11 = icmp ne %struct.lg4573* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.lg4573*, %struct.lg4573** %4, align 8
  %18 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %17, i32 0, i32 1
  store %struct.spi_device* %16, %struct.spi_device** %18, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.lg4573*, %struct.lg4573** %4, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.lg4573* %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  store i32 8, i32* %23, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = call i32 @spi_setup(%struct.spi_device* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %49

34:                                               ; preds = %15
  %35 = load %struct.lg4573*, %struct.lg4573** %4, align 8
  %36 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %35, i32 0, i32 0
  %37 = call i32 @drm_panel_init(%struct.TYPE_3__* %36)
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = load %struct.lg4573*, %struct.lg4573** %4, align 8
  %41 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32* %39, i32** %42, align 8
  %43 = load %struct.lg4573*, %struct.lg4573** %4, align 8
  %44 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32* @lg4573_drm_funcs, i32** %45, align 8
  %46 = load %struct.lg4573*, %struct.lg4573** %4, align 8
  %47 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %46, i32 0, i32 0
  %48 = call i32 @drm_panel_add(%struct.TYPE_3__* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %34, %28, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.lg4573* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.lg4573*) #1

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
