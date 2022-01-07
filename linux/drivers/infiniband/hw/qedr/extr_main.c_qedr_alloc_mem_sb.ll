; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_alloc_mem_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_alloc_mem_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.qed_sb_info*, %struct.status_block_e4*, i32, i32, i32)* }
%struct.status_block_e4 = type { i32 }
%struct.qed_sb_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_SB_TYPE_CNQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Status block initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qed_sb_info*, i32)* @qedr_alloc_mem_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_alloc_mem_sb(%struct.qedr_dev* %0, %struct.qed_sb_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.qed_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.status_block_e4*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.qed_sb_info* %1, %struct.qed_sb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %12 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.status_block_e4* @dma_alloc_coherent(i32* %14, i32 4, i32* %9, i32 %15)
  store %struct.status_block_e4* %16, %struct.status_block_e4** %8, align 8
  %17 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %18 = icmp ne %struct.status_block_e4* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %24 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.qed_sb_info*, %struct.status_block_e4*, i32, i32, i32)*, i32 (i32, %struct.qed_sb_info*, %struct.status_block_e4*, i32, i32, i32)** %28, align 8
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %31 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %34 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @QED_SB_TYPE_CNQ, align 4
  %38 = call i32 %29(i32 %32, %struct.qed_sb_info* %33, %struct.status_block_e4* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %22
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %44 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dma_free_coherent(i32* %46, i32 4, %struct.status_block_e4* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %41, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.status_block_e4* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.status_block_e4*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
