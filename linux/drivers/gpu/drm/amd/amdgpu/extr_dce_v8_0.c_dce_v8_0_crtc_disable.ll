; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.drm_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i64 }
%struct.amdgpu_crtc = type { i32, i32, i32*, i32*, i64 }
%struct.amdgpu_atom_ss = type { i32 }
%struct.amdgpu_bo = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to reserve abo before unpin\0A\00", align 1
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@CHIP_KAVERI = common dso_local global i32 0, align 4
@CHIP_BONAIRE = common dso_local global i32 0, align 4
@CHIP_HAWAII = common dso_local global i32 0, align 4
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v8_0_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_crtc_disable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.amdgpu_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_atom_ss, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_bo*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %10)
  store %struct.amdgpu_crtc* %11, %struct.amdgpu_crtc** %3, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %5, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %19 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %20 = call i32 @dce_v8_0_crtc_dpms(%struct.drm_crtc* %18, i32 %19)
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
  %37 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(i32 %36)
  store %struct.amdgpu_bo* %37, %struct.amdgpu_bo** %9, align 8
  %38 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %39 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %38, i32 1)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %50

45:                                               ; preds = %27
  %46 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %47 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %46)
  %48 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %49 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %48)
  br label %50

50:                                               ; preds = %45, %43
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %53 = call i32 @dce_v8_0_grph_enable(%struct.drm_crtc* %52, i32 0)
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %55 = load i32, i32* @ATOM_ENABLE, align 4
  %56 = call i32 @amdgpu_atombios_crtc_powergate(%struct.drm_crtc* %54, i32 %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %109, %51
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %57
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %74, label %108

74:                                               ; preds = %64
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %74
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %99, i64 %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %95, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %157

108:                                              ; preds = %92, %86, %74, %64
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %57

112:                                              ; preds = %57
  %113 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %155 [
    i32 129, label %116
    i32 128, label %116
    i32 130, label %126
  ]

116:                                              ; preds = %112, %112
  %117 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %118 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %119 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %122 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ATOM_DISABLE, align 4
  %125 = call i32 @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc* %117, i32 %120, i32 %123, i32 0, i32 0, i32 %124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.amdgpu_atom_ss* %6)
  br label %156

126:                                              ; preds = %112
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CHIP_KAVERI, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %144, label %132

132:                                              ; preds = %126
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CHIP_BONAIRE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CHIP_HAWAII, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %138, %132, %126
  %145 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %146 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %147 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %150 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ATOM_DISABLE, align 4
  %153 = call i32 @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc* %145, i32 %148, i32 %151, i32 0, i32 0, i32 %152, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.amdgpu_atom_ss* %6)
  br label %154

154:                                              ; preds = %144, %138
  br label %156

155:                                              ; preds = %112
  br label %156

156:                                              ; preds = %155, %154, %116
  br label %157

157:                                              ; preds = %156, %107
  %158 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %159 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %160 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %162 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %164 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %163, i32 0, i32 3
  store i32* null, i32** %164, align 8
  %165 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %166 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %165, i32 0, i32 2
  store i32* null, i32** %166, align 8
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dce_v8_0_crtc_dpms(%struct.drm_crtc*, i32) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(i32) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @dce_v8_0_grph_enable(%struct.drm_crtc*, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_powergate(%struct.drm_crtc*, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.amdgpu_atom_ss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
