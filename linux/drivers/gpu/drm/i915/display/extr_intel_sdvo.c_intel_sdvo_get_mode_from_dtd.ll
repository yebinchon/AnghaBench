; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_mode_from_dtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_mode_from_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.intel_sdvo_dtd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i64 }

@DTD_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DTD_FLAG_HSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DTD_FLAG_VSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*, %struct.intel_sdvo_dtd*)* @intel_sdvo_get_mode_from_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode* %0, %struct.intel_sdvo_dtd* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.intel_sdvo_dtd*, align 8
  %5 = alloca %struct.drm_display_mode, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store %struct.intel_sdvo_dtd* %1, %struct.intel_sdvo_dtd** %4, align 8
  %6 = bitcast %struct.drm_display_mode* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 72, i1 false)
  %7 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %8 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 7
  store i64 %10, i64* %11, align 8
  %12 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %13 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 4
  %17 = and i32 %16, 15
  %18 = shl i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %19
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %24, %28
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 9
  store i64 %29, i64* %30, align 8
  %31 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %32 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 192
  %36 = shl i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %37
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %44 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %42, %46
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 8
  store i64 %47, i64* %48, align 8
  %49 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %50 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 48
  %54 = shl i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %62 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %60, %64
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 6
  store i64 %65, i64* %66, align 8
  %67 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %68 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 15
  %72 = shl i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %78 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 3
  store i64 %80, i64* %81, align 8
  %82 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %83 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 4
  %87 = and i32 %86, 15
  %88 = shl i32 %87, 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %89
  store i64 %92, i64* %90, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 5
  store i64 %94, i64* %95, align 8
  %96 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %97 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 15
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %102
  store i64 %105, i64* %103, align 8
  %106 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %107 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 12
  %111 = shl i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %112
  store i64 %115, i64* %113, align 8
  %116 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %117 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 192
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %121
  store i64 %124, i64* %122, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %128 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 15
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %126, %132
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 4
  store i64 %133, i64* %134, align 8
  %135 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %136 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 3
  %140 = shl i32 %139, 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %141
  store i64 %144, i64* %142, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %148 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %146, %150
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 2
  store i64 %151, i64* %152, align 8
  %153 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %154 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 15
  %158 = shl i32 %157, 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %159
  store i64 %162, i64* %160, align 8
  %163 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %164 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %166, 10
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %170 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @DTD_FLAG_INTERLACE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %2
  %177 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %178 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %177
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %176, %2
  %182 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %183 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @DTD_FLAG_HSYNC_POSITIVE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %181
  %190 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %190
  store i32 %193, i32* %191, align 4
  br label %199

194:                                              ; preds = %181
  %195 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %196 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %195
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %194, %189
  %200 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %201 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @DTD_FLAG_VSYNC_POSITIVE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %199
  %208 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %209 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %208
  store i32 %211, i32* %209, align 4
  br label %217

212:                                              ; preds = %199
  %213 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %214 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %212, %207
  %218 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %5, i32 0)
  %219 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %220 = call i32 @drm_mode_copy(%struct.drm_display_mode* %219, %struct.drm_display_mode* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #2

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, %struct.drm_display_mode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
