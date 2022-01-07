; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_dtd_from_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_dtd_from_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo_dtd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DTD_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DTD_FLAG_HSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DTD_FLAG_VSYNC_POSITIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo_dtd*, %struct.drm_display_mode*)* @intel_sdvo_get_dtd_from_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.intel_sdvo_dtd*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_sdvo_dtd* %0, %struct.intel_sdvo_dtd** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %14 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %15 = call i32 @memset(%struct.intel_sdvo_dtd* %14, i32 0, i32 52)
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %11, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %12, align 4
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %67, 10
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %71 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 255
  %75 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %76 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 255
  %80 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %81 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 15
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 15
  %90 = or i32 %86, %89
  %91 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %92 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 255
  %96 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %97 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, 255
  %101 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %102 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 15
  %107 = shl i32 %106, 4
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 15
  %111 = or i32 %107, %110
  %112 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %113 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 6
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, 255
  %117 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %118 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 255
  %122 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %123 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, 15
  %127 = shl i32 %126, 4
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %128, 15
  %130 = or i32 %127, %129
  %131 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %132 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, 768
  %136 = ashr i32 %135, 2
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 768
  %139 = ashr i32 %138, 4
  %140 = or i32 %136, %139
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %141, 48
  %143 = ashr i32 %142, 2
  %144 = or i32 %140, %143
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, 48
  %147 = ashr i32 %146, 4
  %148 = or i32 %144, %147
  %149 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %150 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %153 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  store i32 24, i32* %154, align 4
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %2
  %162 = load i32, i32* @DTD_FLAG_INTERLACE, align 4
  %163 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %164 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %162
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %161, %2
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %170 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %168
  %176 = load i32, i32* @DTD_FLAG_HSYNC_POSITIVE, align 4
  %177 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %178 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %175, %168
  %183 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %184 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load i32, i32* @DTD_FLAG_VSYNC_POSITIVE, align 4
  %191 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %192 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %189, %182
  %197 = load i32, i32* %12, align 4
  %198 = and i32 %197, 192
  %199 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %200 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 5
  store i32 %198, i32* %201, align 4
  ret void
}

declare dso_local i32 @memset(%struct.intel_sdvo_dtd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
