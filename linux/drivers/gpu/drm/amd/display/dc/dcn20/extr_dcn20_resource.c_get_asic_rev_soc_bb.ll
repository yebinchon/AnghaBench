; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_get_asic_rev_soc_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_get_asic_rev_soc_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._vcs_dpi_soc_bounding_box_st = type { i32 }

@dcn2_0_nv12_soc = common dso_local global %struct._vcs_dpi_soc_bounding_box_st zeroinitializer, align 4
@dcn2_0_soc = common dso_local global %struct._vcs_dpi_soc_bounding_box_st zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._vcs_dpi_soc_bounding_box_st* (i32)* @get_asic_rev_soc_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._vcs_dpi_soc_bounding_box_st* @get_asic_rev_soc_bb(i32 %0) #0 {
  %2 = alloca %struct._vcs_dpi_soc_bounding_box_st*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @ASICREV_IS_NAVI12_P(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct._vcs_dpi_soc_bounding_box_st* @dcn2_0_nv12_soc, %struct._vcs_dpi_soc_bounding_box_st** %2, align 8
  br label %9

8:                                                ; preds = %1
  store %struct._vcs_dpi_soc_bounding_box_st* @dcn2_0_soc, %struct._vcs_dpi_soc_bounding_box_st** %2, align 8
  br label %9

9:                                                ; preds = %8, %7
  %10 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %2, align 8
  ret %struct._vcs_dpi_soc_bounding_box_st* %10
}

declare dso_local i64 @ASICREV_IS_NAVI12_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
