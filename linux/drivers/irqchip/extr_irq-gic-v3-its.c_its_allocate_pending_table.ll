; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_allocate_pending_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_allocate_pending_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@LPI_PENDBASE_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32)* @its_allocate_pending_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @its_allocate_pending_table(i32 %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @__GFP_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @LPI_PENDBASE_SZ, align 4
  %9 = call i32 @get_order(i32 %8)
  %10 = call %struct.page* @alloc_pages(i32 %7, i32 %9)
  store %struct.page* %10, %struct.page** %4, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @page_address(%struct.page* %15)
  %17 = load i32, i32* @LPI_PENDBASE_SZ, align 4
  %18 = call i32 @gic_flush_dcache_to_poc(i32 %16, i32 %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %19, %struct.page** %2, align 8
  br label %20

20:                                               ; preds = %14, %13
  %21 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %21
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @gic_flush_dcache_to_poc(i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
