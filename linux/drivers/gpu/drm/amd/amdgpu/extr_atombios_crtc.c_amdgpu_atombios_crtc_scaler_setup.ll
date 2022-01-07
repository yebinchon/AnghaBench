; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_scaler_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_scaler_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_crtc = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@COMMAND = common dso_local global i32 0, align 4
@EnableScaler = common dso_local global i32 0, align 4
@ATOM_SCALER_EXPANSION = common dso_local global i8* null, align 8
@ATOM_SCALER_CENTER = common dso_local global i8* null, align 8
@ATOM_SCALER_DISABLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_crtc_scaler_setup(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_crtc*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %4, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %14)
  store %struct.amdgpu_crtc* %15, %struct.amdgpu_crtc** %5, align 8
  %16 = load i32, i32* @COMMAND, align 4
  %17 = load i32, i32* @EnableScaler, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = call i32 @memset(%struct.TYPE_5__* %6, i32 0, i32 16)
  %20 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %36 [
    i32 128, label %27
    i32 129, label %30
    i32 130, label %33
  ]

27:                                               ; preds = %1
  %28 = load i8*, i8** @ATOM_SCALER_EXPANSION, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  br label %39

30:                                               ; preds = %1
  %31 = load i8*, i8** @ATOM_SCALER_CENTER, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  br label %39

33:                                               ; preds = %1
  %34 = load i8*, i8** @ATOM_SCALER_EXPANSION, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  br label %39

36:                                               ; preds = %1
  %37 = load i8*, i8** @ATOM_SCALER_DISABLE, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %33, %30, %27
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = bitcast %struct.TYPE_5__* %6 to i32*
  %46 = call i32 @amdgpu_atom_execute_table(i32 %43, i32 %44, i32* %45)
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
