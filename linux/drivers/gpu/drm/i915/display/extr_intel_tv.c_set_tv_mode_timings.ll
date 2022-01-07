; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_set_tv_mode_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_set_tv_mode_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.tv_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@TV_HSYNC_END_SHIFT = common dso_local global i32 0, align 4
@TV_HTOTAL_SHIFT = common dso_local global i32 0, align 4
@TV_HBURST_LEN_SHIFT = common dso_local global i32 0, align 4
@TV_BURST_ENA = common dso_local global i32 0, align 4
@TV_HBLANK_START_SHIFT = common dso_local global i32 0, align 4
@TV_HBLANK_END_SHIFT = common dso_local global i32 0, align 4
@TV_NBR_END_SHIFT = common dso_local global i32 0, align 4
@TV_VI_END_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VI_END_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_LEN_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_START_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_START_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VEQ_LEN_SHIFT = common dso_local global i32 0, align 4
@TV_VEQ_START_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VEQ_START_F2_SHIFT = common dso_local global i32 0, align 4
@TV_EQUAL_ENA = common dso_local global i32 0, align 4
@TV_VBURST_START_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_START_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_START_F3_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F3_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_START_F4_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F4_SHIFT = common dso_local global i32 0, align 4
@TV_H_CTL_1 = common dso_local global i32 0, align 4
@TV_H_CTL_2 = common dso_local global i32 0, align 4
@TV_H_CTL_3 = common dso_local global i32 0, align 4
@TV_V_CTL_1 = common dso_local global i32 0, align 4
@TV_V_CTL_2 = common dso_local global i32 0, align 4
@TV_V_CTL_3 = common dso_local global i32 0, align 4
@TV_V_CTL_4 = common dso_local global i32 0, align 4
@TV_V_CTL_5 = common dso_local global i32 0, align 4
@TV_V_CTL_6 = common dso_local global i32 0, align 4
@TV_V_CTL_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.tv_mode*, i32)* @set_tv_mode_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tv_mode_timings(%struct.drm_i915_private* %0, %struct.tv_mode* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.tv_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.tv_mode* %1, %struct.tv_mode** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %18 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TV_HSYNC_END_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %23 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TV_HTOTAL_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %21, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %29 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 16
  %32 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %33 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TV_HBURST_LEN_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %31, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i32, i32* @TV_BURST_ENA, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %3
  %45 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %46 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TV_HBLANK_START_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %51 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TV_HBLANK_END_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %49, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %57 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TV_NBR_END_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %62 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TV_VI_END_F1_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %60, %65
  %67 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %68 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TV_VI_END_F2_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %66, %71
  store i32 %72, i32* %10, align 4
  %73 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %74 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TV_VSYNC_LEN_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %79 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TV_VSYNC_START_F1_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %77, %82
  %84 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %85 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TV_VSYNC_START_F2_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %83, %88
  store i32 %89, i32* %11, align 4
  %90 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %91 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @TV_VEQ_LEN_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %96 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TV_VEQ_START_F1_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = or i32 %94, %99
  %101 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %102 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TV_VEQ_START_F2_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %100, %105
  store i32 %106, i32* %12, align 4
  %107 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %108 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %107, i32 0, i32 23
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %44
  %112 = load i32, i32* @TV_EQUAL_ENA, align 4
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %111, %44
  %116 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %117 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %116, i32 0, i32 15
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @TV_VBURST_START_F1_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %122 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %121, i32 0, i32 16
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @TV_VBURST_END_F1_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 %120, %125
  store i32 %126, i32* %13, align 4
  %127 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %128 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %127, i32 0, i32 17
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @TV_VBURST_START_F2_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %133 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %132, i32 0, i32 18
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TV_VBURST_END_F2_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = or i32 %131, %136
  store i32 %137, i32* %14, align 4
  %138 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %139 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %138, i32 0, i32 19
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TV_VBURST_START_F3_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %144 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %143, i32 0, i32 20
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TV_VBURST_END_F3_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %142, %147
  store i32 %148, i32* %15, align 4
  %149 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %150 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %149, i32 0, i32 21
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TV_VBURST_START_F4_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %155 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %154, i32 0, i32 22
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TV_VBURST_END_F4_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %153, %158
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* @TV_H_CTL_1, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @I915_WRITE(i32 %160, i32 %161)
  %163 = load i32, i32* @TV_H_CTL_2, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @I915_WRITE(i32 %163, i32 %164)
  %166 = load i32, i32* @TV_H_CTL_3, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @I915_WRITE(i32 %166, i32 %167)
  %169 = load i32, i32* @TV_V_CTL_1, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @I915_WRITE(i32 %169, i32 %170)
  %172 = load i32, i32* @TV_V_CTL_2, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @I915_WRITE(i32 %172, i32 %173)
  %175 = load i32, i32* @TV_V_CTL_3, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @I915_WRITE(i32 %175, i32 %176)
  %178 = load i32, i32* @TV_V_CTL_4, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @I915_WRITE(i32 %178, i32 %179)
  %181 = load i32, i32* @TV_V_CTL_5, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @I915_WRITE(i32 %181, i32 %182)
  %184 = load i32, i32* @TV_V_CTL_6, align 4
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @I915_WRITE(i32 %184, i32 %185)
  %187 = load i32, i32* @TV_V_CTL_7, align 4
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @I915_WRITE(i32 %187, i32 %188)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
