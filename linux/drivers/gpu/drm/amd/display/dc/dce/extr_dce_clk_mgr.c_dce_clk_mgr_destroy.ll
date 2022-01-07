; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_clk_mgr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_clk_mgr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { i32 }
%struct.dce_clk_mgr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_clk_mgr_destroy(%struct.clk_mgr** %0) #0 {
  %2 = alloca %struct.clk_mgr**, align 8
  %3 = alloca %struct.dce_clk_mgr*, align 8
  store %struct.clk_mgr** %0, %struct.clk_mgr*** %2, align 8
  %4 = load %struct.clk_mgr**, %struct.clk_mgr*** %2, align 8
  %5 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %6 = call %struct.dce_clk_mgr* @TO_DCE_CLK_MGR(%struct.clk_mgr* %5)
  store %struct.dce_clk_mgr* %6, %struct.dce_clk_mgr** %3, align 8
  %7 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %3, align 8
  %8 = call i32 @kfree(%struct.dce_clk_mgr* %7)
  %9 = load %struct.clk_mgr**, %struct.clk_mgr*** %2, align 8
  store %struct.clk_mgr* null, %struct.clk_mgr** %9, align 8
  ret void
}

declare dso_local %struct.dce_clk_mgr* @TO_DCE_CLK_MGR(%struct.clk_mgr*) #1

declare dso_local i32 @kfree(%struct.dce_clk_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
