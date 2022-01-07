; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_cgm_degamma_ldw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_cgm_degamma_ldw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_color_lut = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_color_lut*)* @chv_cgm_degamma_ldw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_cgm_degamma_ldw(%struct.drm_color_lut* %0) #0 {
  %2 = alloca %struct.drm_color_lut*, align 8
  store %struct.drm_color_lut* %0, %struct.drm_color_lut** %2, align 8
  %3 = load %struct.drm_color_lut*, %struct.drm_color_lut** %2, align 8
  %4 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @drm_color_lut_extract(i32 %5, i32 14)
  %7 = shl i32 %6, 16
  %8 = load %struct.drm_color_lut*, %struct.drm_color_lut** %2, align 8
  %9 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @drm_color_lut_extract(i32 %10, i32 14)
  %12 = or i32 %7, %11
  ret i32 %12
}

declare dso_local i32 @drm_color_lut_extract(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
