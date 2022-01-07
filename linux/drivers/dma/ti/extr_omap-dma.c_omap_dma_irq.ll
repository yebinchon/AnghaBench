; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dmadev = type { i32, i32, %struct.TYPE_2__, %struct.omap_chan** }
%struct.TYPE_2__ = type { i32 }
%struct.omap_chan = type { i32 }

@IRQSTATUS_L1 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid channel %u\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_dmadev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_chan*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.omap_dmadev*
  store %struct.omap_dmadev* %13, %struct.omap_dmadev** %6, align 8
  %14 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %15 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %18 = load i32, i32* @IRQSTATUS_L1, align 4
  %19 = call i32 @omap_dma_glbl_read(%struct.omap_dmadev* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %21 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %29 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %62, %55, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ffs(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @BIT(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %47 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %46, i32 0, i32 3
  %48 = load %struct.omap_chan**, %struct.omap_chan*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.omap_chan*, %struct.omap_chan** %48, i64 %50
  %52 = load %struct.omap_chan*, %struct.omap_chan** %51, align 8
  store %struct.omap_chan* %52, %struct.omap_chan** %11, align 8
  %53 = load %struct.omap_chan*, %struct.omap_chan** %11, align 8
  %54 = icmp eq %struct.omap_chan* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %37
  %56 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %57 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %33

62:                                               ; preds = %37
  %63 = load %struct.omap_chan*, %struct.omap_chan** %11, align 8
  %64 = call i32 @omap_dma_get_csr(%struct.omap_chan* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %66 = load i32, i32* @IRQSTATUS_L1, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @omap_dma_glbl_write(%struct.omap_dmadev* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.omap_chan*, %struct.omap_chan** %11, align 8
  %72 = call i32 @omap_dma_callback(i32 %69, i32 %70, %struct.omap_chan* %71)
  br label %33

73:                                               ; preds = %33
  %74 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %75 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %27
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @omap_dma_glbl_read(%struct.omap_dmadev*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @omap_dma_get_csr(%struct.omap_chan*) #1

declare dso_local i32 @omap_dma_glbl_write(%struct.omap_dmadev*, i32, i32) #1

declare dso_local i32 @omap_dma_callback(i32, i32, %struct.omap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
