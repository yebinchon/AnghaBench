; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_mst_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_mst_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.amdgpu_dm_connector = type { i32, i32, %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector* }
%struct.amdgpu_encoder = type { i32, i32, %struct.amdgpu_encoder*, %struct.amdgpu_encoder* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @dm_dp_mst_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_dp_mst_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.amdgpu_encoder*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.amdgpu_encoder* @to_amdgpu_dm_connector(%struct.drm_connector* %5)
  %7 = bitcast %struct.amdgpu_encoder* %6 to %struct.amdgpu_dm_connector*
  store %struct.amdgpu_dm_connector* %7, %struct.amdgpu_dm_connector** %3, align 8
  %8 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %8, i32 0, i32 3
  %10 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %9, align 8
  %11 = bitcast %struct.amdgpu_dm_connector* %10 to %struct.amdgpu_encoder*
  store %struct.amdgpu_encoder* %11, %struct.amdgpu_encoder** %4, align 8
  %12 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %12, i32 0, i32 2
  %14 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %13, align 8
  %15 = icmp ne %struct.amdgpu_dm_connector* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %17, i32 0, i32 2
  %19 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %18, align 8
  %20 = bitcast %struct.amdgpu_dm_connector* %19 to %struct.amdgpu_encoder*
  %21 = call i32 @kfree(%struct.amdgpu_encoder* %20)
  %22 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %22, i32 0, i32 2
  store %struct.amdgpu_dm_connector* null, %struct.amdgpu_dm_connector** %23, align 8
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %25, i32 0, i32 1
  %27 = call i32 @drm_encoder_cleanup(i32* %26)
  %28 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %4, align 8
  %29 = call i32 @kfree(%struct.amdgpu_encoder* %28)
  %30 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %31 = call i32 @drm_connector_cleanup(%struct.drm_connector* %30)
  %32 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @drm_dp_mst_put_port_malloc(i32 %34)
  %36 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %37 = bitcast %struct.amdgpu_dm_connector* %36 to %struct.amdgpu_encoder*
  %38 = call i32 @kfree(%struct.amdgpu_encoder* %37)
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.amdgpu_encoder*) #1

declare dso_local i32 @drm_encoder_cleanup(i32*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_mst_put_port_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
