; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_get_dpcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_get_dpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_connector = type { %struct.TYPE_2__*, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i64* }

@DP_DPCD_SIZE = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DPCD: %*ph\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_connector*, align 8
  %4 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_connector* %0, %struct.amdgpu_connector** %3, align 8
  %9 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %9, i32 0, i32 1
  %11 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  store %struct.amdgpu_connector_atom_dig* %11, %struct.amdgpu_connector_atom_dig** %4, align 8
  %12 = load i32, i32* @DP_DPCD_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* @DP_DPCD_REV, align 4
  %21 = load i32, i32* @DP_DPCD_SIZE, align 4
  %22 = call i32 @drm_dp_dpcd_read(i32* %19, i32 %20, i32* %15, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DP_DPCD_SIZE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* @DP_DPCD_SIZE, align 4
  %31 = call i32 @memcpy(i64* %29, i32* %15, i32 %30)
  %32 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 8, i64* %34)
  %36 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %3, align 8
  %37 = call i32 @amdgpu_atombios_dp_probe_oui(%struct.amdgpu_connector* %36)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

38:                                               ; preds = %1
  %39 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %4, align 8
  %40 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %26
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #2

declare dso_local i32 @memcpy(i64*, i32*, i32) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64*) #2

declare dso_local i32 @amdgpu_atombios_dp_probe_oui(%struct.amdgpu_connector*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
