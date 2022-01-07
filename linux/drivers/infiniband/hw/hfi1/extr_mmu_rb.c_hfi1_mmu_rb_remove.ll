; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_rb_handler = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.mmu_rb_node*)* }
%struct.mmu_rb_node = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_mmu_rb_remove(%struct.mmu_rb_handler* %0, %struct.mmu_rb_node* %1) #0 {
  %3 = alloca %struct.mmu_rb_handler*, align 8
  %4 = alloca %struct.mmu_rb_node*, align 8
  %5 = alloca i64, align 8
  store %struct.mmu_rb_handler* %0, %struct.mmu_rb_handler** %3, align 8
  store %struct.mmu_rb_node* %1, %struct.mmu_rb_node** %4, align 8
  %6 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %7 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %10 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @trace_hfi1_mmu_rb_remove(i32 %8, i32 %11)
  %13 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %14 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %18 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %19 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %18, i32 0, i32 3
  %20 = call i32 @__mmu_int_rb_remove(%struct.mmu_rb_node* %17, i32* %19)
  %21 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %22 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %25 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %24, i32 0, i32 2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %29 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.mmu_rb_node*)*, i32 (i32, %struct.mmu_rb_node*)** %31, align 8
  %33 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %34 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %37 = call i32 %32(i32 %35, %struct.mmu_rb_node* %36)
  ret void
}

declare dso_local i32 @trace_hfi1_mmu_rb_remove(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__mmu_int_rb_remove(%struct.mmu_rb_node*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
