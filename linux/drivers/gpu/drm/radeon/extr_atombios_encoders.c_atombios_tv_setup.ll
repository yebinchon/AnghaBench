; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_tv_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_tv_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, %struct.radeon_encoder_atom_dac* }
%struct.radeon_encoder_atom_dac = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8* }

@COMMAND = common dso_local global i32 0, align 4
@TVEncoderControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_TV_CV = common dso_local global i8* null, align 8
@ATOM_TV_NTSC = common dso_local global i8* null, align 8
@ATOM_TV_PAL = common dso_local global i8* null, align 8
@ATOM_TV_PALM = common dso_local global i8* null, align 8
@ATOM_TV_PAL60 = common dso_local global i8* null, align 8
@ATOM_TV_NTSCJ = common dso_local global i8* null, align 8
@ATOM_TV_SECAM = common dso_local global i8* null, align 8
@ATOM_TV_PALCN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @atombios_tv_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_tv_setup(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
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
  %20 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %19, i32 0, i32 2
  %21 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %20, align 8
  store %struct.radeon_encoder_atom_dac* %21, %struct.radeon_encoder_atom_dac** %10, align 8
  %22 = call i32 @memset(%struct.TYPE_7__* %8, i32 0, i32 16)
  %23 = load i32, i32* @COMMAND, align 4
  %24 = load i32, i32* @TVEncoderControl, align 4
  %25 = call i32 @GetIndexIntoMasterTable(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i8*, i8** @ATOM_TV_CV, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  br label %80

39:                                               ; preds = %2
  %40 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %41 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %75 [
    i32 135, label %43
    i32 133, label %47
    i32 130, label %51
    i32 132, label %55
    i32 134, label %59
    i32 129, label %63
    i32 128, label %67
    i32 131, label %71
  ]

43:                                               ; preds = %39
  %44 = load i8*, i8** @ATOM_TV_NTSC, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %79

47:                                               ; preds = %39
  %48 = load i8*, i8** @ATOM_TV_PAL, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %79

51:                                               ; preds = %39
  %52 = load i8*, i8** @ATOM_TV_PALM, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %79

55:                                               ; preds = %39
  %56 = load i8*, i8** @ATOM_TV_PAL60, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %79

59:                                               ; preds = %39
  %60 = load i8*, i8** @ATOM_TV_NTSCJ, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  br label %79

63:                                               ; preds = %39
  %64 = load i8*, i8** @ATOM_TV_PAL, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %79

67:                                               ; preds = %39
  %68 = load i8*, i8** @ATOM_TV_SECAM, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %79

71:                                               ; preds = %39
  %72 = load i8*, i8** @ATOM_TV_PALCN, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %79

75:                                               ; preds = %39
  %76 = load i8*, i8** @ATOM_TV_NTSC, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %71, %67, %63, %59, %55, %51, %47, %43
  br label %80

80:                                               ; preds = %79, %35
  %81 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %82 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 10
  %85 = call i32 @cpu_to_le16(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = bitcast %struct.TYPE_7__* %8 to i32*
  %94 = call i32 @atom_execute_table(i32 %91, i32 %92, i32* %93)
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
