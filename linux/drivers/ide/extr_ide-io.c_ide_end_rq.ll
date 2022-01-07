; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_end_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_end_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.request* }
%struct.request = type { i32 }

@IDE_DFLAG_DMA_PIO_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_end_rq(%struct.TYPE_4__* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IDE_DFLAG_DMA_PIO_RETRY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 3
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* @IDE_DFLAG_DMA_PIO_RETRY, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = call i32 @ide_dma_on(%struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %21, %16, %4
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @blk_update_request(%struct.request* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %30
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load %struct.request*, %struct.request** %39, align 8
  %41 = icmp eq %struct.request* %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store %struct.request* null, %struct.request** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.request*, %struct.request** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @__blk_mq_end_request(%struct.request* %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %52

51:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @ide_dma_on(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_update_request(%struct.request*, i32, i32) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
