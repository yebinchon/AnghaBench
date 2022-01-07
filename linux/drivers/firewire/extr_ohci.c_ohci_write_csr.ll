; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_write_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_write_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_ohci = type { i32, i32, i32, i32 }

@CSR_STATE_BIT_CMSTR = common dso_local global i32 0, align 4
@OHCI1394_LinkControlClear = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleMaster = common dso_local global i32 0, align 4
@CSR_STATE_BIT_ABDICATE = common dso_local global i32 0, align 4
@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_NodeID = common dso_local global i32 0, align 4
@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@OHCI1394_IntEventSet = common dso_local global i32 0, align 4
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@OHCI1394_ATRetries = common dso_local global i32 0, align 4
@OHCI1394_FairnessControl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32, i32)* @ohci_write_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_write_csr(%struct.fw_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_ohci*, align 8
  %8 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %10 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %9)
  store %struct.fw_ohci* %10, %struct.fw_ohci** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %129 [
    i32 129, label %12
    i32 128, label %38
    i32 131, label %64
    i32 132, label %72
    i32 133, label %83
    i32 134, label %100
    i32 130, label %121
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CSR_STATE_BIT_CMSTR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %19 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %24 = load i32, i32* @OHCI1394_LinkControlClear, align 4
  %25 = load i32, i32* @OHCI1394_LinkControl_cycleMaster, align 4
  %26 = call i32 @reg_write(%struct.fw_ohci* %23, i32 %24, i32 %25)
  %27 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %28 = call i32 @flush_writes(%struct.fw_ohci* %27)
  br label %29

29:                                               ; preds = %22, %17, %12
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CSR_STATE_BIT_ABDICATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %36 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %131

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CSR_STATE_BIT_CMSTR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %45 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %50 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %51 = load i32, i32* @OHCI1394_LinkControl_cycleMaster, align 4
  %52 = call i32 @reg_write(%struct.fw_ohci* %49, i32 %50, i32 %51)
  %53 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %54 = call i32 @flush_writes(%struct.fw_ohci* %53)
  br label %55

55:                                               ; preds = %48, %43, %38
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @CSR_STATE_BIT_ABDICATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %62 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %131

64:                                               ; preds = %3
  %65 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %66 = load i32, i32* @OHCI1394_NodeID, align 4
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 16
  %69 = call i32 @reg_write(%struct.fw_ohci* %65, i32 %66, i32 %68)
  %70 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %71 = call i32 @flush_writes(%struct.fw_ohci* %70)
  br label %131

72:                                               ; preds = %3
  %73 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %74 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @reg_write(%struct.fw_ohci* %73, i32 %74, i32 %75)
  %77 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %78 = load i32, i32* @OHCI1394_IntEventSet, align 4
  %79 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %80 = call i32 @reg_write(%struct.fw_ohci* %77, i32 %78, i32 %79)
  %81 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %82 = call i32 @flush_writes(%struct.fw_ohci* %81)
  br label %131

83:                                               ; preds = %3
  %84 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %85 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %84, i32 0, i32 2
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %89 = call i32 @update_bus_time(%struct.fw_ohci* %88)
  %90 = and i32 %89, 64
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, -128
  %93 = or i32 %90, %92
  %94 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %95 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %97 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %96, i32 0, i32 2
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  br label %131

100:                                              ; preds = %3
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 15
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, 15
  %105 = shl i32 %104, 4
  %106 = or i32 %102, %105
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, 15
  %109 = shl i32 %108, 8
  %110 = or i32 %106, %109
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 268431360
  %113 = shl i32 %112, 4
  %114 = or i32 %110, %113
  store i32 %114, i32* %6, align 4
  %115 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %116 = load i32, i32* @OHCI1394_ATRetries, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @reg_write(%struct.fw_ohci* %115, i32 %116, i32 %117)
  %119 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %120 = call i32 @flush_writes(%struct.fw_ohci* %119)
  br label %131

121:                                              ; preds = %3
  %122 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %123 = load i32, i32* @OHCI1394_FairnessControl, align 4
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %124, 63
  %126 = call i32 @reg_write(%struct.fw_ohci* %122, i32 %123, i32 %125)
  %127 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %128 = call i32 @flush_writes(%struct.fw_ohci* %127)
  br label %131

129:                                              ; preds = %3
  %130 = call i32 @WARN_ON(i32 1)
  br label %131

131:                                              ; preds = %129, %121, %100, %83, %72, %64, %63, %37
  ret void
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

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
