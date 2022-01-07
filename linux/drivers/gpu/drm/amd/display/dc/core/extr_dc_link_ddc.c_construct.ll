; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { %struct.TYPE_10__, %struct.TYPE_9__, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.dc_bios*, %struct.gpio_service* }
%struct.dc_bios = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.dc_bios*, i32, %struct.graphics_object_i2c_info*)* }
%struct.graphics_object_i2c_info = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.gpio_service = type { i32 }
%struct.ddc_service_init_data = type { i32, %struct.TYPE_6__*, i32 }
%struct.gpio_ddc_hw_info = type { i32, i32 }

@BP_RESULT_OK = common dso_local global i64 0, align 8
@CONNECTOR_ID_EDP = common dso_local global i32 0, align 4
@CONNECTOR_ID_LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddc_service*, %struct.ddc_service_init_data*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct(%struct.ddc_service* %0, %struct.ddc_service_init_data* %1) #0 {
  %3 = alloca %struct.ddc_service*, align 8
  %4 = alloca %struct.ddc_service_init_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_service*, align 8
  %7 = alloca %struct.graphics_object_i2c_info, align 4
  %8 = alloca %struct.gpio_ddc_hw_info, align 4
  %9 = alloca %struct.dc_bios*, align 8
  store %struct.ddc_service* %0, %struct.ddc_service** %3, align 8
  store %struct.ddc_service_init_data* %1, %struct.ddc_service_init_data** %4, align 8
  %10 = load %struct.ddc_service_init_data*, %struct.ddc_service_init_data** %4, align 8
  %11 = getelementptr inbounds %struct.ddc_service_init_data, %struct.ddc_service_init_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dal_graphics_object_id_get_connector_id(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ddc_service_init_data*, %struct.ddc_service_init_data** %4, align 8
  %15 = getelementptr inbounds %struct.ddc_service_init_data, %struct.ddc_service_init_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.gpio_service*, %struct.gpio_service** %17, align 8
  store %struct.gpio_service* %18, %struct.gpio_service** %6, align 8
  %19 = load %struct.ddc_service_init_data*, %struct.ddc_service_init_data** %4, align 8
  %20 = getelementptr inbounds %struct.ddc_service_init_data, %struct.ddc_service_init_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.dc_bios*, %struct.dc_bios** %22, align 8
  store %struct.dc_bios* %23, %struct.dc_bios** %9, align 8
  %24 = load %struct.ddc_service_init_data*, %struct.ddc_service_init_data** %4, align 8
  %25 = getelementptr inbounds %struct.ddc_service_init_data, %struct.ddc_service_init_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %28 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ddc_service_init_data*, %struct.ddc_service_init_data** %4, align 8
  %30 = getelementptr inbounds %struct.ddc_service_init_data, %struct.ddc_service_init_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %33 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %32, i32 0, i32 3
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load i64, i64* @BP_RESULT_OK, align 8
  %35 = load %struct.dc_bios*, %struct.dc_bios** %9, align 8
  %36 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64 (%struct.dc_bios*, i32, %struct.graphics_object_i2c_info*)*, i64 (%struct.dc_bios*, i32, %struct.graphics_object_i2c_info*)** %38, align 8
  %40 = load %struct.dc_bios*, %struct.dc_bios** %9, align 8
  %41 = load %struct.ddc_service_init_data*, %struct.ddc_service_init_data** %4, align 8
  %42 = getelementptr inbounds %struct.ddc_service_init_data, %struct.ddc_service_init_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 %39(%struct.dc_bios* %40, i32 %43, %struct.graphics_object_i2c_info* %7)
  %45 = icmp ne i64 %34, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %48 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %67

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.graphics_object_i2c_info, %struct.graphics_object_i2c_info* %7, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.gpio_ddc_hw_info, %struct.gpio_ddc_hw_info* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.graphics_object_i2c_info, %struct.graphics_object_i2c_info* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.gpio_ddc_hw_info, %struct.gpio_ddc_hw_info* %8, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %57 = getelementptr inbounds %struct.graphics_object_i2c_info, %struct.graphics_object_i2c_info* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.graphics_object_i2c_info, %struct.graphics_object_i2c_info* %7, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = call i32* @dal_gpio_create_ddc(%struct.gpio_service* %56, i32 %59, i32 %63, %struct.gpio_ddc_hw_info* %8)
  %65 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %66 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %49, %46
  %68 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %69 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %72 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %75 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @CONNECTOR_ID_EDP, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @CONNECTOR_ID_LVDS, align 4
  %83 = icmp eq i32 %81, %82
  br label %84

84:                                               ; preds = %80, %67
  %85 = phi i1 [ true, %67 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %88 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %91 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  ret void
}

declare dso_local i32 @dal_graphics_object_id_get_connector_id(i32) #1

declare dso_local i32* @dal_gpio_create_ddc(%struct.gpio_service*, i32, i32, %struct.gpio_ddc_hw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
