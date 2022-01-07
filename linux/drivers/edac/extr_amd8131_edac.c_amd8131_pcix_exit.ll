; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd8131_edac.c_amd8131_pcix_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd8131_edac.c_amd8131_pcix_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd8131_dev_info = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@REG_INT_CTLR = common dso_local global i32 0, align 4
@INT_CTLR_PERR = common dso_local global i32 0, align 4
@INT_CTLR_SERR = common dso_local global i32 0, align 4
@INT_CTLR_DTSE = common dso_local global i32 0, align 4
@REG_STS_CMD = common dso_local global i32 0, align 4
@STS_CMD_SERREN = common dso_local global i32 0, align 4
@REG_LNK_CTRL_A = common dso_local global i32 0, align 4
@LNK_CTRL_CRCFEN = common dso_local global i32 0, align 4
@REG_LNK_CTRL_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd8131_dev_info*)* @amd8131_pcix_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8131_pcix_exit(%struct.amd8131_dev_info* %0) #0 {
  %2 = alloca %struct.amd8131_dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.amd8131_dev_info* %0, %struct.amd8131_dev_info** %2, align 8
  %5 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %2, align 8
  %6 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @REG_INT_CTLR, align 4
  %10 = call i32 @edac_pci_read_dword(%struct.pci_dev* %8, i32 %9, i32* %3)
  %11 = load i32, i32* @INT_CTLR_PERR, align 4
  %12 = load i32, i32* @INT_CTLR_SERR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @INT_CTLR_DTSE, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load i32, i32* @REG_INT_CTLR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @edac_pci_write_dword(%struct.pci_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* @REG_STS_CMD, align 4
  %25 = call i32 @edac_pci_read_dword(%struct.pci_dev* %23, i32 %24, i32* %3)
  %26 = load i32, i32* @STS_CMD_SERREN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load i32, i32* @REG_STS_CMD, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @edac_pci_write_dword(%struct.pci_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* @REG_LNK_CTRL_A, align 4
  %36 = call i32 @edac_pci_read_dword(%struct.pci_dev* %34, i32 %35, i32* %3)
  %37 = load i32, i32* @LNK_CTRL_CRCFEN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* @REG_LNK_CTRL_A, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @edac_pci_write_dword(%struct.pci_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load i32, i32* @REG_LNK_CTRL_B, align 4
  %47 = call i32 @edac_pci_read_dword(%struct.pci_dev* %45, i32 %46, i32* %3)
  %48 = load i32, i32* @LNK_CTRL_CRCFEN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i32, i32* @REG_LNK_CTRL_B, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @edac_pci_write_dword(%struct.pci_dev* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @edac_pci_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @edac_pci_write_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
