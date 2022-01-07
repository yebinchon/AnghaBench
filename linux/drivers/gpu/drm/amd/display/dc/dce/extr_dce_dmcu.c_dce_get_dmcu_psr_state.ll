; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_get_dmcu_psr_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_get_dmcu_psr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmcu = type { i32 }
%struct.dce_dmcu = type { i32 }

@DMCU_RAM_ACCESS_CTRL = common dso_local global i32 0, align 4
@IRAM_HOST_ACCESS_EN = common dso_local global i32 0, align 4
@DCI_MEM_PWR_STATUS = common dso_local global i32 0, align 4
@DMCU_IRAM_MEM_PWR_STATE = common dso_local global i32 0, align 4
@DMCU_IRAM_RD_CTRL = common dso_local global i32 0, align 4
@DMCU_IRAM_RD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmcu*, i32*)* @dce_get_dmcu_psr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_get_dmcu_psr_state(%struct.dmcu* %0, i32* %1) #0 {
  %3 = alloca %struct.dmcu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dce_dmcu*, align 8
  %6 = alloca i32, align 4
  store %struct.dmcu* %0, %struct.dmcu** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dmcu*, %struct.dmcu** %3, align 8
  %8 = call %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu* %7)
  store %struct.dce_dmcu* %8, %struct.dce_dmcu** %5, align 8
  store i32 240, i32* %6, align 4
  %9 = load i32, i32* @DMCU_RAM_ACCESS_CTRL, align 4
  %10 = load i32, i32* @IRAM_HOST_ACCESS_EN, align 4
  %11 = call i32 @REG_UPDATE(i32 %9, i32 %10, i32 1)
  %12 = load i32, i32* @DCI_MEM_PWR_STATUS, align 4
  %13 = load i32, i32* @DMCU_IRAM_MEM_PWR_STATE, align 4
  %14 = call i32 @REG_WAIT(i32 %12, i32 %13, i32 0, i32 2, i32 10)
  %15 = load i32, i32* @DMCU_IRAM_RD_CTRL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @REG_WRITE(i32 %15, i32 %16)
  %18 = load i32, i32* @DMCU_IRAM_RD_DATA, align 4
  %19 = call i32 @REG_READ(i32 %18)
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @DMCU_RAM_ACCESS_CTRL, align 4
  %22 = load i32, i32* @IRAM_HOST_ACCESS_EN, align 4
  %23 = call i32 @REG_UPDATE(i32 %21, i32 %22, i32 0)
  ret void
}

declare dso_local %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
