; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.efa_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.efa_cq = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Destroy cq[%d] virt[0x%p] freed: size[%lu], dma[%pad]\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efa_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.efa_dev*, align 8
  %6 = alloca %struct.efa_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %8 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.efa_dev* @to_edev(i32 %9)
  store %struct.efa_dev* %10, %struct.efa_dev** %5, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %12 = call %struct.efa_cq* @to_ecq(%struct.ib_cq* %11)
  store %struct.efa_cq* %12, %struct.efa_cq** %6, align 8
  %13 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %14 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %13, i32 0, i32 1
  %15 = load %struct.efa_cq*, %struct.efa_cq** %6, align 8
  %16 = getelementptr inbounds %struct.efa_cq, %struct.efa_cq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.efa_cq*, %struct.efa_cq** %6, align 8
  %19 = getelementptr inbounds %struct.efa_cq, %struct.efa_cq* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.efa_cq*, %struct.efa_cq** %6, align 8
  %22 = getelementptr inbounds %struct.efa_cq, %struct.efa_cq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.efa_cq*, %struct.efa_cq** %6, align 8
  %25 = getelementptr inbounds %struct.efa_cq, %struct.efa_cq* %24, i32 0, i32 1
  %26 = call i32 @ibdev_dbg(i32* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32* %25)
  %27 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %28 = load %struct.efa_cq*, %struct.efa_cq** %6, align 8
  %29 = getelementptr inbounds %struct.efa_cq, %struct.efa_cq* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @efa_destroy_cq_idx(%struct.efa_dev* %27, i32 %30)
  %32 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %33 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.efa_cq*, %struct.efa_cq** %6, align 8
  %37 = getelementptr inbounds %struct.efa_cq, %struct.efa_cq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.efa_cq*, %struct.efa_cq** %6, align 8
  %40 = getelementptr inbounds %struct.efa_cq, %struct.efa_cq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32* %35, i32 %38, i32 %41, i32 %42)
  ret void
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

declare dso_local %struct.efa_cq* @to_ecq(%struct.ib_cq*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @efa_destroy_cq_idx(%struct.efa_dev*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
