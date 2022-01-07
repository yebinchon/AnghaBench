; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_tasklet_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_tasklet_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cqdma_pchan = type { i32, i32 }
%struct.mtk_cqdma_vdesc = type { %struct.mtk_cqdma_vdesc*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mtk_cqdma_tasklet_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cqdma_tasklet_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mtk_cqdma_pchan*, align 8
  %4 = alloca %struct.mtk_cqdma_vdesc*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.mtk_cqdma_pchan*
  store %struct.mtk_cqdma_pchan* %7, %struct.mtk_cqdma_pchan** %3, align 8
  store %struct.mtk_cqdma_vdesc* null, %struct.mtk_cqdma_vdesc** %4, align 8
  %8 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %13 = call %struct.mtk_cqdma_vdesc* @mtk_cqdma_consume_work_queue(%struct.mtk_cqdma_pchan* %12)
  store %struct.mtk_cqdma_vdesc* %13, %struct.mtk_cqdma_vdesc** %4, align 8
  %14 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %19 = icmp ne %struct.mtk_cqdma_vdesc* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dma_run_dependencies(i32* %23)
  %25 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %25, i32 0, i32 0
  %27 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %26, align 8
  %28 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %29 = icmp ne %struct.mtk_cqdma_vdesc* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %32 = call i32 @kfree(%struct.mtk_cqdma_vdesc* %31)
  br label %33

33:                                               ; preds = %30, %20
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @enable_irq(i32 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mtk_cqdma_vdesc* @mtk_cqdma_consume_work_queue(%struct.mtk_cqdma_pchan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_run_dependencies(i32*) #1

declare dso_local i32 @kfree(%struct.mtk_cqdma_vdesc*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
