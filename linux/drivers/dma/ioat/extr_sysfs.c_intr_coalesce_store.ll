; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_sysfs.c_intr_coalesce_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_sysfs.c_intr_coalesce_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%du\00", align 1
@IOAT_INTRDELAY_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_chan*, i8*, i64)* @intr_coalesce_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intr_coalesce_store(%struct.dma_chan* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ioatdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %10)
  store %struct.ioatdma_chan* %11, %struct.ioatdma_chan** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @IOAT_INTRDELAY_MASK, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %9, align 8
  %28 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
