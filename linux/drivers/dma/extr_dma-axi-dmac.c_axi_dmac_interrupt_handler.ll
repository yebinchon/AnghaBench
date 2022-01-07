; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AXI_DMAC_REG_IRQ_PENDING = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AXI_DMAC_IRQ_EOT = common dso_local global i32 0, align 4
@AXI_DMAC_REG_TRANSFER_DONE = common dso_local global i32 0, align 4
@AXI_DMAC_IRQ_SOT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @axi_dmac_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_dmac_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.axi_dmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.axi_dmac*
  store %struct.axi_dmac* %11, %struct.axi_dmac** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.axi_dmac*, %struct.axi_dmac** %6, align 8
  %13 = load i32, i32* @AXI_DMAC_REG_IRQ_PENDING, align 4
  %14 = call i32 @axi_dmac_read(%struct.axi_dmac* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.axi_dmac*, %struct.axi_dmac** %6, align 8
  %21 = load i32, i32* @AXI_DMAC_REG_IRQ_PENDING, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @axi_dmac_write(%struct.axi_dmac* %20, i32 %21, i32 %22)
  %24 = load %struct.axi_dmac*, %struct.axi_dmac** %6, align 8
  %25 = getelementptr inbounds %struct.axi_dmac, %struct.axi_dmac* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AXI_DMAC_IRQ_EOT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = load %struct.axi_dmac*, %struct.axi_dmac** %6, align 8
  %35 = load i32, i32* @AXI_DMAC_REG_TRANSFER_DONE, align 4
  %36 = call i32 @axi_dmac_read(%struct.axi_dmac* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.axi_dmac*, %struct.axi_dmac** %6, align 8
  %38 = getelementptr inbounds %struct.axi_dmac, %struct.axi_dmac* %37, i32 0, i32 0
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @axi_dmac_transfer_done(%struct.TYPE_5__* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %33, %19
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AXI_DMAC_IRQ_SOT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %41
  %50 = load %struct.axi_dmac*, %struct.axi_dmac** %6, align 8
  %51 = getelementptr inbounds %struct.axi_dmac, %struct.axi_dmac* %50, i32 0, i32 0
  %52 = call i32 @axi_dmac_start_transfer(%struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.axi_dmac*, %struct.axi_dmac** %6, align 8
  %55 = getelementptr inbounds %struct.axi_dmac, %struct.axi_dmac* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @axi_dmac_read(%struct.axi_dmac*, i32) #1

declare dso_local i32 @axi_dmac_write(%struct.axi_dmac*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @axi_dmac_transfer_done(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @axi_dmac_start_transfer(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
