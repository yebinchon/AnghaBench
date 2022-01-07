; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_probe_oui.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_probe_oui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_connector = type { %struct.TYPE_2__*, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i32* }

@DP_DOWN_STREAM_PORT_COUNT = common dso_local global i64 0, align 8
@DP_OUI_SUPPORT = common dso_local global i32 0, align 4
@DP_SINK_OUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sink OUI: %02hx%02hx%02hx\0A\00", align 1
@DP_BRANCH_OUI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Branch OUI: %02hx%02hx%02hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_connector*)* @amdgpu_atombios_dp_probe_oui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_dp_probe_oui(%struct.amdgpu_connector* %0) #0 {
  %2 = alloca %struct.amdgpu_connector*, align 8
  %3 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %4 = alloca [3 x i32], align 4
  store %struct.amdgpu_connector* %0, %struct.amdgpu_connector** %2, align 8
  %5 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %5, i32 0, i32 1
  %7 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  store %struct.amdgpu_connector_atom_dig* %7, %struct.amdgpu_connector_atom_dig** %3, align 8
  %8 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @DP_DOWN_STREAM_PORT_COUNT, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DP_OUI_SUPPORT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @DP_SINK_OUI, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %25 = call i32 @drm_dp_dpcd_read(i32* %22, i32 %23, i32* %24, i32 3)
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %27, %18
  %36 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* @DP_BRANCH_OUI, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %42 = call i32 @drm_dp_dpcd_read(i32* %39, i32 %40, i32* %41, i32 3)
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %17, %44, %35
  ret void
}

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
