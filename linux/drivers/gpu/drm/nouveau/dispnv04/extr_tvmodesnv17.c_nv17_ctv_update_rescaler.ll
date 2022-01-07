; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvmodesnv17.c_nv17_ctv_update_rescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvmodesnv17.c_nv17_ctv_update_rescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_11__*, %struct.drm_device* }
%struct.TYPE_11__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.drm_device = type { i32 }
%struct.nv17_tv_encoder = type { i32 }
%struct.nv04_crtc_reg = type { i32*, i32*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nv04_crtc_reg* }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_display_mode }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@FP_VALID_START = common dso_local global i64 0, align 8
@FP_VALID_END = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_DEBUG_1_YSCALE_TESTMODE_ENABLE = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_1_YSCALE_VALUE = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_1_XSCALE_TESTMODE_ENABLE = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_1_XSCALE_VALUE = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HVALID_START = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HVALID_END = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_VVALID_START = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_VVALID_END = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv17_ctv_update_rescaler(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nv17_tv_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_crtc_reg*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %3, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %18 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %17)
  store %struct.nv17_tv_encoder* %18, %struct.nv17_tv_encoder** %4, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call %struct.TYPE_10__* @nouveau_crtc(%struct.TYPE_11__* %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call %struct.TYPE_9__* @nv04_display(%struct.drm_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %29, i64 %31
  store %struct.nv04_crtc_reg* %32, %struct.nv04_crtc_reg** %6, align 8
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %34 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store %struct.drm_display_mode* %36, %struct.drm_display_mode** %7, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %38 = call %struct.TYPE_12__* @get_tv_norm(%struct.drm_encoder* %37)
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %8, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  store i32 100, i32* %9, align 4
  br label %52

48:                                               ; preds = %1
  %49 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %50 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %47
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %10, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = sdiv i32 %67, 2
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 20
  %74 = call i32 @min(i32 %69, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @interpolate(i32 0, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 20
  %83 = call i32 @min(i32 %78, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @interpolate(i32 0, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 2048
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 2, %94
  %96 = sub nsw i32 %93, %95
  %97 = sdiv i32 %90, %96
  store i32 %97, i32* %12, align 4
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2048
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 2, %105
  %107 = sub nsw i32 %104, %106
  %108 = sdiv i32 %101, %107
  %109 = and i32 %108, -4
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %112 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @FP_VALID_START, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %123 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @FP_VALID_END, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %129 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @FP_VALID_START, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %140 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @FP_VALID_END, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_1_YSCALE_TESTMODE_ENABLE, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_1_YSCALE_VALUE, align 4
  %147 = call i32 @XLATE(i32 %145, i32 0, i32 %146)
  %148 = or i32 %144, %147
  %149 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_1_XSCALE_TESTMODE_ENABLE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_1_XSCALE_VALUE, align 4
  %153 = call i32 @XLATE(i32 %151, i32 0, i32 %152)
  %154 = or i32 %150, %153
  %155 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %156 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @NV_PRAMDAC_FP_HVALID_START, align 4
  %160 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %161 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @FP_VALID_START, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @NVWriteRAMDAC(%struct.drm_device* %157, i32 %158, i32 %159, i32 %165)
  %167 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @NV_PRAMDAC_FP_HVALID_END, align 4
  %170 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %171 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @FP_VALID_END, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @NVWriteRAMDAC(%struct.drm_device* %167, i32 %168, i32 %169, i32 %175)
  %177 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @NV_PRAMDAC_FP_VVALID_START, align 4
  %180 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %181 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* @FP_VALID_START, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @NVWriteRAMDAC(%struct.drm_device* %177, i32 %178, i32 %179, i32 %185)
  %187 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @NV_PRAMDAC_FP_VVALID_END, align 4
  %190 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %191 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @FP_VALID_END, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @NVWriteRAMDAC(%struct.drm_device* %187, i32 %188, i32 %189, i32 %195)
  %197 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_1, align 4
  %200 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %201 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @NVWriteRAMDAC(%struct.drm_device* %197, i32 %198, i32 %199, i32 %202)
  ret void
}

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.TYPE_10__* @nouveau_crtc(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_9__* @nv04_display(%struct.drm_device*) #1

declare dso_local %struct.TYPE_12__* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i32 @interpolate(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @XLATE(i32, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
