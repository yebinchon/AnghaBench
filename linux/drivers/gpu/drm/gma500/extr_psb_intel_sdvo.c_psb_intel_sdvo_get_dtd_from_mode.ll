; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_dtd_from_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_dtd_from_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo_dtd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psb_intel_sdvo_dtd*, %struct.drm_display_mode*)* @psb_intel_sdvo_get_dtd_from_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_get_dtd_from_mode(%struct.psb_intel_sdvo_dtd* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.psb_intel_sdvo_dtd*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.psb_intel_sdvo_dtd* %0, %struct.psb_intel_sdvo_dtd** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %12, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 10
  %65 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %66 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 255
  %70 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %71 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 255
  %75 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %76 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 15
  %81 = shl i32 %80, 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 15
  %85 = or i32 %81, %84
  %86 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %87 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 255
  %91 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %92 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 255
  %96 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %97 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* %6, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 15
  %102 = shl i32 %101, 4
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 15
  %106 = or i32 %102, %105
  %107 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %108 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 6
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %110, 255
  %112 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %113 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 255
  %117 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %118 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %120, 15
  %122 = shl i32 %121, 4
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 15
  %125 = or i32 %122, %124
  %126 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %127 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, 768
  %131 = ashr i32 %130, 2
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, 768
  %134 = ashr i32 %133, 4
  %135 = or i32 %131, %134
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, 48
  %138 = ashr i32 %137, 2
  %139 = or i32 %135, %138
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 48
  %142 = ashr i32 %141, 4
  %143 = or i32 %139, %142
  %144 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %145 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 4
  %147 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %148 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  store i32 24, i32* %149, align 8
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %2
  %157 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %158 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, 2
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %2
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %164 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %163, i32 0, i32 11
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %171 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, 4
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %162
  %176 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %177 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 7
  store i64 0, i64* %178, align 8
  %179 = load i32, i32* %12, align 4
  %180 = and i32 %179, 192
  %181 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %182 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 5
  store i32 %180, i32* %183, align 4
  %184 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %3, align 8
  %185 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 6
  store i64 0, i64* %186, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
