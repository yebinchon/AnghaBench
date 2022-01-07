; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_avivo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_avivo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.radeon_encoder = type { i32, i32, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.TYPE_5__ = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@TMDSAOutputControl = common dso_local global i32 0, align 4
@DVOOutputControl = common dso_local global i32 0, align 4
@LCD1OutputControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@LVTMAOutputControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@TV1OutputControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@CV1OutputControl = common dso_local global i32 0, align 4
@DAC1OutputControl = common dso_local global i32 0, align 4
@DAC2OutputControl = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@RADEON_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@ATOM_S3_DFP2I_ACTIVE = common dso_local global i32 0, align 4
@ATOM_LCD_BLON = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_LCD_BLOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_atom_encoder_dpms_avivo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %6, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 4)
  %21 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %108 [
    i32 128, label %24
    i32 131, label %24
    i32 135, label %28
    i32 136, label %28
    i32 132, label %28
    i32 130, label %32
    i32 129, label %36
    i32 138, label %52
    i32 134, label %52
    i32 137, label %80
    i32 133, label %80
  ]

24:                                               ; preds = %2, %2
  %25 = load i32, i32* @COMMAND, align 4
  %26 = load i32, i32* @TMDSAOutputControl, align 4
  %27 = call i32 @GetIndexIntoMasterTable(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %109

28:                                               ; preds = %2, %2, %2
  %29 = load i32, i32* @COMMAND, align 4
  %30 = load i32, i32* @DVOOutputControl, align 4
  %31 = call i32 @GetIndexIntoMasterTable(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %109

32:                                               ; preds = %2
  %33 = load i32, i32* @COMMAND, align 4
  %34 = load i32, i32* @LCD1OutputControl, align 4
  %35 = call i32 @GetIndexIntoMasterTable(i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %109

36:                                               ; preds = %2
  %37 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @COMMAND, align 4
  %45 = load i32, i32* @LCD1OutputControl, align 4
  %46 = call i32 @GetIndexIntoMasterTable(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @COMMAND, align 4
  %49 = load i32, i32* @LVTMAOutputControl, align 4
  %50 = call i32 @GetIndexIntoMasterTable(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %109

52:                                               ; preds = %2, %2
  %53 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %54 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @COMMAND, align 4
  %61 = load i32, i32* @TV1OutputControl, align 4
  %62 = call i32 @GetIndexIntoMasterTable(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %79

63:                                               ; preds = %52
  %64 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %65 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @COMMAND, align 4
  %72 = load i32, i32* @CV1OutputControl, align 4
  %73 = call i32 @GetIndexIntoMasterTable(i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %78

74:                                               ; preds = %63
  %75 = load i32, i32* @COMMAND, align 4
  %76 = load i32, i32* @DAC1OutputControl, align 4
  %77 = call i32 @GetIndexIntoMasterTable(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %59
  br label %109

80:                                               ; preds = %2, %2
  %81 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %82 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @COMMAND, align 4
  %89 = load i32, i32* @TV1OutputControl, align 4
  %90 = call i32 @GetIndexIntoMasterTable(i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %107

91:                                               ; preds = %80
  %92 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %93 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @COMMAND, align 4
  %100 = load i32, i32* @CV1OutputControl, align 4
  %101 = call i32 @GetIndexIntoMasterTable(i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  br label %106

102:                                              ; preds = %91
  %103 = load i32, i32* @COMMAND, align 4
  %104 = load i32, i32* @DAC2OutputControl, align 4
  %105 = call i32 @GetIndexIntoMasterTable(i32 %103, i32 %104)
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %87
  br label %109

108:                                              ; preds = %2
  br label %206

109:                                              ; preds = %107, %79, %51, %32, %28, %24
  %110 = load i32, i32* %4, align 4
  switch i32 %110, label %206 [
    i32 141, label %111
    i32 140, label %179
    i32 139, label %179
    i32 142, label %179
  ]

111:                                              ; preds = %109
  %112 = load i32, i32* @ATOM_ENABLE, align 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %115 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 136
  br i1 %117, label %118, label %137

118:                                              ; preds = %111
  %119 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %120 = call i32 @RREG32(i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @ATOM_S3_DFP2I_ACTIVE, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = call i32 @WREG32(i32 %121, i32 %125)
  %127 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = bitcast %struct.TYPE_5__* %8 to i32*
  %133 = call i32 @atom_execute_table(i32 %130, i32 %131, i32* %132)
  %134 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @WREG32(i32 %134, i32 %135)
  br label %145

137:                                              ; preds = %111
  %138 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = bitcast %struct.TYPE_5__* %8 to i32*
  %144 = call i32 @atom_execute_table(i32 %141, i32 %142, i32* %143)
  br label %145

145:                                              ; preds = %137, %118
  %146 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %147 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %145
  %153 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %160 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %159, i32 0, i32 3
  %161 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %160, align 8
  store %struct.radeon_encoder_atom_dig* %161, %struct.radeon_encoder_atom_dig** %11, align 8
  %162 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %163 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %11, align 8
  %164 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @atombios_set_backlight_level(%struct.radeon_encoder* %162, i32 %165)
  br label %177

167:                                              ; preds = %152
  %168 = load i32, i32* @ATOM_LCD_BLON, align 4
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %168, i32* %169, align 4
  %170 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %9, align 4
  %175 = bitcast %struct.TYPE_5__* %8 to i32*
  %176 = call i32 @atom_execute_table(i32 %173, i32 %174, i32* %175)
  br label %177

177:                                              ; preds = %167, %158
  br label %178

178:                                              ; preds = %177, %145
  br label %206

179:                                              ; preds = %109, %109, %109
  %180 = load i32, i32* @ATOM_DISABLE, align 4
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %180, i32* %181, align 4
  %182 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %9, align 4
  %187 = bitcast %struct.TYPE_5__* %8 to i32*
  %188 = call i32 @atom_execute_table(i32 %185, i32 %186, i32* %187)
  %189 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %190 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %179
  %196 = load i32, i32* @ATOM_LCD_BLOFF, align 4
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %196, i32* %197, align 4
  %198 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %9, align 4
  %203 = bitcast %struct.TYPE_5__* %8 to i32*
  %204 = call i32 @atom_execute_table(i32 %201, i32 %202, i32* %203)
  br label %205

205:                                              ; preds = %195, %179
  br label %206

206:                                              ; preds = %108, %109, %205, %178
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @atombios_set_backlight_level(%struct.radeon_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
