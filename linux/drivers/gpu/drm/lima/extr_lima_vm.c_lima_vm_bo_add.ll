; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_bo_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_bo_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_vm = type { i32, i32 }
%struct.lima_bo = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lima_bo_va = type { i32, %struct.TYPE_5__, i32, %struct.lima_vm* }
%struct.TYPE_5__ = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_vm_bo_add(%struct.lima_vm* %0, %struct.lima_bo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_vm*, align 8
  %6 = alloca %struct.lima_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lima_bo_va*, align 8
  %9 = alloca i32, align 4
  store %struct.lima_vm* %0, %struct.lima_vm** %5, align 8
  store %struct.lima_bo* %1, %struct.lima_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %11 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %14 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %15 = call %struct.lima_bo_va* @lima_vm_bo_find(%struct.lima_vm* %13, %struct.lima_bo* %14)
  store %struct.lima_bo_va* %15, %struct.lima_bo_va** %8, align 8
  %16 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %17 = icmp ne %struct.lima_bo_va* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %20 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %24 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 0, i32* %4, align 4
  br label %114

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %31 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %114

35:                                               ; preds = %26
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.lima_bo_va* @kzalloc(i32 40, i32 %36)
  store %struct.lima_bo_va* %37, %struct.lima_bo_va** %8, align 8
  %38 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %39 = icmp ne %struct.lima_bo_va* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %109

43:                                               ; preds = %35
  %44 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %45 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %46 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %45, i32 0, i32 3
  store %struct.lima_vm* %44, %struct.lima_vm** %46, align 8
  %47 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %48 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %50 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %53 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %52, i32 0, i32 1
  %54 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %55 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %54, i32 0, i32 1
  %56 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %57 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @drm_mm_insert_node(i32* %53, %struct.TYPE_5__* %55, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %103

64:                                               ; preds = %43
  %65 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %66 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %67 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %70 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %74 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %78 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %76, %80
  %82 = sub nsw i64 %81, 1
  %83 = call i32 @lima_vm_map_page_table(%struct.lima_vm* %65, i32 %68, i64 %72, i64 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  br label %99

87:                                               ; preds = %64
  %88 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %89 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %92 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %91, i32 0, i32 2
  %93 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %94 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %93, i32 0, i32 1
  %95 = call i32 @list_add_tail(i32* %92, i32* %94)
  %96 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %97 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 0, i32* %4, align 4
  br label %114

99:                                               ; preds = %86
  %100 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %101 = getelementptr inbounds %struct.lima_bo_va, %struct.lima_bo_va* %100, i32 0, i32 1
  %102 = call i32 @drm_mm_remove_node(%struct.TYPE_5__* %101)
  br label %103

103:                                              ; preds = %99, %63
  %104 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %105 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.lima_bo_va*, %struct.lima_bo_va** %8, align 8
  %108 = call i32 @kfree(%struct.lima_bo_va* %107)
  br label %109

109:                                              ; preds = %103, %40
  %110 = load %struct.lima_bo*, %struct.lima_bo** %6, align 8
  %111 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %87, %29, %18
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.lima_bo_va* @lima_vm_bo_find(%struct.lima_vm*, %struct.lima_bo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.lima_bo_va* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_insert_node(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @lima_vm_map_page_table(%struct.lima_vm*, i32, i64, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.lima_bo_va*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
