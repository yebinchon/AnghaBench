; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_replace_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_replace_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo_va = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_va_mapping = type { i64, i64, i64, i64 }

@AMDGPU_GPU_PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vm_bo_replace_map(%struct.amdgpu_device* %0, %struct.amdgpu_bo_va* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_bo_va*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %15 = alloca %struct.amdgpu_bo*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_bo_va* %1, %struct.amdgpu_bo_va** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %19 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  store %struct.amdgpu_bo* %21, %struct.amdgpu_bo** %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @AMDGPU_GPU_PAGE_MASK, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %6
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @AMDGPU_GPU_PAGE_MASK, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %12, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @AMDGPU_GPU_PAGE_MASK, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %31, %26, %6
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %109

42:                                               ; preds = %34
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %43, %44
  %46 = sub nsw i64 %45, 1
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %52 = icmp ne %struct.amdgpu_bo* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %58 = call i64 @amdgpu_bo_size(%struct.amdgpu_bo* %57)
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %42
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %109

63:                                               ; preds = %53, %50
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.amdgpu_bo_va_mapping* @kmalloc(i32 32, i32 %64)
  store %struct.amdgpu_bo_va_mapping* %65, %struct.amdgpu_bo_va_mapping** %14, align 8
  %66 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %67 = icmp ne %struct.amdgpu_bo_va_mapping* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %109

71:                                               ; preds = %63
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %73 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %74 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @amdgpu_vm_bo_clear_mappings(%struct.amdgpu_device* %72, i32 %76, i64 %77, i64 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %84 = call i32 @kfree(%struct.amdgpu_bo_va_mapping* %83)
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %7, align 4
  br label %109

86:                                               ; preds = %71
  %87 = load i64, i64* @AMDGPU_GPU_PAGE_SIZE, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sdiv i64 %88, %87
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* @AMDGPU_GPU_PAGE_SIZE, align 8
  %91 = load i64, i64* %16, align 8
  %92 = sdiv i64 %91, %90
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %95 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %98 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %101 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %104 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %106 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %107 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %108 = call i32 @amdgpu_vm_bo_insert_map(%struct.amdgpu_device* %105, %struct.amdgpu_bo_va* %106, %struct.amdgpu_bo_va_mapping* %107)
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %86, %82, %68, %60, %39
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i64 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local %struct.amdgpu_bo_va_mapping* @kmalloc(i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_clear_mappings(%struct.amdgpu_device*, i32, i64, i64) #1

declare dso_local i32 @kfree(%struct.amdgpu_bo_va_mapping*) #1

declare dso_local i32 @amdgpu_vm_bo_insert_map(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
