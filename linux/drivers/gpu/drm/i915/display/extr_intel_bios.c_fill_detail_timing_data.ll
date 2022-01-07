; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_fill_detail_timing_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_fill_detail_timing_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lvds_dvo_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*, %struct.lvds_dvo_timing*)* @fill_detail_timing_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_detail_timing_data(%struct.drm_display_mode* %0, %struct.lvds_dvo_timing* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.lvds_dvo_timing*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store %struct.lvds_dvo_timing* %1, %struct.lvds_dvo_timing** %4, align 8
  %5 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %6 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, 8
  %9 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %10 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %19 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 8
  %22 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %23 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = add nsw i32 %17, %25
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %33 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 8
  %36 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %37 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = add nsw i32 %31, %39
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %47 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 8
  %50 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %51 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = add nsw i32 %45, %53
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %58 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 8
  %61 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %62 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %71 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 4
  %74 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %75 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %73, %76
  %78 = add nsw i32 %69, %77
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %85 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 4
  %88 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %89 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  %92 = add nsw i32 %83, %91
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %99 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 8
  %102 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %103 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %102, i32 0, i32 15
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = add nsw i32 %97, %105
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %110 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %111, 10
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 12
  store i32 %115, i32* %117, align 4
  %118 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %119 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %118, i32 0, i32 22
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %2
  %123 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %134

128:                                              ; preds = %2
  %129 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %122
  %135 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %136 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %135, i32 0, i32 21
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %151

145:                                              ; preds = %134
  %146 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %147 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %148 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %153 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %152, i32 0, i32 17
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %157 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %156, i32 0, i32 18
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %155, %158
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 4
  %162 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %163 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %162, i32 0, i32 19
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 8
  %166 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %167 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %166, i32 0, i32 20
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %165, %168
  %170 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %171 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %170, i32 0, i32 10
  store i32 %169, i32* %171, align 4
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %176 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %174, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %151
  %180 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %181 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  %184 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %185 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %179, %151
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %189, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %196 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  %199 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %200 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %194, %186
  %202 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %203 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %202)
  ret void
}

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
