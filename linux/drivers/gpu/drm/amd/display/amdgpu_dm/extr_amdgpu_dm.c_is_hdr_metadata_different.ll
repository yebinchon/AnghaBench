; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_is_hdr_metadata_different.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_is_hdr_metadata_different.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { %struct.drm_property_blob* }
%struct.drm_property_blob = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector_state*, %struct.drm_connector_state*)* @is_hdr_metadata_different to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hdr_metadata_different(%struct.drm_connector_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca %struct.drm_property_blob*, align 8
  %7 = alloca %struct.drm_property_blob*, align 8
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %4, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %5, align 8
  %8 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %8, i32 0, i32 0
  %10 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  store %struct.drm_property_blob* %10, %struct.drm_property_blob** %6, align 8
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %12 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %11, i32 0, i32 0
  %13 = load %struct.drm_property_blob*, %struct.drm_property_blob** %12, align 8
  store %struct.drm_property_blob* %13, %struct.drm_property_blob** %7, align 8
  %14 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %15 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %16 = icmp ne %struct.drm_property_blob* %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %19 = icmp ne %struct.drm_property_blob* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %22 = icmp ne %struct.drm_property_blob* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %25 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %28 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %33 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %36 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %39 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcmp(i32 %34, i32 %37, i64 %40)
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %23, %20, %17
  store i32 1, i32* %3, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %31
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
