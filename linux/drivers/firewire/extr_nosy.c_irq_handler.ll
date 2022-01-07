; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilynx = type { i32 }

@PCI_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI_INT_INT_PEND = common dso_local global i32 0, align 4
@PCI_INT_P1394_INT = common dso_local global i32 0, align 4
@LINK_INT_STATUS = common dso_local global i32 0, align 4
@LINK_INT_PHY_BUSRESET = common dso_local global i32 0, align 4
@PCI_INT_DMA0_HLT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcilynx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pcilynx*
  store %struct.pcilynx* %10, %struct.pcilynx** %6, align 8
  %11 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %12 = load i32, i32* @PCI_INT_STATUS, align 4
  %13 = call i32 @reg_read(%struct.pcilynx* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCI_INT_INT_PEND, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCI_INT_P1394_INT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %32 = load i32, i32* @LINK_INT_STATUS, align 4
  %33 = call i32 @reg_read(%struct.pcilynx* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %35 = load i32, i32* @LINK_INT_STATUS, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @reg_write(%struct.pcilynx* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @LINK_INT_PHY_BUSRESET, align 4
  %40 = and i32 %38, %39
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %44 = call i32 @bus_reset_irq_handler(%struct.pcilynx* %43)
  br label %45

45:                                               ; preds = %42, %30
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %48 = load i32, i32* @PCI_INT_STATUS, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @reg_write(%struct.pcilynx* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PCI_INT_DMA0_HLT, align 4
  %53 = and i32 %51, %52
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %57 = call i32 @packet_irq_handler(%struct.pcilynx* %56)
  %58 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %59 = load %struct.pcilynx*, %struct.pcilynx** %6, align 8
  %60 = getelementptr inbounds %struct.pcilynx, %struct.pcilynx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @run_pcl(%struct.pcilynx* %58, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %55, %46
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %23, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @reg_read(%struct.pcilynx*, i32) #1

declare dso_local i32 @reg_write(%struct.pcilynx*, i32, i32) #1

declare dso_local i32 @bus_reset_irq_handler(%struct.pcilynx*) #1

declare dso_local i32 @packet_irq_handler(%struct.pcilynx*) #1

declare dso_local i32 @run_pcl(%struct.pcilynx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
