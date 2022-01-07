; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.t3_cq = type { i64, i32, i32, i32 }

@mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxio_destroy_cq(%struct.cxio_rdev* %0, %struct.t3_cq* %1) #0 {
  %3 = alloca %struct.cxio_rdev*, align 8
  %4 = alloca %struct.t3_cq*, align 8
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %3, align 8
  store %struct.t3_cq* %1, %struct.t3_cq** %4, align 8
  %5 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %6 = load %struct.t3_cq*, %struct.t3_cq** %4, align 8
  %7 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @cxio_hal_clear_cq_ctx(%struct.cxio_rdev* %5, i32 %8)
  %10 = load %struct.t3_cq*, %struct.t3_cq** %4, align 8
  %11 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @kfree(i32 %12)
  %14 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %15 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.t3_cq*, %struct.t3_cq** %4, align 8
  %20 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = shl i64 1, %21
  %23 = mul i64 %22, 4
  %24 = add i64 %23, 1
  %25 = load %struct.t3_cq*, %struct.t3_cq** %4, align 8
  %26 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.t3_cq*, %struct.t3_cq** %4, align 8
  %29 = load i32, i32* @mapping, align 4
  %30 = call i32 @dma_unmap_addr(%struct.t3_cq* %28, i32 %29)
  %31 = call i32 @dma_free_coherent(i32* %18, i64 %24, i32 %27, i32 %30)
  %32 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %33 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.t3_cq*, %struct.t3_cq** %4, align 8
  %36 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @cxio_hal_put_cqid(i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @cxio_hal_clear_cq_ctx(%struct.cxio_rdev*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.t3_cq*, i32) #1

declare dso_local i32 @cxio_hal_put_cqid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
