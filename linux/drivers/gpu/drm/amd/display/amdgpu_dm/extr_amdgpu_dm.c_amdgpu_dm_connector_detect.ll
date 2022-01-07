; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@DRM_FORCE_UNSPECIFIED = common dso_local global i64 0, align 8
@DRM_FORCE_ON = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @amdgpu_dm_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_dm_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %7)
  store %struct.amdgpu_dm_connector* %8, %struct.amdgpu_dm_connector** %6, align 8
  %9 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %10 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %34

26:                                               ; preds = %15, %2
  %27 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DRM_FORCE_ON, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @connector_status_connected, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @connector_status_disconnected, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  ret i32 %42
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
