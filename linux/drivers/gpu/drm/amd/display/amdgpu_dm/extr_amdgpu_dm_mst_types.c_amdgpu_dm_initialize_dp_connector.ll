; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_amdgpu_dm_initialize_dp_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_amdgpu_dm_initialize_dp_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_display_manager = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.amdgpu_dm_connector = type { i32, %struct.TYPE_12__, %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dmdc\00", align 1
@dm_dp_aux_transfer = common dso_local global i32 0, align 4
@dm_mst_cbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_dm_initialize_dp_connector(%struct.amdgpu_display_manager* %0, %struct.amdgpu_dm_connector* %1) #0 {
  %3 = alloca %struct.amdgpu_display_manager*, align 8
  %4 = alloca %struct.amdgpu_dm_connector*, align 8
  store %struct.amdgpu_display_manager* %0, %struct.amdgpu_display_manager** %3, align 8
  store %struct.amdgpu_dm_connector* %1, %struct.amdgpu_dm_connector** %4, align 8
  %5 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %6 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @dm_dp_aux_transfer, align 4
  %18 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 8
  %22 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %22, i32 0, i32 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = call i32 @drm_dp_aux_register(%struct.TYPE_14__* %32)
  %34 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @drm_dp_cec_register_connector(%struct.TYPE_14__* %36, i32 %40, i32 %45)
  %47 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32* @dm_mst_cbs, i32** %49, align 8
  %50 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %50, i32 0, i32 2
  %52 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @drm_dp_mst_topology_mgr_init(%struct.TYPE_13__* %51, i32 %56, %struct.TYPE_14__* %59, i32 16, i32 4, i32 %62)
  ret void
}

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_14__*) #1

declare dso_local i32 @drm_dp_cec_register_connector(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_init(%struct.TYPE_13__*, i32, %struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
