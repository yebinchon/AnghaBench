; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_cleanup_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_cleanup_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pvrdma_page_dir = type { i64, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvrdma_dev*, %struct.pvrdma_page_dir*)* @pvrdma_page_dir_cleanup_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvrdma_page_dir_cleanup_pages(%struct.pvrdma_dev* %0, %struct.pvrdma_page_dir* %1) #0 {
  %3 = alloca %struct.pvrdma_dev*, align 8
  %4 = alloca %struct.pvrdma_page_dir*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %3, align 8
  store %struct.pvrdma_page_dir* %1, %struct.pvrdma_page_dir** %4, align 8
  %7 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %8 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %45, %11
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %15 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %20 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %18, %12
  %27 = phi i1 [ false, %12 ], [ %25, %18 ]
  br i1 %27, label %28, label %48

28:                                               ; preds = %26
  %29 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @pvrdma_page_dir_get_dma(%struct.pvrdma_page_dir* %29, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %38 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dma_free_coherent(i32* %35, i32 %36, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %12

48:                                               ; preds = %26
  %49 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %50 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @kfree(i64* %51)
  br label %53

53:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @pvrdma_page_dir_get_dma(%struct.pvrdma_page_dir*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
