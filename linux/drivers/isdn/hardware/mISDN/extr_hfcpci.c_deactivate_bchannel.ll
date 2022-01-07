; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_deactivate_bchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_deactivate_bchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, %struct.hfc_pci* }
%struct.hfc_pci = type { i32 }

@ISDN_P_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bchannel*)* @deactivate_bchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_bchannel(%struct.bchannel* %0) #0 {
  %2 = alloca %struct.bchannel*, align 8
  %3 = alloca %struct.hfc_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.bchannel* %0, %struct.bchannel** %2, align 8
  %5 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %6 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %5, i32 0, i32 1
  %7 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  store %struct.hfc_pci* %7, %struct.hfc_pci** %3, align 8
  %8 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %9 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @spin_lock_irqsave(i32* %9, i32 %10)
  %12 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %13 = call i32 @mISDN_clear_bchannel(%struct.bchannel* %12)
  %14 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %15 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %16 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ISDN_P_NONE, align 4
  %19 = call i32 @mode_hfcpci(%struct.bchannel* %14, i32 %17, i32 %18)
  %20 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %21 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i32 %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @mISDN_clear_bchannel(%struct.bchannel*) #1

declare dso_local i32 @mode_hfcpci(%struct.bchannel*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
