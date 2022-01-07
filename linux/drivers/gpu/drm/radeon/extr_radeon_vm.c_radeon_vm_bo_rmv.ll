; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_bo_rmv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_bo_rmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_bo_va = type { i32, i32, i32, %struct.TYPE_2__, i32, %struct.radeon_vm* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.radeon_vm = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_vm_bo_rmv(%struct.radeon_device* %0, %struct.radeon_bo_va* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_bo_va*, align 8
  %5 = alloca %struct.radeon_vm*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_bo_va* %1, %struct.radeon_bo_va** %4, align 8
  %6 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %7 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %6, i32 0, i32 5
  %8 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  store %struct.radeon_vm* %8, %struct.radeon_vm** %5, align 8
  %9 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %9, i32 0, i32 4
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20, %2
  %27 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %27, i32 0, i32 3
  %29 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %29, i32 0, i32 3
  %31 = call i32 @interval_tree_remove(%struct.TYPE_2__* %28, i32* %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %36, i32 0, i32 1
  %38 = call i32 @list_del(i32* %37)
  %39 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %46 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %44, %32
  %51 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @radeon_bo_ref(i32 %53)
  %55 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %56 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %58 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %57, i32 0, i32 1
  %59 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %59, i32 0, i32 2
  %61 = call i32 @list_add(i32* %58, i32* %60)
  br label %68

62:                                               ; preds = %44
  %63 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %64 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %63, i32 0, i32 0
  %65 = call i32 @radeon_fence_unref(i32* %64)
  %66 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %67 = call i32 @kfree(%struct.radeon_bo_va* %66)
  br label %68

68:                                               ; preds = %62, %50
  %69 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %70 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %73 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @interval_tree_remove(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radeon_bo_ref(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @radeon_fence_unref(i32*) #1

declare dso_local i32 @kfree(%struct.radeon_bo_va*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
