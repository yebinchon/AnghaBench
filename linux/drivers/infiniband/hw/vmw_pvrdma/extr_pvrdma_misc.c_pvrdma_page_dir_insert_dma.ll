; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_insert_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_insert_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_page_dir = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_page_dir_insert_dma(%struct.pvrdma_page_dir* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvrdma_page_dir*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.pvrdma_page_dir* %0, %struct.pvrdma_page_dir** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %5, align 8
  %11 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64* @pvrdma_page_dir_table(%struct.pvrdma_page_dir* %18, i64 %19)
  store i64* %20, i64** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @PVRDMA_PAGE_DIR_PAGE(i64 %23)
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 %21, i64* %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i64* @pvrdma_page_dir_table(%struct.pvrdma_page_dir*, i64) #1

declare dso_local i64 @PVRDMA_PAGE_DIR_PAGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
