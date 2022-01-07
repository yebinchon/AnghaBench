; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_remove_unless_exact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_remove_unless_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_rb_handler = type { i32, i32 }
%struct.mmu_rb_node = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_mmu_rb_remove_unless_exact(%struct.mmu_rb_handler* %0, i64 %1, i64 %2, %struct.mmu_rb_node** %3) #0 {
  %5 = alloca %struct.mmu_rb_handler*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mmu_rb_node**, align 8
  %9 = alloca %struct.mmu_rb_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mmu_rb_handler* %0, %struct.mmu_rb_handler** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mmu_rb_node** %3, %struct.mmu_rb_node*** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %13 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %12, i32 0, i32 0
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.mmu_rb_node* @__mmu_rb_search(%struct.mmu_rb_handler* %16, i64 %17, i64 %18)
  store %struct.mmu_rb_node* %19, %struct.mmu_rb_node** %9, align 8
  %20 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %9, align 8
  %21 = icmp ne %struct.mmu_rb_node* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %4
  %23 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %9, align 8
  %24 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %9, align 8
  %30 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %44

35:                                               ; preds = %28, %22
  %36 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %9, align 8
  %37 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %38 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %37, i32 0, i32 1
  %39 = call i32 @__mmu_int_rb_remove(%struct.mmu_rb_node* %36, i32* %38)
  %40 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %9, align 8
  %41 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %40, i32 0, i32 2
  %42 = call i32 @list_del(i32* %41)
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %35, %4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %46 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %45, i32 0, i32 0
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %9, align 8
  %50 = load %struct.mmu_rb_node**, %struct.mmu_rb_node*** %8, align 8
  store %struct.mmu_rb_node* %49, %struct.mmu_rb_node** %50, align 8
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mmu_rb_node* @__mmu_rb_search(%struct.mmu_rb_handler*, i64, i64) #1

declare dso_local i32 @__mmu_int_rb_remove(%struct.mmu_rb_node*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
