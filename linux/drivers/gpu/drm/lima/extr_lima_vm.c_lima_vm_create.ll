; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_vm = type { %struct.TYPE_2__, i32, i32, i32, %struct.lima_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lima_device = type { i32, i64, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LIMA_PAGE_SIZE = common dso_local global i64 0, align 8
@__GFP_ZERO = common dso_local global i32 0, align 4
@LIMA_VA_RESERVE_DLBU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lima_vm* @lima_vm_create(%struct.lima_device* %0) #0 {
  %2 = alloca %struct.lima_vm*, align 8
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca %struct.lima_vm*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.lima_vm* @kzalloc(i32 32, i32 %6)
  store %struct.lima_vm* %7, %struct.lima_vm** %4, align 8
  %8 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %9 = icmp ne %struct.lima_vm* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.lima_vm* null, %struct.lima_vm** %2, align 8
  br label %92

11:                                               ; preds = %1
  %12 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %13 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %14 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %13, i32 0, i32 4
  store %struct.lima_device* %12, %struct.lima_device** %14, align 8
  %15 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %16 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %15, i32 0, i32 3
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %19 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %18, i32 0, i32 2
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %22 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @LIMA_PAGE_SIZE, align 8
  %25 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %26 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @__GFP_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @dma_alloc_wc(i32 %23, i64 %24, i32* %27, i32 %30)
  %32 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %33 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %36 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %11
  br label %89

41:                                               ; preds = %11
  %42 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %43 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %48 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %49 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %48, i32 0, i32 3
  %50 = load i64, i64* @LIMA_VA_RESERVE_DLBU, align 8
  %51 = load i64, i64* @LIMA_VA_RESERVE_DLBU, align 8
  %52 = load i64, i64* @LIMA_PAGE_SIZE, align 8
  %53 = add nsw i64 %51, %52
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @lima_vm_map_page_table(%struct.lima_vm* %47, i32* %49, i64 %50, i64 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %75

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %62 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %61, i32 0, i32 1
  %63 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %64 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %67 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %70 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = call i32 @drm_mm_init(i32* %62, i64 %65, i64 %72)
  %74 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  store %struct.lima_vm* %74, %struct.lima_vm** %2, align 8
  br label %92

75:                                               ; preds = %58
  %76 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %77 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* @LIMA_PAGE_SIZE, align 8
  %80 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %81 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %85 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dma_free_wc(i32 %78, i64 %79, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %75, %40
  %90 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %91 = call i32 @kfree(%struct.lima_vm* %90)
  store %struct.lima_vm* null, %struct.lima_vm** %2, align 8
  br label %92

92:                                               ; preds = %89, %60, %10
  %93 = load %struct.lima_vm*, %struct.lima_vm** %2, align 8
  ret %struct.lima_vm* %93
}

declare dso_local %struct.lima_vm* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dma_alloc_wc(i32, i64, i32*, i32) #1

declare dso_local i32 @lima_vm_map_page_table(%struct.lima_vm*, i32*, i64, i64) #1

declare dso_local i32 @drm_mm_init(i32*, i64, i64) #1

declare dso_local i32 @dma_free_wc(i32, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.lima_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
