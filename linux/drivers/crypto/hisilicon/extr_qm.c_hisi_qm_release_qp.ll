; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_release_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_release_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qp = type { i64, %struct.qm_dma, %struct.hisi_qm* }
%struct.qm_dma = type { i32, i64, i32 }
%struct.hisi_qm = type { i32, i32, i32**, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_qm_release_qp(%struct.hisi_qp* %0) #0 {
  %2 = alloca %struct.hisi_qp*, align 8
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca %struct.qm_dma*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.hisi_qp* %0, %struct.hisi_qp** %2, align 8
  %6 = load %struct.hisi_qp*, %struct.hisi_qp** %2, align 8
  %7 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %6, i32 0, i32 2
  %8 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  store %struct.hisi_qm* %8, %struct.hisi_qm** %3, align 8
  %9 = load %struct.hisi_qp*, %struct.hisi_qp** %2, align 8
  %10 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %9, i32 0, i32 1
  store %struct.qm_dma* %10, %struct.qm_dma** %4, align 8
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %16 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load %struct.qm_dma*, %struct.qm_dma** %4, align 8
  %21 = getelementptr inbounds %struct.qm_dma, %struct.qm_dma* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.qm_dma*, %struct.qm_dma** %4, align 8
  %27 = getelementptr inbounds %struct.qm_dma, %struct.qm_dma* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.qm_dma*, %struct.qm_dma** %4, align 8
  %30 = getelementptr inbounds %struct.qm_dma, %struct.qm_dma* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.qm_dma*, %struct.qm_dma** %4, align 8
  %33 = getelementptr inbounds %struct.qm_dma, %struct.qm_dma* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dma_free_coherent(%struct.device* %25, i32 %28, i64 %31, i32 %34)
  br label %36

36:                                               ; preds = %24, %19, %1
  %37 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %38 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %37, i32 0, i32 0
  %39 = call i32 @write_lock(i32* %38)
  %40 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %41 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.hisi_qp*, %struct.hisi_qp** %2, align 8
  %44 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  store i32* null, i32** %46, align 8
  %47 = load %struct.hisi_qp*, %struct.hisi_qp** %2, align 8
  %48 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %51 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clear_bit(i64 %49, i32 %52)
  %54 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %55 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %54, i32 0, i32 0
  %56 = call i32 @write_unlock(i32* %55)
  %57 = load %struct.hisi_qp*, %struct.hisi_qp** %2, align 8
  %58 = call i32 @kfree(%struct.hisi_qp* %57)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.hisi_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
