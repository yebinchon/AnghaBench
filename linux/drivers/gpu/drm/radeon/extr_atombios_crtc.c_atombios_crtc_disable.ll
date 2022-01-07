; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.drm_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i64 }
%struct.radeon_crtc = type { i32, i32, i32*, i32*, i64, i64 }
%struct.radeon_atom_ss = type { i32 }
%struct.radeon_bo = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to reserve rbo before unpin\0A\00", align 1
@EVERGREEN_GRPH_ENABLE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_ENABLE = common dso_local global i64 0, align 8
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@CHIP_ARUBA = common dso_local global i32 0, align 4
@CHIP_KAVERI = common dso_local global i32 0, align 4
@CHIP_BONAIRE = common dso_local global i32 0, align 4
@CHIP_HAWAII = common dso_local global i32 0, align 4
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @atombios_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_crtc_disable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_atom_ss, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_bo*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %10)
  store %struct.radeon_crtc* %11, %struct.radeon_crtc** %3, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %5, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %19 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %20 = call i32 @atombios_crtc_dpms(%struct.drm_crtc* %18, i32 %19)
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %1
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.radeon_bo* @gem_to_radeon_bo(i32 %36)
  store %struct.radeon_bo* %37, %struct.radeon_bo** %9, align 8
  %38 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %39 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %50

45:                                               ; preds = %27
  %46 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %47 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %46)
  %48 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %49 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %48)
  br label %50

50:                                               ; preds = %45, %43
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %53 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i64, i64* @EVERGREEN_GRPH_ENABLE, align 8
  %57 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 @WREG32(i64 %60, i32 0)
  br label %74

62:                                               ; preds = %51
  %63 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %64 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i64, i64* @AVIVO_D1GRPH_ENABLE, align 8
  %68 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @WREG32(i64 %71, i32 0)
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %76 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %80 = load i32, i32* @ATOM_ENABLE, align 4
  %81 = call i32 @atombios_powergate_crtc(%struct.drm_crtc* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %134, %82
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %137

89:                                               ; preds = %83
  %90 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = icmp ne %struct.TYPE_7__* %97, null
  br i1 %98, label %99, label %133

99:                                               ; preds = %89
  %100 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %103, i64 %105
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %99
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %124, i64 %126
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %120, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  br label %188

133:                                              ; preds = %117, %111, %99, %89
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %83

137:                                              ; preds = %83
  %138 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %186 [
    i32 129, label %141
    i32 128, label %141
    i32 130, label %151
  ]

141:                                              ; preds = %137, %137
  %142 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %143 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %147 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ATOM_DISABLE, align 4
  %150 = call i32 @atombios_crtc_program_pll(%struct.drm_crtc* %142, i32 %145, i32 %148, i32 0, i32 0, i32 %149, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.radeon_atom_ss* %6)
  br label %187

151:                                              ; preds = %137
  %152 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CHIP_ARUBA, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %175, label %157

157:                                              ; preds = %151
  %158 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CHIP_KAVERI, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %175, label %163

163:                                              ; preds = %157
  %164 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CHIP_BONAIRE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @CHIP_HAWAII, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %169, %163, %157, %151
  %176 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %177 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %181 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ATOM_DISABLE, align 4
  %184 = call i32 @atombios_crtc_program_pll(%struct.drm_crtc* %176, i32 %179, i32 %182, i32 0, i32 0, i32 %183, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.radeon_atom_ss* %6)
  br label %185

185:                                              ; preds = %175, %169
  br label %187

186:                                              ; preds = %137
  br label %187

187:                                              ; preds = %186, %185, %141
  br label %188

188:                                              ; preds = %187, %132
  %189 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %190 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %191 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %192, i32 0, i32 4
  store i64 0, i64* %193, align 8
  %194 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %195 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %194, i32 0, i32 3
  store i32* null, i32** %195, align 8
  %196 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %197 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %196, i32 0, i32 2
  store i32* null, i32** %197, align 8
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @atombios_crtc_dpms(%struct.drm_crtc*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(i32) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @atombios_powergate_crtc(%struct.drm_crtc*, i32) #1

declare dso_local i32 @atombios_crtc_program_pll(%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.radeon_atom_ss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
