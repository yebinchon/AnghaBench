; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dac_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, %struct.radeon_encoder_atom_dac* }
%struct.radeon_encoder_atom_dac = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@DAC1EncoderControl = common dso_local global i32 0, align 4
@DAC2EncoderControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DAC1_PS2 = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DAC1_CV = common dso_local global i32 0, align 4
@ATOM_DAC1_PAL = common dso_local global i32 0, align 4
@ATOM_DAC1_NTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @atombios_dac_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_dac_setup(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder_atom_dac*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %6, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %19, i32 0, i32 3
  %21 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %20, align 8
  store %struct.radeon_encoder_atom_dac* %21, %struct.radeon_encoder_atom_dac** %10, align 8
  %22 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 12)
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %34 [
    i32 139, label %26
    i32 137, label %26
    i32 138, label %30
    i32 136, label %30
  ]

26:                                               ; preds = %2, %2
  %27 = load i32, i32* @COMMAND, align 4
  %28 = load i32, i32* @DAC1EncoderControl, align 4
  %29 = call i32 @GetIndexIntoMasterTable(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %34

30:                                               ; preds = %2, %2
  %31 = load i32, i32* @COMMAND, align 4
  %32 = load i32, i32* @DAC2EncoderControl, align 4
  %33 = call i32 @GetIndexIntoMasterTable(i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %2, %30, %26
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @ATOM_DAC1_PS2, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  br label %69

46:                                               ; preds = %34
  %47 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %48 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @ATOM_DAC1_CV, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  br label %68

56:                                               ; preds = %46
  %57 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %58 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %64 [
    i32 133, label %60
    i32 130, label %60
    i32 129, label %60
    i32 128, label %60
    i32 131, label %60
    i32 135, label %63
    i32 134, label %63
    i32 132, label %63
  ]

60:                                               ; preds = %56, %56, %56, %56, %56
  %61 = load i32, i32* @ATOM_DAC1_PAL, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  br label %67

63:                                               ; preds = %56, %56, %56
  br label %64

64:                                               ; preds = %56, %63
  %65 = load i32, i32* @ATOM_DAC1_NTSC, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 10
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = bitcast %struct.TYPE_5__* %8 to i32*
  %82 = call i32 @atom_execute_table(i32 %79, i32 %80, i32* %81)
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
