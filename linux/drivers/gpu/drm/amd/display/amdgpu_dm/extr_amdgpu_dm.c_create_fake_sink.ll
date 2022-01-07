; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_create_fake_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_create_fake_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_sink = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dc_sink_init_data = type { i32, %struct.TYPE_2__*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to create sink!\0A\00", align 1
@SIGNAL_TYPE_VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dc_sink* (%struct.amdgpu_dm_connector*)* @create_fake_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dc_sink* @create_fake_sink(%struct.amdgpu_dm_connector* %0) #0 {
  %2 = alloca %struct.dc_sink*, align 8
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.dc_sink_init_data, align 8
  %5 = alloca %struct.dc_sink*, align 8
  store %struct.amdgpu_dm_connector* %0, %struct.amdgpu_dm_connector** %3, align 8
  %6 = bitcast %struct.dc_sink_init_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  store %struct.dc_sink* null, %struct.dc_sink** %5, align 8
  %7 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %4, i32 0, i32 1
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %10, align 8
  %11 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = call %struct.dc_sink* @dc_sink_create(%struct.dc_sink_init_data* %4)
  store %struct.dc_sink* %17, %struct.dc_sink** %5, align 8
  %18 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %19 = icmp ne %struct.dc_sink* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.dc_sink* null, %struct.dc_sink** %2, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @SIGNAL_TYPE_VIRTUAL, align 4
  %24 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %25 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  store %struct.dc_sink* %26, %struct.dc_sink** %2, align 8
  br label %27

27:                                               ; preds = %22, %20
  %28 = load %struct.dc_sink*, %struct.dc_sink** %2, align 8
  ret %struct.dc_sink* %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dc_sink* @dc_sink_create(%struct.dc_sink_init_data*) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
