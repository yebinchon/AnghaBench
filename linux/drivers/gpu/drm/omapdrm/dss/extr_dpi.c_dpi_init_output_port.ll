; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_output_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_output_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { i32, %struct.TYPE_2__*, %struct.omap_dss_device }
%struct.TYPE_2__ = type { i32 }
%struct.omap_dss_device = type { i8*, i32, i32*, i32, i32, i32, i32, i32* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dpi.2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dpi.1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dpi.0\00", align 1
@OMAP_DSS_OUTPUT_DPI = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DPI = common dso_local global i32 0, align 4
@dpi_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*, %struct.device_node*)* @dpi_init_output_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_init_output_port(%struct.dpi_data* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpi_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpi_data* %0, %struct.dpi_data** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %10 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %9, i32 0, i32 2
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7)
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %21 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %30 [
    i32 2, label %23
    i32 1, label %26
    i32 0, label %29
  ]

23:                                               ; preds = %18
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %25 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  br label %33

26:                                               ; preds = %18
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %28 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 8
  br label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %18, %29
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %32 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  br label %33

33:                                               ; preds = %30, %26, %23
  %34 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %35 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 7
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* @OMAP_DSS_OUTPUT_DPI, align 4
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %42 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @OMAP_DISPLAY_TYPE_DPI, align 4
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %45 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %47 = call i32 @dpi_get_channel(%struct.dpi_data* %46)
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %49 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %53 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %55 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %54, i32 0, i32 2
  store i32* @dpi_ops, i32** %55, align 8
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %58 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %60 = call i32 @omapdss_device_init_output(%struct.omap_dss_device* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %33
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %33
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %67 = call i32 @omapdss_device_register(%struct.omap_dss_device* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %63
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dpi_get_channel(%struct.dpi_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omapdss_device_init_output(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
