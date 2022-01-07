; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.owl_dma = type { i32 }
%struct.owl_dma_vchan = type { %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @owl_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.owl_dma*, align 8
  %4 = alloca %struct.owl_dma_vchan*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.owl_dma* @to_owl_dma(i32 %8)
  store %struct.owl_dma* %9, %struct.owl_dma** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = call %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan* %10)
  store %struct.owl_dma_vchan* %11, %struct.owl_dma_vchan** %4, align 8
  %12 = load i32, i32* @head, align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  %14 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %15 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %20 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %25 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %26 = call i32 @owl_dma_phy_free(%struct.owl_dma* %24, %struct.owl_dma_vchan* %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %29 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %34 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @owl_dma_desc_free(i32* %36)
  %38 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %39 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %38, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %39, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %42 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %41, i32 0, i32 0
  %43 = call i32 @vchan_get_all_descriptors(%struct.TYPE_5__* %42, i32* @head)
  %44 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %45 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %44, i32 0, i32 0
  %46 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_5__* %45, i32* @head)
  %47 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %48 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret i32 0
}

declare dso_local %struct.owl_dma* @to_owl_dma(i32) #1

declare dso_local %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_dma_phy_free(%struct.owl_dma*, %struct.owl_dma_vchan*) #1

declare dso_local i32 @owl_dma_desc_free(i32*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
