; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_xfmv_set_gamut_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_xfmv_set_gamut_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.xfm_grph_csc_adjustment = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transform*, %struct.xfm_grph_csc_adjustment*)* @dce110_xfmv_set_gamut_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_xfmv_set_gamut_remap(%struct.transform* %0, %struct.xfm_grph_csc_adjustment* %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.xfm_grph_csc_adjustment*, align 8
  store %struct.transform* %0, %struct.transform** %3, align 8
  store %struct.xfm_grph_csc_adjustment* %1, %struct.xfm_grph_csc_adjustment** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
