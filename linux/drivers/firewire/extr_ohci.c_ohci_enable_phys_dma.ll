; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_enable_phys_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_enable_phys_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_ohci = type { i32, i32 }

@param_remote_dma = common dso_local global i64 0, align 8
@ESTALE = common dso_local global i32 0, align 4
@LOCAL_BUS = common dso_local global i32 0, align 4
@OHCI1394_PhyReqFilterLoSet = common dso_local global i32 0, align 4
@OHCI1394_PhyReqFilterHiSet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i32)* @ohci_enable_phys_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_enable_phys_dma(%struct.fw_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_ohci*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %13 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %12)
  store %struct.fw_ohci* %13, %struct.fw_ohci** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* @param_remote_dma, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %19 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %23 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @ESTALE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %59

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 65472
  %33 = load i32, i32* @LOCAL_BUS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 63
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 63, %38 ]
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %45 = load i32, i32* @OHCI1394_PhyReqFilterLoSet, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 1, %46
  %48 = call i32 @reg_write(%struct.fw_ohci* %44, i32 %45, i32 %47)
  br label %56

49:                                               ; preds = %39
  %50 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %51 = load i32, i32* @OHCI1394_PhyReqFilterHiSet, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 32
  %54 = shl i32 1, %53
  %55 = call i32 @reg_write(%struct.fw_ohci* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %58 = call i32 @flush_writes(%struct.fw_ohci* %57)
  br label %59

59:                                               ; preds = %56, %27
  %60 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %61 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %60, i32 0, i32 1
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
