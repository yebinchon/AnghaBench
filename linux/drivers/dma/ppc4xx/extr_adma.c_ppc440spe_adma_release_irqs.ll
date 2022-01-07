; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_release_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_release_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_device = type { i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ppc440spe_adma_chan = type { i32 }

@PPC440SPE_XOR_ID = common dso_local global i64 0, align 8
@XOR_IE_CBCIE_BIT = common dso_local global i32 0, align 4
@XOR_IE_ICBIE_BIT = common dso_local global i32 0, align 4
@XOR_IE_ICIE_BIT = common dso_local global i32 0, align 4
@XOR_IE_RPTIE_BIT = common dso_local global i32 0, align 4
@PPC440SPE_DMA0_ID = common dso_local global i64 0, align 8
@I2O_IOPIM_P0SNE = common dso_local global i32 0, align 4
@I2O_IOPIM_P0EM = common dso_local global i32 0, align 4
@I2O_IOPIM_P1SNE = common dso_local global i32 0, align 4
@I2O_IOPIM_P1EM = common dso_local global i32 0, align 4
@ppc440spe_adma_err_irq_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_chan*)* @ppc440spe_adma_release_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_release_irqs(%struct.ppc440spe_adma_device* %0, %struct.ppc440spe_adma_chan* %1) #0 {
  %3 = alloca %struct.ppc440spe_adma_device*, align 8
  %4 = alloca %struct.ppc440spe_adma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ppc440spe_adma_device* %0, %struct.ppc440spe_adma_device** %3, align 8
  store %struct.ppc440spe_adma_chan* %1, %struct.ppc440spe_adma_chan** %4, align 8
  %7 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %8 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PPC440SPE_XOR_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %14 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @ioread32be(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @XOR_IE_CBCIE_BIT, align 4
  %19 = load i32, i32* @XOR_IE_ICBIE_BIT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @XOR_IE_ICIE_BIT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @XOR_IE_RPTIE_BIT, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %30 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @iowrite32be(i32 %28, i32* %32)
  br label %63

34:                                               ; preds = %2
  %35 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %36 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PPC440SPE_DMA0_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @I2O_IOPIM_P0SNE, align 4
  %42 = load i32, i32* @I2O_IOPIM_P0EM, align 4
  %43 = or i32 %41, %42
  br label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @I2O_IOPIM_P1SNE, align 4
  %46 = load i32, i32* @I2O_IOPIM_P1EM, align 4
  %47 = or i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %43, %40 ], [ %47, %44 ]
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %51 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @ioread32(i32* %53)
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %59 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @iowrite32(i32 %57, i32* %61)
  br label %63

63:                                               ; preds = %48, %12
  %64 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %65 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %4, align 8
  %68 = call i32 @free_irq(i64 %66, %struct.ppc440spe_adma_chan* %67)
  %69 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %70 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @irq_dispose_mapping(i64 %71)
  %73 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %74 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %63
  %78 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %79 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %4, align 8
  %82 = call i32 @free_irq(i64 %80, %struct.ppc440spe_adma_chan* %81)
  %83 = call i64 @atomic_dec_and_test(i32* @ppc440spe_adma_err_irq_ref)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %87 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @irq_dispose_mapping(i64 %88)
  %90 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %3, align 8
  %91 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = call i32 @iounmap(%struct.TYPE_4__* %92)
  br label %94

94:                                               ; preds = %85, %77
  br label %95

95:                                               ; preds = %94, %63
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @free_irq(i64, %struct.ppc440spe_adma_chan*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @iounmap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
