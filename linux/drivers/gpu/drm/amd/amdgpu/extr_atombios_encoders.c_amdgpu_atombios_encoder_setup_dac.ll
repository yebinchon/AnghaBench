; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_encoder = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@DAC1EncoderControl = common dso_local global i32 0, align 4
@DAC2EncoderControl = common dso_local global i32 0, align 4
@ATOM_DAC1_PS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @amdgpu_atombios_encoder_setup_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_encoder_setup_dac(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %16)
  store %struct.amdgpu_encoder* %17, %struct.amdgpu_encoder** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 12)
  %19 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %30 [
    i32 131, label %22
    i32 129, label %22
    i32 130, label %26
    i32 128, label %26
  ]

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @COMMAND, align 4
  %24 = load i32, i32* @DAC1EncoderControl, align 4
  %25 = call i32 @GetIndexIntoMasterTable(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %30

26:                                               ; preds = %2, %2
  %27 = load i32, i32* @COMMAND, align 4
  %28 = load i32, i32* @DAC2EncoderControl, align 4
  %29 = call i32 @GetIndexIntoMasterTable(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %2, %26, %22
  %31 = load i32, i32* %4, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @ATOM_DAC1_PS2, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %36 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 10
  %39 = call i32 @cpu_to_le16(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = bitcast %struct.TYPE_5__* %8 to i32*
  %47 = call i32 @amdgpu_atom_execute_table(i32 %44, i32 %45, i32* %46)
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
