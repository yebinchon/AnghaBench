; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.owl_dma_vchan = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"vchan %p: resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @owl_dma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_dma_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.owl_dma_vchan*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan* %6)
  store %struct.owl_dma_vchan* %7, %struct.owl_dma_vchan** %4, align 8
  %8 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %9 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %14 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %38

18:                                               ; preds = %12, %1
  %19 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %20 = call i32 @chan2dev(%struct.dma_chan* %19)
  %21 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %22 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %21, i32 0, i32 0
  %23 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %22)
  %24 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %25 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %30 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @owl_dma_resume_pchan(i32 %31)
  %33 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %4, align 8
  %34 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %18, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_dma_resume_pchan(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
