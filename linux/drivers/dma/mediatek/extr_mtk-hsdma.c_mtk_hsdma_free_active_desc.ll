; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_active_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_active_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_hsdma_vchan = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Desc pending still in list desc_hw_processing\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Desc pending still in list desc_completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_hsdma_free_active_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_free_active_desc(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_hsdma_vchan*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.mtk_hsdma_vchan* @to_hsdma_vchan(%struct.dma_chan* %5)
  store %struct.mtk_hsdma_vchan* %6, %struct.mtk_hsdma_vchan** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %11, i32 0, i32 2
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %26, i32 0, i32 3
  %28 = call i32 @wait_for_completion(i32* %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %30, i32 0, i32 2
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ONCE(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %37, i32 0, i32 1
  %39 = call i32 @vchan_synchronize(%struct.TYPE_2__* %38)
  %40 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ONCE(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.mtk_hsdma_vchan* @to_hsdma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @vchan_synchronize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
