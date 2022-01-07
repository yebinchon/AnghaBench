; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma.h_pvrdma_page_dir_get_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma.h_pvrdma_page_dir_get_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_page_dir = type { i8** }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pvrdma_page_dir*, i64)* @pvrdma_page_dir_get_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pvrdma_page_dir_get_ptr(%struct.pvrdma_page_dir* %0, i64 %1) #0 {
  %3 = alloca %struct.pvrdma_page_dir*, align 8
  %4 = alloca i64, align 8
  store %struct.pvrdma_page_dir* %0, %struct.pvrdma_page_dir** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %3, align 8
  %6 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %5, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = udiv i64 %8, %9
  %11 = getelementptr inbounds i8*, i8** %7, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = urem i64 %13, %14
  %16 = getelementptr i8, i8* %12, i64 %15
  ret i8* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
