; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_get_pchan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_get_pchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_dma_pchan = type { i32, %struct.owl_dma_vchan* }
%struct.owl_dma = type { i32, %struct.owl_dma_pchan* }
%struct.owl_dma_vchan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.owl_dma_pchan* (%struct.owl_dma*, %struct.owl_dma_vchan*)* @owl_dma_get_pchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.owl_dma_pchan* @owl_dma_get_pchan(%struct.owl_dma* %0, %struct.owl_dma_vchan* %1) #0 {
  %3 = alloca %struct.owl_dma*, align 8
  %4 = alloca %struct.owl_dma_vchan*, align 8
  %5 = alloca %struct.owl_dma_pchan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.owl_dma* %0, %struct.owl_dma** %3, align 8
  store %struct.owl_dma_vchan* %1, %struct.owl_dma_vchan** %4, align 8
  store %struct.owl_dma_pchan* null, %struct.owl_dma_pchan** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %11 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %16 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %15, i32 0, i32 1
  %17 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %17, i64 %19
  store %struct.owl_dma_pchan* %20, %struct.owl_dma_pchan** %5, align 8
  %21 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %5, align 8
  %22 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %5, align 8
  %26 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %25, i32 0, i32 1
  %27 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %26, align 8
  %28 = icmp ne %struct.owl_dma_vchan* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %14
  %30 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %31 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %5, align 8
  %32 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %31, i32 0, i32 1
  store %struct.owl_dma_vchan* %30, %struct.owl_dma_vchan** %32, align 8
  %33 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %5, align 8
  %34 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %45

37:                                               ; preds = %14
  %38 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %5, align 8
  %39 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %8

45:                                               ; preds = %29, %8
  %46 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %5, align 8
  ret %struct.owl_dma_pchan* %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
