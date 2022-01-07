; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pvrdma_page_dir = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvrdma_page_dir_cleanup(%struct.pvrdma_dev* %0, %struct.pvrdma_page_dir* %1) #0 {
  %3 = alloca %struct.pvrdma_dev*, align 8
  %4 = alloca %struct.pvrdma_page_dir*, align 8
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %3, align 8
  store %struct.pvrdma_page_dir* %1, %struct.pvrdma_page_dir** %4, align 8
  %5 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %6 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %11 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %12 = call i32 @pvrdma_page_dir_cleanup_tables(%struct.pvrdma_dev* %10, %struct.pvrdma_page_dir* %11)
  %13 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %19 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %4, align 8
  %22 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %16, i32 %17, i64 %20, i32 %23)
  br label %25

25:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @pvrdma_page_dir_cleanup_tables(%struct.pvrdma_dev*, %struct.pvrdma_page_dir*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
