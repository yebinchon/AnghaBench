; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_chunk_list_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_chunk_list_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pbl_context = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.pbl_chunk_list }
%struct.pbl_chunk_list = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efa_dev*, %struct.pbl_context*)* @pbl_chunk_list_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pbl_chunk_list_destroy(%struct.efa_dev* %0, %struct.pbl_context* %1) #0 {
  %3 = alloca %struct.efa_dev*, align 8
  %4 = alloca %struct.pbl_context*, align 8
  %5 = alloca %struct.pbl_chunk_list*, align 8
  %6 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %3, align 8
  store %struct.pbl_context* %1, %struct.pbl_context** %4, align 8
  %7 = load %struct.pbl_context*, %struct.pbl_context** %4, align 8
  %8 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.pbl_chunk_list* %10, %struct.pbl_chunk_list** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %49, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.pbl_chunk_list*, %struct.pbl_chunk_list** %5, align 8
  %14 = getelementptr inbounds %struct.pbl_chunk_list, %struct.pbl_chunk_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %19 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.pbl_chunk_list*, %struct.pbl_chunk_list** %5, align 8
  %23 = getelementptr inbounds %struct.pbl_chunk_list, %struct.pbl_chunk_list* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pbl_chunk_list*, %struct.pbl_chunk_list** %5, align 8
  %31 = getelementptr inbounds %struct.pbl_chunk_list, %struct.pbl_chunk_list* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(i32* %21, i32 %29, i32 %37, i32 %38)
  %40 = load %struct.pbl_chunk_list*, %struct.pbl_chunk_list** %5, align 8
  %41 = getelementptr inbounds %struct.pbl_chunk_list, %struct.pbl_chunk_list* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i32 @kfree(%struct.TYPE_8__* %47)
  br label %49

49:                                               ; preds = %17
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.pbl_chunk_list*, %struct.pbl_chunk_list** %5, align 8
  %54 = getelementptr inbounds %struct.pbl_chunk_list, %struct.pbl_chunk_list* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32 @kfree(%struct.TYPE_8__* %55)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
