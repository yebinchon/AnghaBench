; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_set_truncation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_set_truncation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_opp = type { i32 }
%struct.bit_depth_reduction_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FMT_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@FMT_TRUNCATE_EN = common dso_local global i32 0, align 4
@FMT_TRUNCATE_DEPTH = common dso_local global i32 0, align 4
@FMT_TRUNCATE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_opp*, %struct.bit_depth_reduction_params*)* @opp1_set_truncation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opp1_set_truncation(%struct.dcn10_opp* %0, %struct.bit_depth_reduction_params* %1) #0 {
  %3 = alloca %struct.dcn10_opp*, align 8
  %4 = alloca %struct.bit_depth_reduction_params*, align 8
  store %struct.dcn10_opp* %0, %struct.dcn10_opp** %3, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %4, align 8
  %5 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %6 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %7 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %8 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %12 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %13 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FMT_TRUNCATE_MODE, align 4
  %17 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %18 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG_UPDATE_3(i32 %5, i32 %6, i32 %10, i32 %11, i32 %15, i32 %16, i32 %20)
  ret void
}

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
