; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce120/extr_dce120_clk_mgr.c_dce121_clk_mgr_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce120/extr_dce120_clk_mgr.c_dce121_clk_mgr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.clk_mgr_internal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce121_clk_mgr_construct(%struct.dc_context* %0, %struct.clk_mgr_internal* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.clk_mgr_internal*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.clk_mgr_internal* %1, %struct.clk_mgr_internal** %4, align 8
  %5 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %6 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %7 = call i32 @dce120_clk_mgr_construct(%struct.dc_context* %5, %struct.clk_mgr_internal* %6)
  %8 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %9 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 625000, i32* %10, align 4
  %11 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %12 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @dce121_xgmi_enabled(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %20 = call i32 @dce121_clock_patch_xgmi_ss_info(%struct.clk_mgr_internal* %19)
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @dce120_clk_mgr_construct(%struct.dc_context*, %struct.clk_mgr_internal*) #1

declare dso_local i64 @dce121_xgmi_enabled(i32) #1

declare dso_local i32 @dce121_clock_patch_xgmi_ss_info(%struct.clk_mgr_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
