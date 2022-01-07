; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_mst_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_mst_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.edid*, i32, %struct.dc_sink*, i32, i32, %struct.TYPE_2__* }
%struct.edid = type { i32 }
%struct.dc_sink = type { i64, %struct.amdgpu_dm_connector* }
%struct.TYPE_2__ = type { i32 }
%struct.dc_sink_init_data = type { i32, i32 }

@SIGNAL_TYPE_VIRTUAL = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @dm_dp_mst_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_dp_mst_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.amdgpu_dm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.edid*, align 8
  %7 = alloca %struct.dc_sink*, align 8
  %8 = alloca %struct.dc_sink_init_data, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %9)
  store %struct.amdgpu_dm_connector* %10, %struct.amdgpu_dm_connector** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %12 = icmp ne %struct.amdgpu_dm_connector* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call i32 @drm_add_edid_modes(%struct.drm_connector* %14, %struct.edid* null)
  store i32 %15, i32* %2, align 4
  br label %120

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %17, i32 0, i32 0
  %19 = load %struct.edid*, %struct.edid** %18, align 8
  %20 = icmp ne %struct.edid* %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %16
  %22 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %23 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.edid* @drm_dp_mst_get_edid(%struct.drm_connector* %22, i32* %26, i32 %29)
  store %struct.edid* %30, %struct.edid** %6, align 8
  %31 = load %struct.edid*, %struct.edid** %6, align 8
  %32 = icmp ne %struct.edid* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %34, i32 0, i32 1
  %36 = call i32 @drm_connector_update_edid_property(i32* %35, %struct.edid* null)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %120

38:                                               ; preds = %21
  %39 = load %struct.edid*, %struct.edid** %6, align 8
  %40 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %40, i32 0, i32 0
  store %struct.edid* %39, %struct.edid** %41, align 8
  br label %42

42:                                               ; preds = %38, %16
  %43 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %43, i32 0, i32 2
  %45 = load %struct.dc_sink*, %struct.dc_sink** %44, align 8
  %46 = icmp ne %struct.dc_sink* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %48, i32 0, i32 2
  %50 = load %struct.dc_sink*, %struct.dc_sink** %49, align 8
  %51 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SIGNAL_TYPE_VIRTUAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %56, i32 0, i32 2
  %58 = load %struct.dc_sink*, %struct.dc_sink** %57, align 8
  %59 = call i32 @dc_sink_release(%struct.dc_sink* %58)
  %60 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %60, i32 0, i32 2
  store %struct.dc_sink* null, %struct.dc_sink** %61, align 8
  br label %62

62:                                               ; preds = %55, %47, %42
  %63 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %63, i32 0, i32 2
  %65 = load %struct.dc_sink*, %struct.dc_sink** %64, align 8
  %66 = icmp ne %struct.dc_sink* %65, null
  br i1 %66, label %107, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %8, i32 0, i32 0
  %69 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 4
  store i32 %69, i32* %68, align 4
  %70 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %8, i32 0, i32 1
  %71 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %70, align 4
  %74 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %75 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %77, i32 0, i32 0
  %79 = load %struct.edid*, %struct.edid** %78, align 8
  %80 = bitcast %struct.edid* %79 to i32*
  %81 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %81, i32 0, i32 0
  %83 = load %struct.edid*, %struct.edid** %82, align 8
  %84 = getelementptr inbounds %struct.edid, %struct.edid* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* @EDID_LENGTH, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call %struct.dc_sink* @dc_link_add_remote_sink(i32 %76, i32* %80, i32 %88, %struct.dc_sink_init_data* %8)
  store %struct.dc_sink* %89, %struct.dc_sink** %7, align 8
  %90 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %91 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %92 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %91, i32 0, i32 1
  store %struct.amdgpu_dm_connector* %90, %struct.amdgpu_dm_connector** %92, align 8
  %93 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %94 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %95 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %94, i32 0, i32 2
  store %struct.dc_sink* %93, %struct.dc_sink** %95, align 8
  %96 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %97 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %96, i32 0, i32 2
  %98 = load %struct.dc_sink*, %struct.dc_sink** %97, align 8
  %99 = icmp ne %struct.dc_sink* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %67
  %101 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %102 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %103 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %102, i32 0, i32 0
  %104 = load %struct.edid*, %struct.edid** %103, align 8
  %105 = call i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector* %101, %struct.edid* %104)
  br label %106

106:                                              ; preds = %100, %67
  br label %107

107:                                              ; preds = %106, %62
  %108 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %109 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %108, i32 0, i32 1
  %110 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %111 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %110, i32 0, i32 0
  %112 = load %struct.edid*, %struct.edid** %111, align 8
  %113 = call i32 @drm_connector_update_edid_property(i32* %109, %struct.edid* %112)
  %114 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %115 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %116 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %115, i32 0, i32 0
  %117 = load %struct.edid*, %struct.edid** %116, align 8
  %118 = call i32 @drm_add_edid_modes(%struct.drm_connector* %114, %struct.edid* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %107, %33, %13
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local %struct.edid* @drm_dp_mst_get_edid(%struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_update_edid_property(i32*, %struct.edid*) #1

declare dso_local i32 @dc_sink_release(%struct.dc_sink*) #1

declare dso_local %struct.dc_sink* @dc_link_add_remote_sink(i32, i32*, i32, %struct.dc_sink_init_data*) #1

declare dso_local i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
