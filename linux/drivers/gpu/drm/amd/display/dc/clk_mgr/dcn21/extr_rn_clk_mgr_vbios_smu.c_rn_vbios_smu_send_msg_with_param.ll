; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr_vbios_smu.c_rn_vbios_smu_send_msg_with_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr_vbios_smu.c_rn_vbios_smu_send_msg_with_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i32 }

@MP1_SMN_C2PMSG_91 = common dso_local global i32 0, align 4
@MP1_SMN_C2PMSG_83 = common dso_local global i32 0, align 4
@MP1_SMN_C2PMSG_67 = common dso_local global i32 0, align 4
@CONTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rn_vbios_smu_send_msg_with_param(%struct.clk_mgr_internal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.clk_mgr_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @MP1_SMN_C2PMSG_91, align 4
  %8 = call i32 @REG_WRITE(i32 %7, i32 0)
  %9 = load i32, i32* @MP1_SMN_C2PMSG_83, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @REG_WRITE(i32 %9, i32 %10)
  %12 = load i32, i32* @MP1_SMN_C2PMSG_67, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @REG_WRITE(i32 %12, i32 %13)
  %15 = load i32, i32* @MP1_SMN_C2PMSG_91, align 4
  %16 = load i32, i32* @CONTENT, align 4
  %17 = call i32 @REG_WAIT(i32 %15, i32 %16, i32 1, i32 10, i32 200000)
  %18 = load i32, i32* @MP1_SMN_C2PMSG_83, align 4
  %19 = call i32 @REG_READ(i32 %18)
  ret i32 %19
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
