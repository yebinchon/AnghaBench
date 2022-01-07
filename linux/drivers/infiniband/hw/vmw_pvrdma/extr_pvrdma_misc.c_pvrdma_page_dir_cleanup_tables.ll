; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_cleanup_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_cleanup_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pvrdma_page_dir = type { i32, i32**, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvrdma_dev*, %struct.pvrdma_page_dir*)* @pvrdma_page_dir_cleanup_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvrdma_page_dir_cleanup_tables(%struct.pvrdma_dev* %0, %struct.pvrdma_page_dir* %1) #0 {
  %3 = alloca %struct.pvrdma_dev*, align 8
  %4 = alloca %struct.pvrdma_page_dir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %3, align 8
  store %struct.pvrdma_page_dir* %1, %struct.pvrdma_page_dir** %4, align 8
  %7 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %8 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = icmp ne i32** %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %13 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %14 = call i32 @pvrdma_page_dir_cleanup_pages(%struct.pvrdma_dev* %12, %struct.pvrdma_page_dir* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %47, %11
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %18 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %23 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %39 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dma_free_coherent(i32* %35, i32 %36, i32* %37, i32 %44)
  br label %46

46:                                               ; preds = %31, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %52 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = call i32 @kfree(i32** %53)
  br label %55

55:                                               ; preds = %50, %2
  ret void
}

declare dso_local i32 @pvrdma_page_dir_cleanup_pages(%struct.pvrdma_dev*, %struct.pvrdma_page_dir*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
