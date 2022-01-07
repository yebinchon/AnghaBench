; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_handle_nt_timer3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_handle_nt_timer3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { %struct.TYPE_4__, i32, %struct.hfc_pci* }
%struct.TYPE_4__ = type { i32 }
%struct.hfc_pci = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@FLG_HFC_TIMER_T3 = common dso_local global i32 0, align 4
@HFCPCI_INTS_TIMER = common dso_local global i32 0, align 4
@HFCPCI_INT_M1 = common dso_local global i32 0, align 4
@FLG_ACTIVE = common dso_local global i32 0, align 4
@HFC_CFG_MASTER = common dso_local global i32 0, align 4
@HFCPCI_MASTER = common dso_local global i32 0, align 4
@HFCPCI_MST_MODE = common dso_local global i32 0, align 4
@PH_ACTIVATE_IND = common dso_local global i32 0, align 4
@MISDN_ID_ANY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dchannel*)* @handle_nt_timer3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_nt_timer3(%struct.dchannel* %0) #0 {
  %2 = alloca %struct.dchannel*, align 8
  %3 = alloca %struct.hfc_pci*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %2, align 8
  %4 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %5 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %4, i32 0, i32 2
  %6 = load %struct.hfc_pci*, %struct.hfc_pci** %5, align 8
  store %struct.hfc_pci* %6, %struct.hfc_pci** %3, align 8
  %7 = load i32, i32* @FLG_HFC_TIMER_T3, align 4
  %8 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %9 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %8, i32 0, i32 1
  %10 = call i32 @test_and_clear_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @HFCPCI_INTS_TIMER, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %14 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %12
  store i32 %17, i32* %15, align 8
  %18 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %19 = load i32, i32* @HFCPCI_INT_M1, align 4
  %20 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %21 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Write_hfc(%struct.hfc_pci* %18, i32 %19, i32 %23)
  %25 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %26 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @FLG_ACTIVE, align 4
  %29 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %30 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %29, i32 0, i32 1
  %31 = call i32 @test_and_set_bit(i32 %28, i32* %30)
  %32 = load i32, i32* @HFC_CFG_MASTER, align 4
  %33 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %34 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load i32, i32* @HFCPCI_MASTER, align 4
  %39 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %40 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %46 = load i32, i32* @HFCPCI_MST_MODE, align 4
  %47 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %48 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @Write_hfc(%struct.hfc_pci* %45, i32 %46, i32 %50)
  %52 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %53 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* @PH_ACTIVATE_IND, align 4
  %56 = load i32, i32* @MISDN_ID_ANY, align 4
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i32 @_queue_data(i32* %54, i32 %55, i32 %56, i32 0, i32* null, i32 %57)
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @Write_hfc(%struct.hfc_pci*, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_queue_data(i32*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
