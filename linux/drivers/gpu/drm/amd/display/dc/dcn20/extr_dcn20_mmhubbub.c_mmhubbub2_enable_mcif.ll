; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mmhubbub.c_mmhubbub2_enable_mcif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mmhubbub.c_mmhubbub2_enable_mcif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcif_wb = type { i32 }
%struct.dcn20_mmhubbub = type { i32 }

@MCIF_WB_BUFMGR_SW_CONTROL = common dso_local global i32 0, align 4
@MCIF_WB_BUFMGR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmhubbub2_enable_mcif(%struct.mcif_wb* %0) #0 {
  %2 = alloca %struct.mcif_wb*, align 8
  %3 = alloca %struct.dcn20_mmhubbub*, align 8
  store %struct.mcif_wb* %0, %struct.mcif_wb** %2, align 8
  %4 = load %struct.mcif_wb*, %struct.mcif_wb** %2, align 8
  %5 = call %struct.dcn20_mmhubbub* @TO_DCN20_MMHUBBUB(%struct.mcif_wb* %4)
  store %struct.dcn20_mmhubbub* %5, %struct.dcn20_mmhubbub** %3, align 8
  %6 = load i32, i32* @MCIF_WB_BUFMGR_SW_CONTROL, align 4
  %7 = load i32, i32* @MCIF_WB_BUFMGR_ENABLE, align 4
  %8 = call i32 @REG_UPDATE(i32 %6, i32 %7, i32 1)
  ret void
}

declare dso_local %struct.dcn20_mmhubbub* @TO_DCN20_MMHUBBUB(%struct.mcif_wb*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
