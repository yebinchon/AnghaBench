; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_fill_hw_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_fill_hw_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_hw_node = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.st_fdma_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@FDMA_NODE_CTRL_SRC_INCR = common dso_local global i32 0, align 4
@FDMA_NODE_CTRL_DST_STATIC = common dso_local global i32 0, align 4
@FDMA_NODE_CTRL_SRC_STATIC = common dso_local global i32 0, align 4
@FDMA_NODE_CTRL_DST_INCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_fdma_hw_node*, %struct.st_fdma_chan*, i32)* @fill_hw_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_hw_node(%struct.st_fdma_hw_node* %0, %struct.st_fdma_chan* %1, i32 %2) #0 {
  %4 = alloca %struct.st_fdma_hw_node*, align 8
  %5 = alloca %struct.st_fdma_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.st_fdma_hw_node* %0, %struct.st_fdma_hw_node** %4, align 8
  store %struct.st_fdma_chan* %1, %struct.st_fdma_chan** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load i32, i32* @FDMA_NODE_CTRL_SRC_INCR, align 4
  %12 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %13 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @FDMA_NODE_CTRL_DST_STATIC, align 4
  %17 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %18 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %22 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %26 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  br label %44

27:                                               ; preds = %3
  %28 = load i32, i32* @FDMA_NODE_CTRL_SRC_STATIC, align 4
  %29 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %30 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @FDMA_NODE_CTRL_DST_INCR, align 4
  %34 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %35 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %39 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %43 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %27, %10
  %45 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %46 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %4, align 8
  %49 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
