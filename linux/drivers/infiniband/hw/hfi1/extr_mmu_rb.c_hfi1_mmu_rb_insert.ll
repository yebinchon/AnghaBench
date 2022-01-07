; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_rb_handler = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.mmu_rb_node*)* }
%struct.mmu_rb_node = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_mmu_rb_insert(%struct.mmu_rb_handler* %0, %struct.mmu_rb_node* %1) #0 {
  %3 = alloca %struct.mmu_rb_handler*, align 8
  %4 = alloca %struct.mmu_rb_node*, align 8
  %5 = alloca %struct.mmu_rb_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mmu_rb_handler* %0, %struct.mmu_rb_handler** %3, align 8
  store %struct.mmu_rb_node* %1, %struct.mmu_rb_node** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %9 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %12 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_hfi1_mmu_rb_insert(i32 %10, i32 %13)
  %15 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %16 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %20 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %21 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %24 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.mmu_rb_node* @__mmu_rb_search(%struct.mmu_rb_handler* %19, i32 %22, i32 %25)
  store %struct.mmu_rb_node* %26, %struct.mmu_rb_node** %5, align 8
  %27 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %5, align 8
  %28 = icmp ne %struct.mmu_rb_node* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %63

32:                                               ; preds = %2
  %33 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %34 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %35 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %34, i32 0, i32 1
  %36 = call i32 @__mmu_int_rb_insert(%struct.mmu_rb_node* %33, i32* %35)
  %37 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %38 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %37, i32 0, i32 0
  %39 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %40 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %39, i32 0, i32 4
  %41 = call i32 @list_add(i32* %38, i32* %40)
  %42 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %43 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (i32, %struct.mmu_rb_node*)*, i32 (i32, %struct.mmu_rb_node*)** %45, align 8
  %47 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %48 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %51 = call i32 %46(i32 %49, %struct.mmu_rb_node* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %32
  %55 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %56 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %57 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %56, i32 0, i32 1
  %58 = call i32 @__mmu_int_rb_remove(%struct.mmu_rb_node* %55, i32* %57)
  %59 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  %60 = getelementptr inbounds %struct.mmu_rb_node, %struct.mmu_rb_node* %59, i32 0, i32 0
  %61 = call i32 @list_del(i32* %60)
  br label %62

62:                                               ; preds = %54, %32
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %3, align 8
  %65 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @trace_hfi1_mmu_rb_insert(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mmu_rb_node* @__mmu_rb_search(%struct.mmu_rb_handler*, i32, i32) #1

declare dso_local i32 @__mmu_int_rb_insert(%struct.mmu_rb_node*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__mmu_int_rb_remove(%struct.mmu_rb_node*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
