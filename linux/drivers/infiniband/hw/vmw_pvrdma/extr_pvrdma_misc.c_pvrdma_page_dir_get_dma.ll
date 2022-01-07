; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_get_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_get_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_page_dir = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_page_dir_get_dma(%struct.pvrdma_page_dir* %0, i32 %1) #0 {
  %3 = alloca %struct.pvrdma_page_dir*, align 8
  %4 = alloca i32, align 4
  store %struct.pvrdma_page_dir* %0, %struct.pvrdma_page_dir** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32* @pvrdma_page_dir_table(%struct.pvrdma_page_dir* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @PVRDMA_PAGE_DIR_PAGE(i32 %8)
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  ret i32 %11
}

declare dso_local i32* @pvrdma_page_dir_table(%struct.pvrdma_page_dir*, i32) #1

declare dso_local i64 @PVRDMA_PAGE_DIR_PAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
