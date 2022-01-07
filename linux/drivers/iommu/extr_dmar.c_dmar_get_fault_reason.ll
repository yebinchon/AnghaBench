; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_get_fault_reason.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_get_fault_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irq_remap_fault_reasons = common dso_local global i8** null, align 8
@INTR_REMAP = common dso_local global i32 0, align 4
@dma_remap_sm_fault_reasons = common dso_local global i8** null, align 8
@DMA_REMAP = common dso_local global i32 0, align 4
@dma_remap_fault_reasons = common dso_local global i8** null, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @dmar_get_fault_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dmar_get_fault_reason(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 32
  %11 = load i8**, i8*** @irq_remap_fault_reasons, align 8
  %12 = call i32 @ARRAY_SIZE(i8** %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load i32, i32* @INTR_REMAP, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i8**, i8*** @irq_remap_fault_reasons, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %3, align 8
  br label %57

23:                                               ; preds = %8, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 48
  %29 = load i8**, i8*** @dma_remap_sm_fault_reasons, align 8
  %30 = call i32 @ARRAY_SIZE(i8** %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @DMA_REMAP, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i8**, i8*** @dma_remap_sm_fault_reasons, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 48
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %3, align 8
  br label %57

41:                                               ; preds = %26, %23
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** @dma_remap_fault_reasons, align 8
  %44 = call i32 @ARRAY_SIZE(i8** %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32, i32* @DMA_REMAP, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8**, i8*** @dma_remap_fault_reasons, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %3, align 8
  br label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @UNKNOWN, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %57

57:                                               ; preds = %54, %46, %32, %14
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
