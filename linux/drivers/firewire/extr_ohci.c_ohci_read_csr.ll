; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_read_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_read_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_ohci = type { i32, i32, i32, i32 }

@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleMaster = common dso_local global i32 0, align 4
@CSR_STATE_BIT_CMSTR = common dso_local global i32 0, align 4
@CSR_STATE_BIT_ABDICATE = common dso_local global i32 0, align 4
@OHCI1394_NodeID = common dso_local global i32 0, align 4
@OHCI1394_ATRetries = common dso_local global i32 0, align 4
@OHCI1394_FairnessControl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32)* @ohci_read_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_read_csr(%struct.fw_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_ohci*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %10 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %9)
  store %struct.fw_ohci* %10, %struct.fw_ohci** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %75 [
    i32 129, label %12
    i32 128, label %12
    i32 131, label %38
    i32 132, label %43
    i32 133, label %46
    i32 134, label %58
    i32 130, label %65
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %14 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %19 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %20 = call i32 @reg_read(%struct.fw_ohci* %18, i32 %19)
  %21 = load i32, i32* @OHCI1394_LinkControl_cycleMaster, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @CSR_STATE_BIT_CMSTR, align 4
  store i32 %25, i32* %8, align 4
  br label %27

26:                                               ; preds = %17, %12
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %29 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @CSR_STATE_BIT_ABDICATE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %77

38:                                               ; preds = %2
  %39 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %40 = load i32, i32* @OHCI1394_NodeID, align 4
  %41 = call i32 @reg_read(%struct.fw_ohci* %39, i32 %40)
  %42 = shl i32 %41, 16
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %2
  %44 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %45 = call i32 @get_cycle_time(%struct.fw_ohci* %44)
  store i32 %45, i32* %3, align 4
  br label %77

46:                                               ; preds = %2
  %47 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %48 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %52 = call i32 @update_bus_time(%struct.fw_ohci* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %54 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %53, i32 0, i32 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %77

58:                                               ; preds = %2
  %59 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %60 = load i32, i32* @OHCI1394_ATRetries, align 4
  %61 = call i32 @reg_read(%struct.fw_ohci* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = and i32 %63, 268431375
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %2
  %66 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %67 = load i32, i32* @OHCI1394_FairnessControl, align 4
  %68 = call i32 @reg_read(%struct.fw_ohci* %66, i32 %67)
  %69 = and i32 %68, 63
  %70 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %71 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 %69, %73
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %2
  %76 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %65, %58, %46, %43, %38, %36
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @get_cycle_time(%struct.fw_ohci*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_bus_time(%struct.fw_ohci*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
