; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.sdi_device = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.dispc_clock_info }
%struct.dispc_clock_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @sdi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.sdi_device*, align 8
  %4 = alloca %struct.dispc_clock_info, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %8 = call %struct.sdi_device* @dssdev_to_sdi(%struct.omap_dss_device* %7)
  store %struct.sdi_device* %8, %struct.sdi_device** %3, align 8
  %9 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %10 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @regulator_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %18 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dispc_runtime_get(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %102

26:                                               ; preds = %16
  %27 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %28 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %29 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdi_calc_clock_div(%struct.sdi_device* %27, i32 %30, i64* %5, %struct.dispc_clock_info* %4)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %95

35:                                               ; preds = %26
  %36 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %37 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = bitcast %struct.dispc_clock_info* %38 to i8*
  %40 = bitcast %struct.dispc_clock_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %42 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @dss_set_fck_rate(%struct.TYPE_8__* %43, i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %94

49:                                               ; preds = %35
  %50 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %51 = call i32 @sdi_config_lcd_manager(%struct.sdi_device* %50)
  %52 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %53 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %58 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %62 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @dispc_mgr_set_clock_div(i32 %56, i32 %60, %struct.dispc_clock_info* %63)
  %65 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %66 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %69 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dss_sdi_init(%struct.TYPE_8__* %67, i32 %70)
  %72 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %73 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @dss_sdi_enable(%struct.TYPE_8__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %49
  br label %93

79:                                               ; preds = %49
  %80 = call i32 @mdelay(i32 2)
  %81 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %82 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %81, i32 0, i32 2
  %83 = call i32 @dss_mgr_enable(%struct.TYPE_9__* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %88

87:                                               ; preds = %79
  br label %107

88:                                               ; preds = %86
  %89 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %90 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = call i32 @dss_sdi_disable(%struct.TYPE_8__* %91)
  br label %93

93:                                               ; preds = %88, %78
  br label %94

94:                                               ; preds = %93, %48
  br label %95

95:                                               ; preds = %94, %34
  %96 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %97 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dispc_runtime_put(i32 %100)
  br label %102

102:                                              ; preds = %95, %25
  %103 = load %struct.sdi_device*, %struct.sdi_device** %3, align 8
  %104 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @regulator_disable(i32 %105)
  br label %107

107:                                              ; preds = %102, %87, %15
  ret void
}

declare dso_local %struct.sdi_device* @dssdev_to_sdi(%struct.omap_dss_device*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dispc_runtime_get(i32) #1

declare dso_local i32 @sdi_calc_clock_div(%struct.sdi_device*, i32, i64*, %struct.dispc_clock_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dss_set_fck_rate(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @sdi_config_lcd_manager(%struct.sdi_device*) #1

declare dso_local i32 @dispc_mgr_set_clock_div(i32, i32, %struct.dispc_clock_info*) #1

declare dso_local i32 @dss_sdi_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dss_sdi_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dss_mgr_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @dss_sdi_disable(%struct.TYPE_8__*) #1

declare dso_local i32 @dispc_runtime_put(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
