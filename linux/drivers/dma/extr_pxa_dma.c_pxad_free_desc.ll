; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_free_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_free_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { i32 }
%struct.pxad_desc_sw = type { i32, %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @pxad_free_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxad_free_desc(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxad_desc_sw*, align 8
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %6 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %7 = call %struct.pxad_desc_sw* @to_pxad_sw_desc(%struct.virt_dma_desc* %6)
  store %struct.pxad_desc_sw* %7, %struct.pxad_desc_sw** %5, align 8
  %8 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %9 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %15 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %52, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %26 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %21
  %36 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %37 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %41 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %44 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dma_pool_free(i32 %42, %struct.TYPE_2__* %49, i32 %50)
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %3, align 4
  br label %18

55:                                               ; preds = %18
  %56 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %57 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %59 = call i32 @kfree(%struct.pxad_desc_sw* %58)
  ret void
}

declare dso_local %struct.pxad_desc_sw* @to_pxad_sw_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @kfree(%struct.pxad_desc_sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
