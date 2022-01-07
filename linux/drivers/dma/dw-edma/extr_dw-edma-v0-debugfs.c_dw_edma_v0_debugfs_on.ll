; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_v0_debugfs_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_v0_debugfs_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dw_edma_chip = type { %struct.TYPE_4__* }

@dw = common dso_local global %struct.TYPE_4__* null, align 8
@regs = common dso_local global i32 0, align 4
@base_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"wr_ch_cnt\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rd_ch_cnt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_edma_v0_debugfs_on(%struct.dw_edma_chip* %0) #0 {
  %2 = alloca %struct.dw_edma_chip*, align 8
  store %struct.dw_edma_chip* %0, %struct.dw_edma_chip** %2, align 8
  %3 = load %struct.dw_edma_chip*, %struct.dw_edma_chip** %2, align 8
  %4 = getelementptr inbounds %struct.dw_edma_chip, %struct.dw_edma_chip* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** @dw, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dw, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dw, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @regs, align 4
  %14 = load i32, i32* @regs, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %43

17:                                               ; preds = %9
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dw, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @debugfs_create_dir(i32 %20, i32 0)
  store i32 %21, i32* @base_dir, align 4
  %22 = load i32, i32* @base_dir, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %43

25:                                               ; preds = %17
  %26 = load i32, i32* @base_dir, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dw, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 292, i32 %26, i32* %28)
  %30 = load i32, i32* @base_dir, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dw, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %30, i32* %32)
  %34 = load i32, i32* @base_dir, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dw, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %34, i32* %36)
  %38 = load i32, i32* @base_dir, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dw, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %38, i32* %40)
  %42 = call i32 (...) @dw_edma_debugfs_regs()
  br label %43

43:                                               ; preds = %25, %24, %16, %8
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_u16(i8*, i32, i32, i32*) #1

declare dso_local i32 @dw_edma_debugfs_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
