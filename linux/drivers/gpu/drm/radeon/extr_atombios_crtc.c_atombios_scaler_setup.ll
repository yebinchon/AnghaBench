; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_scaler_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_scaler_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_crtc = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i64 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dac* }
%struct.radeon_encoder_atom_dac = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@EnableScaler = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_TV_NTSC = common dso_local global i8* null, align 8
@ATOM_TV_PAL = common dso_local global i8* null, align 8
@ATOM_TV_PALM = common dso_local global i8* null, align 8
@ATOM_TV_PAL60 = common dso_local global i8* null, align 8
@ATOM_TV_NTSCJ = common dso_local global i8* null, align 8
@ATOM_TV_SECAM = common dso_local global i8* null, align 8
@ATOM_TV_PALCN = common dso_local global i8* null, align 8
@SCALER_ENABLE_MULTITAP_MODE = common dso_local global i8* null, align 8
@ATOM_TV_CV = common dso_local global i8* null, align 8
@ATOM_SCALER_EXPANSION = common dso_local global i8* null, align 8
@ATOM_SCALER_CENTER = common dso_local global i8* null, align 8
@ATOM_SCALER_DISABLE = common dso_local global i8* null, align 8
@CHIP_RV515 = common dso_local global i64 0, align 8
@CHIP_R580 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @atombios_scaler_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_scaler_setup(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_encoder_atom_dac*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %19)
  store %struct.radeon_crtc* %20, %struct.radeon_crtc** %5, align 8
  %21 = load i32, i32* @COMMAND, align 4
  %22 = load i32, i32* @EnableScaler, align 4
  %23 = call i32 @GetIndexIntoMasterTable(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %26)
  store %struct.radeon_encoder* %27, %struct.radeon_encoder** %8, align 8
  store i32 135, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %29 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %33 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %152

37:                                               ; preds = %31, %1
  %38 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %39 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %45, i32 0, i32 1
  %47 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %46, align 8
  store %struct.radeon_encoder_atom_dac* %47, %struct.radeon_encoder_atom_dac** %12, align 8
  %48 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %12, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %44, %37
  %52 = call i32 @memset(%struct.TYPE_5__* %6, i32 0, i32 24)
  %53 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %62 [
    i32 135, label %61
    i32 133, label %65
    i32 130, label %68
    i32 132, label %71
    i32 134, label %74
    i32 129, label %77
    i32 128, label %80
    i32 131, label %83
  ]

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %59, %61
  %63 = load i8*, i8** @ATOM_TV_NTSC, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  br label %86

65:                                               ; preds = %59
  %66 = load i8*, i8** @ATOM_TV_PAL, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  br label %86

68:                                               ; preds = %59
  %69 = load i8*, i8** @ATOM_TV_PALM, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %69, i8** %70, align 8
  br label %86

71:                                               ; preds = %59
  %72 = load i8*, i8** @ATOM_TV_PAL60, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  br label %86

74:                                               ; preds = %59
  %75 = load i8*, i8** @ATOM_TV_NTSCJ, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  br label %86

77:                                               ; preds = %59
  %78 = load i8*, i8** @ATOM_TV_PAL, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %78, i8** %79, align 8
  br label %86

80:                                               ; preds = %59
  %81 = load i8*, i8** @ATOM_TV_SECAM, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  br label %86

83:                                               ; preds = %59
  %84 = load i8*, i8** @ATOM_TV_PALCN, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %83, %80, %77, %74, %71, %68, %65, %62
  %87 = load i8*, i8** @SCALER_ENABLE_MULTITAP_MODE, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  br label %123

89:                                               ; preds = %51
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i8*, i8** @ATOM_TV_CV, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %93, i8** %94, align 8
  %95 = load i8*, i8** @SCALER_ENABLE_MULTITAP_MODE, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %95, i8** %96, align 8
  br label %122

97:                                               ; preds = %89
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %110 [
    i32 136, label %101
    i32 137, label %104
    i32 138, label %107
  ]

101:                                              ; preds = %97
  %102 = load i8*, i8** @ATOM_SCALER_EXPANSION, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  br label %121

104:                                              ; preds = %97
  %105 = load i8*, i8** @ATOM_SCALER_CENTER, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  br label %121

107:                                              ; preds = %97
  %108 = load i8*, i8** @ATOM_SCALER_EXPANSION, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %108, i8** %109, align 8
  br label %121

110:                                              ; preds = %97
  %111 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %112 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i8*, i8** @ATOM_SCALER_DISABLE, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  br label %120

117:                                              ; preds = %110
  %118 = load i8*, i8** @ATOM_SCALER_CENTER, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %118, i8** %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %107, %104, %101
  br label %122

122:                                              ; preds = %121, %92
  br label %123

123:                                              ; preds = %122, %86
  %124 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = bitcast %struct.TYPE_5__* %6 to i32*
  %130 = call i32 @atom_execute_table(i32 %127, i32 %128, i32* %129)
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133, %123
  %137 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CHIP_RV515, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CHIP_R580, align 8
  %147 = icmp sle i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %150 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %151 = call i32 @atom_rv515_force_tv_scaler(%struct.radeon_device* %149, %struct.radeon_crtc* %150)
  br label %152

152:                                              ; preds = %36, %148, %142, %136, %133
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @atom_rv515_force_tv_scaler(%struct.radeon_device*, %struct.radeon_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
