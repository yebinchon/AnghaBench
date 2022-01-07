; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_continuous_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_continuous_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pbl_context = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to map pbl to DMA address\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"pbl continuous - dma_addr = %pad, size[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.pbl_context*)* @pbl_continuous_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbl_continuous_initialize(%struct.efa_dev* %0, %struct.pbl_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_dev*, align 8
  %5 = alloca %struct.pbl_context*, align 8
  %6 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %4, align 8
  store %struct.pbl_context* %1, %struct.pbl_context** %5, align 8
  %7 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %8 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %12 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %15 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_map_single(i32* %10, i32 %13, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %20 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @dma_mapping_error(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %28 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %27, i32 0, i32 0
  %29 = call i32 @ibdev_err(i32* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %35 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %39 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %38, i32 0, i32 0
  %40 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %41 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ibdev_dbg(i32* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %32, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @ibdev_err(i32*, i8*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
