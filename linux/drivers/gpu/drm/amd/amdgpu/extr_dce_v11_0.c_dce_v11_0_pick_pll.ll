; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_pick_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_pick_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_crtc = type { i32 }
%struct.amdgpu_encoder = type { i32, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }

@CHIP_POLARIS10 = common dso_local global i64 0, align 8
@CHIP_POLARIS11 = common dso_local global i64 0, align 8
@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@CHIP_VEGAM = common dso_local global i64 0, align 8
@ATOM_DP_DTO = common dso_local global i32 0, align 4
@ATOM_COMBOPHY_PLL1 = common dso_local global i32 0, align 4
@ATOM_COMBOPHY_PLL0 = common dso_local global i32 0, align 4
@ATOM_COMBOPHY_PLL3 = common dso_local global i32 0, align 4
@ATOM_COMBOPHY_PLL2 = common dso_local global i32 0, align 4
@ATOM_COMBOPHY_PLL5 = common dso_local global i32 0, align 4
@ATOM_COMBOPHY_PLL4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid encoder_id: 0x%x\0A\00", align 1
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@CHIP_CARRIZO = common dso_local global i64 0, align 8
@CHIP_STONEY = common dso_local global i64 0, align 8
@ATOM_PPLL1 = common dso_local global i32 0, align 4
@ATOM_PPLL0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to allocate a PPLL\0A\00", align 1
@ATOM_PPLL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @dce_v11_0_pick_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_pick_pll(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.amdgpu_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %11)
  store %struct.amdgpu_crtc* %12, %struct.amdgpu_crtc** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %6, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CHIP_POLARIS10, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %1
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHIP_POLARIS11, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CHIP_POLARIS12, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHIP_VEGAM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %95

42:                                               ; preds = %36, %30, %24, %1
  %43 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(i32 %45)
  store %struct.amdgpu_encoder* %46, %struct.amdgpu_encoder** %9, align 8
  %47 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %48 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %47, i32 0, i32 1
  %49 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %48, align 8
  store %struct.amdgpu_encoder_atom_dig* %49, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %50 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(i32 %52)
  %54 = call i64 @ENCODER_MODE_IS_DP(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @ATOM_DP_DTO, align 4
  store i32 %57, i32* %2, align 4
  br label %189

58:                                               ; preds = %42
  %59 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %60 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %89 [
    i32 130, label %62
    i32 129, label %71
    i32 128, label %80
  ]

62:                                               ; preds = %58
  %63 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %64 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ATOM_COMBOPHY_PLL1, align 4
  store i32 %68, i32* %2, align 4
  br label %189

69:                                               ; preds = %62
  %70 = load i32, i32* @ATOM_COMBOPHY_PLL0, align 4
  store i32 %70, i32* %2, align 4
  br label %189

71:                                               ; preds = %58
  %72 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %73 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @ATOM_COMBOPHY_PLL3, align 4
  store i32 %77, i32* %2, align 4
  br label %189

78:                                               ; preds = %71
  %79 = load i32, i32* @ATOM_COMBOPHY_PLL2, align 4
  store i32 %79, i32* %2, align 4
  br label %189

80:                                               ; preds = %58
  %81 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %82 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @ATOM_COMBOPHY_PLL5, align 4
  store i32 %86, i32* %2, align 4
  br label %189

87:                                               ; preds = %80
  %88 = load i32, i32* @ATOM_COMBOPHY_PLL4, align 4
  store i32 %88, i32* %2, align 4
  br label %189

89:                                               ; preds = %58
  %90 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %91 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %94, i32* %2, align 4
  br label %189

95:                                               ; preds = %36
  %96 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %97 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(i32 %98)
  %100 = call i64 @ENCODER_MODE_IS_DP(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %95
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %109, i32* %2, align 4
  br label %189

110:                                              ; preds = %102
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %112 = call i32 @amdgpu_pll_get_shared_dp_ppll(%struct.drm_crtc* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %189

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118
  br label %129

120:                                              ; preds = %95
  %121 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %122 = call i32 @amdgpu_pll_get_shared_nondp_ppll(%struct.drm_crtc* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %189

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %119
  %130 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %131 = call i32 @amdgpu_pll_get_use_mask(%struct.drm_crtc* %130)
  store i32 %131, i32* %7, align 4
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CHIP_CARRIZO, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %129
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHIP_STONEY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %137, %129
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @ATOM_PPLL1, align 4
  %146 = shl i32 1, %145
  %147 = and i32 %144, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %150, i32* %2, align 4
  br label %189

151:                                              ; preds = %143
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @ATOM_PPLL0, align 4
  %154 = shl i32 1, %153
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %158, i32* %2, align 4
  br label %189

159:                                              ; preds = %151
  %160 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %161, i32* %2, align 4
  br label %189

162:                                              ; preds = %137
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @ATOM_PPLL2, align 4
  %165 = shl i32 1, %164
  %166 = and i32 %163, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %162
  %169 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %169, i32* %2, align 4
  br label %189

170:                                              ; preds = %162
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @ATOM_PPLL1, align 4
  %173 = shl i32 1, %172
  %174 = and i32 %171, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %177, i32* %2, align 4
  br label %189

178:                                              ; preds = %170
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @ATOM_PPLL0, align 4
  %181 = shl i32 1, %180
  %182 = and i32 %179, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %178
  %185 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %185, i32* %2, align 4
  br label %189

186:                                              ; preds = %178
  %187 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %188 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %186, %184, %176, %168, %159, %157, %149, %126, %116, %108, %89, %87, %85, %78, %76, %69, %67, %56
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(i32) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @amdgpu_pll_get_shared_dp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @amdgpu_pll_get_shared_nondp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @amdgpu_pll_get_use_mask(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
