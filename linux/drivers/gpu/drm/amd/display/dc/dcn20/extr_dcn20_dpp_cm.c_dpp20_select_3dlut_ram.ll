; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_select_3dlut_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_select_3dlut_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn20_dpp = type { i32 }

@CM_3DLUT_READ_WRITE_CONTROL = common dso_local global i32 0, align 4
@CM_3DLUT_RAM_SEL = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4
@CM_3DLUT_30BIT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*, i32, i32)* @dpp20_select_3dlut_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp20_select_3dlut_ram(%struct.dpp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dpp*, %struct.dpp** %4, align 8
  %9 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %8)
  store %struct.dcn20_dpp* %9, %struct.dcn20_dpp** %7, align 8
  %10 = load i32, i32* @CM_3DLUT_READ_WRITE_CONTROL, align 4
  %11 = load i32, i32* @CM_3DLUT_RAM_SEL, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LUT_RAM_A, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  %17 = load i32, i32* @CM_3DLUT_30BIT_EN, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = call i32 @REG_UPDATE_2(i32 %10, i32 %11, i32 %16, i32 %17, i32 %21)
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
