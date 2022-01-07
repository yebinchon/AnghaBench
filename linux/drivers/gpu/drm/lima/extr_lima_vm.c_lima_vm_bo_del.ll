; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_bo_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_bo_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_vm = type { i32 }
%struct.lima_bo = type { i32 }
%struct.lima_bo_va = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lima_vm_bo_del(%struct.lima_vm* %0, %struct.lima_bo* %1) #0 {
  %3 = alloca %struct.lima_vm*, align 8
  %4 = alloca %struct.lima_bo*, align 8
  %5 = alloca %struct.lima_bo_va*, align 8
  store %struct.lima_vm* %0, %struct.lima_vm** %3, align 8
  store %struct.lima_bo* %1, %struct.lima_bo** %4, align 8
  %6 = load %struct.lima_bo*, %struct.lima_bo** %4, align 8
  %7 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.lima_vm*, %struct.lima_vm** %3, align 8
  %10 = load %struct.lima_bo*, %struct.lima_bo** %4, align 8
  %11 = call %struct.lima_bo_va* @lima_vm_bo_find(%struct.lima_vm* %9, %struct.lima_bo* %10)
  store %struct.lima_bo_va* %11, %struct.lima_bo_va** %5, align 8
  %12 = load %struct.lima_bo_va*, %struct.lima_bo_va** %5, align 8
  %13 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.lima_bo*, %struct.lima_bo** %4, align 8
  %19 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.lima_vm*, %struct.lima_vm** %3, align 8
  %23 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.lima_vm*, %struct.lima_vm** %3, align 8
  %26 = load %struct.lima_bo_va*, %struct.lima_bo_va** %5, align 8
  %27 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lima_bo_va*, %struct.lima_bo_va** %5, align 8
  %31 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.lima_bo_va*, %struct.lima_bo_va** %5, align 8
  %35 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @lima_vm_unmap_page_table(%struct.lima_vm* %25, i64 %29, i64 %39)
  %41 = load %struct.lima_bo_va*, %struct.lima_bo_va** %5, align 8
  %42 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %41, i32 0, i32 2
  %43 = call i32 @drm_mm_remove_node(%struct.TYPE_2__* %42)
  %44 = load %struct.lima_vm*, %struct.lima_vm** %3, align 8
  %45 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.lima_bo_va*, %struct.lima_bo_va** %5, align 8
  %48 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %47, i32 0, i32 1
  %49 = call i32 @list_del(i32* %48)
  %50 = load %struct.lima_bo*, %struct.lima_bo** %4, align 8
  %51 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.lima_bo_va*, %struct.lima_bo_va** %5, align 8
  %54 = call i32 @kfree(%struct.lima_bo_va* %53)
  br label %55

55:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.lima_bo_va* @lima_vm_bo_find(%struct.lima_vm*, %struct.lima_bo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lima_vm_unmap_page_table(%struct.lima_vm*, i64, i64) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.lima_bo_va*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
