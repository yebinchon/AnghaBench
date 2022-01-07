; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_free_active_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_free_active_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_cqdma_vchan = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Desc pending still in list desc_completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_cqdma_free_active_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cqdma_free_active_desc(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_cqdma_vchan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan* %7)
  store %struct.mtk_cqdma_vchan* %8, %struct.mtk_cqdma_vchan** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %21 = call i64 @mtk_cqdma_is_vchan_active(%struct.mtk_cqdma_vchan* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %42 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %41, i32 0, i32 2
  %43 = call i32 @wait_for_completion(i32* %42)
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %46 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %45, i32 0, i32 1
  %47 = call i32 @vchan_synchronize(%struct.TYPE_4__* %46)
  %48 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @list_empty(i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ONCE(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mtk_cqdma_is_vchan_active(%struct.mtk_cqdma_vchan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @vchan_synchronize(%struct.TYPE_4__*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
