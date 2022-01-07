; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_power_on_obuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_power_on_obuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn20_dpp = type { i32 }

@CM_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@SHARED_MEM_PWR_DIS = common dso_local global i32 0, align 4
@OBUF_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@OBUF_MEM_PWR_FORCE = common dso_local global i32 0, align 4
@DSCL_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@LUT_MEM_PWR_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp2_power_on_obuf(%struct.dpp* %0, i32 %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %6)
  store %struct.dcn20_dpp* %7, %struct.dcn20_dpp** %5, align 8
  %8 = load i32, i32* @CM_MEM_PWR_CTRL, align 4
  %9 = load i32, i32* @SHARED_MEM_PWR_DIS, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 %13)
  %15 = load i32, i32* @OBUF_MEM_PWR_CTRL, align 4
  %16 = load i32, i32* @OBUF_MEM_PWR_FORCE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  %21 = call i32 @REG_UPDATE(i32 %15, i32 %16, i32 %20)
  %22 = load i32, i32* @DSCL_MEM_PWR_CTRL, align 4
  %23 = load i32, i32* @LUT_MEM_PWR_FORCE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  %28 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 %27)
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
