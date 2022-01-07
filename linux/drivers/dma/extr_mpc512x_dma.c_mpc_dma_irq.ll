; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_dma = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MPC_DMA_DMAES_VLD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpc_dma*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mpc_dma*
  store %struct.mpc_dma* %8, %struct.mpc_dma** %5, align 8
  %9 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %10 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = call i32 @in_be32(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %15 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %14, i32 0, i32 4
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MPC_DMA_DMAES_VLD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %23 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %29 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %21, %2
  %31 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %32 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %31, i32 0, i32 4
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %35 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 32
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %41 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %42 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = call i32 @in_be32(i32* %44)
  %46 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %47 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @in_be32(i32* %49)
  %51 = call i32 @mpc_dma_irq_process(%struct.mpc_dma* %40, i32 %45, i32 %50, i32 32)
  br label %52

52:                                               ; preds = %39, %30
  %53 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %54 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %55 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @in_be32(i32* %57)
  %59 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %60 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @in_be32(i32* %62)
  %64 = call i32 @mpc_dma_irq_process(%struct.mpc_dma* %53, i32 %58, i32 %63, i32 0)
  %65 = load %struct.mpc_dma*, %struct.mpc_dma** %5, align 8
  %66 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %65, i32 0, i32 1
  %67 = call i32 @tasklet_schedule(i32* %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %68
}

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mpc_dma_irq_process(%struct.mpc_dma*, i32, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
