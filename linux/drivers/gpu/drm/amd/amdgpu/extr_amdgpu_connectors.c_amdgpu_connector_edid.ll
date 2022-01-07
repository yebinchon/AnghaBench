; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { %struct.drm_property_blob* }
%struct.drm_property_blob = type { i32, i32 }
%struct.amdgpu_connector = type { %struct.edid* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edid* @amdgpu_connector_edid(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.edid*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.amdgpu_connector*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  %6 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %7)
  store %struct.amdgpu_connector* %8, %struct.amdgpu_connector** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_property_blob*, %struct.drm_property_blob** %10, align 8
  store %struct.drm_property_blob* %11, %struct.drm_property_blob** %5, align 8
  %12 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %12, i32 0, i32 0
  %14 = load %struct.edid*, %struct.edid** %13, align 8
  %15 = icmp ne %struct.edid* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %17, i32 0, i32 0
  %19 = load %struct.edid*, %struct.edid** %18, align 8
  store %struct.edid* %19, %struct.edid** %2, align 8
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %22 = icmp ne %struct.drm_property_blob* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %25 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %28 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.edid* @kmemdup(i32 %26, i32 %29, i32 %30)
  store %struct.edid* %31, %struct.edid** %6, align 8
  %32 = load %struct.edid*, %struct.edid** %6, align 8
  %33 = icmp ne %struct.edid* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.edid*, %struct.edid** %6, align 8
  %36 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %36, i32 0, i32 0
  store %struct.edid* %35, %struct.edid** %37, align 8
  br label %38

38:                                               ; preds = %34, %23
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %41, i32 0, i32 0
  %43 = load %struct.edid*, %struct.edid** %42, align 8
  store %struct.edid* %43, %struct.edid** %2, align 8
  br label %44

44:                                               ; preds = %40, %16
  %45 = load %struct.edid*, %struct.edid** %2, align 8
  ret %struct.edid* %45
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local %struct.edid* @kmemdup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
