; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_create_eml_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_create_eml_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_dm_connector = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.edid* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.edid = type { i32 }
%struct.dc_sink_init_data = type { i32, %struct.TYPE_6__* }

@SIGNAL_TYPE_VIRTUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"No EDID firmware found on connector: %s ,forcing to OFF!\0A\00", align 1
@DRM_FORCE_OFF = common dso_local global i64 0, align 8
@EDID_LENGTH = common dso_local global i32 0, align 4
@DRM_FORCE_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_dm_connector*)* @create_eml_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_eml_sink(%struct.amdgpu_dm_connector* %0) #0 {
  %2 = alloca %struct.amdgpu_dm_connector*, align 8
  %3 = alloca %struct.dc_sink_init_data, align 8
  %4 = alloca %struct.edid*, align 8
  store %struct.amdgpu_dm_connector* %0, %struct.amdgpu_dm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %3, i32 0, i32 0
  %6 = load i32, i32* @SIGNAL_TYPE_VIRTUAL, align 4
  store i32 %6, i32* %5, align 8
  %7 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %3, i32 0, i32 1
  %8 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @DRM_FORCE_OFF, align 8
  %23 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.edid*
  store %struct.edid* %36, %struct.edid** %4, align 8
  %37 = load %struct.edid*, %struct.edid** %4, align 8
  %38 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %38, i32 0, i32 4
  store %struct.edid* %37, %struct.edid** %39, align 8
  %40 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.edid*, %struct.edid** %4, align 8
  %44 = bitcast %struct.edid* %43 to i32*
  %45 = load %struct.edid*, %struct.edid** %4, align 8
  %46 = getelementptr inbounds %struct.edid, %struct.edid* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @EDID_LENGTH, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i64 @dc_link_add_remote_sink(%struct.TYPE_6__* %42, i32* %44, i32 %50, %struct.dc_sink_init_data* %3)
  %52 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %55 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DRM_FORCE_ON, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %29
  %61 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  br label %77

73:                                               ; preds = %60
  %74 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %75 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = phi i64 [ %72, %67 ], [ %76, %73 ]
  %79 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %80 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @dc_sink_retain(i64 %83)
  br label %85

85:                                               ; preds = %16, %77, %29
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @dc_link_add_remote_sink(%struct.TYPE_6__*, i32*, i32, %struct.dc_sink_init_data*) #1

declare dso_local i32 @dc_sink_retain(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
