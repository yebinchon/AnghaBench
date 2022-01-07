; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_vc_remote_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_vc_remote_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@VERIFY_CAP_REMOTE_PHY = common dso_local global i32 0, align 4
@GENERAL_CONFIG = common dso_local global i32 0, align 4
@POWER_MANAGEMENT_SHIFT = common dso_local global i32 0, align 4
@POWER_MANAGEMENT_MASK = common dso_local global i32 0, align 4
@CONTINIOUS_REMOTE_UPDATE_SUPPORT_SHIFT = common dso_local global i32 0, align 4
@CONTINIOUS_REMOTE_UPDATE_SUPPORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32*, i32*)* @read_vc_remote_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_vc_remote_phy(%struct.hfi1_devdata* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %9 = load i32, i32* @VERIFY_CAP_REMOTE_PHY, align 4
  %10 = load i32, i32* @GENERAL_CONFIG, align 4
  %11 = call i32 @read_8051_config(%struct.hfi1_devdata* %8, i32 %9, i32 %10, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @POWER_MANAGEMENT_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @POWER_MANAGEMENT_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CONTINIOUS_REMOTE_UPDATE_SUPPORT_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @CONTINIOUS_REMOTE_UPDATE_SUPPORT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  ret void
}

declare dso_local i32 @read_8051_config(%struct.hfi1_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
