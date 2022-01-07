; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.t3_wq = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.cxio_ucontext = type { i32 }

@mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxio_destroy_qp(%struct.cxio_rdev* %0, %struct.t3_wq* %1, %struct.cxio_ucontext* %2) #0 {
  %4 = alloca %struct.cxio_rdev*, align 8
  %5 = alloca %struct.t3_wq*, align 8
  %6 = alloca %struct.cxio_ucontext*, align 8
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %4, align 8
  store %struct.t3_wq* %1, %struct.t3_wq** %5, align 8
  store %struct.cxio_ucontext* %2, %struct.cxio_ucontext** %6, align 8
  %7 = load %struct.cxio_rdev*, %struct.cxio_rdev** %4, align 8
  %8 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %13 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = shl i64 1, %14
  %16 = mul i64 %15, 4
  %17 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %18 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %21 = load i32, i32* @mapping, align 4
  %22 = call i32 @dma_unmap_addr(%struct.t3_wq* %20, i32 %21)
  %23 = call i32 @dma_free_coherent(i32* %11, i64 %16, i32 %19, i32 %22)
  %24 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %25 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.cxio_rdev*, %struct.cxio_rdev** %4, align 8
  %29 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %30 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %33 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = shl i64 1, %34
  %36 = call i32 @cxio_hal_rqtpool_free(%struct.cxio_rdev* %28, i32 %31, i64 %35)
  %37 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %38 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.cxio_rdev*, %struct.cxio_rdev** %4, align 8
  %42 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %43 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.cxio_ucontext*, %struct.cxio_ucontext** %6, align 8
  %46 = call i32 @put_qpid(%struct.cxio_rdev* %41, i32 %44, %struct.cxio_ucontext* %45)
  ret i32 0
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.t3_wq*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @cxio_hal_rqtpool_free(%struct.cxio_rdev*, i32, i64) #1

declare dso_local i32 @put_qpid(%struct.cxio_rdev*, i32, %struct.cxio_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
