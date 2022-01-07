; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_mode_from_dtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_mode_from_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.psb_intel_sdvo_dtd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i64 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*, %struct.psb_intel_sdvo_dtd*)* @psb_intel_sdvo_get_mode_from_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode* %0, %struct.psb_intel_sdvo_dtd* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.psb_intel_sdvo_dtd*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store %struct.psb_intel_sdvo_dtd* %1, %struct.psb_intel_sdvo_dtd** %4, align 8
  %5 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %6 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 7
  store i64 %8, i64* %10, align 8
  %11 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %12 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 15
  %17 = shl i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %27 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 9
  store i64 %30, i64* %32, align 8
  %33 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %34 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 192
  %38 = shl i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %48 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %46, %50
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 8
  store i64 %51, i64* %53, align 8
  %54 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %55 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 48
  %59 = shl i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %69 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 6
  store i64 %72, i64* %74, align 8
  %75 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %76 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 15
  %80 = shl i32 %79, 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %87 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %93 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 4
  %97 = and i32 %96, 15
  %98 = shl i32 %97, 8
  %99 = sext i32 %98 to i64
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %101 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %105 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  %109 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %110 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 4
  %114 = and i32 %113, 15
  %115 = sext i32 %114 to i64
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %121 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 12
  %125 = shl i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %132 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 192
  %136 = sext i32 %135 to i64
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %138 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %145 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 15
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %143, %149
  %151 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  %153 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %154 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 3
  %158 = shl i32 %157, 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %168 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %166, %170
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  %174 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %175 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 15
  %179 = shl i32 %178, 8
  %180 = sext i32 %179 to i64
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %182 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %186 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %188, 10
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %193 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %194 = or i32 %192, %193
  %195 = xor i32 %194, -1
  %196 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %197 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %201 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 2
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %2
  %207 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %208 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %209 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %2
  %213 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %4, align 8
  %214 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %212
  %220 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %221 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %222 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %212
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
