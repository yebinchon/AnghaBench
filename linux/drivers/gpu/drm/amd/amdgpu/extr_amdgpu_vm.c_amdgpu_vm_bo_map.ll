; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo_va = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_vm*, %struct.amdgpu_bo* }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_va_mapping = type { i64, i64, i64, i64 }

@AMDGPU_GPU_PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"bo %p va 0x%010Lx-0x%010Lx conflict with 0x%010Lx-0x%010Lx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vm_bo_map(%struct.amdgpu_device* %0, %struct.amdgpu_bo_va* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_bo_va*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %15 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %16 = alloca %struct.amdgpu_bo*, align 8
  %17 = alloca %struct.amdgpu_vm*, align 8
  %18 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_bo_va* %1, %struct.amdgpu_bo_va** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  store %struct.amdgpu_bo* %22, %struct.amdgpu_bo** %16, align 8
  %23 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %25, align 8
  store %struct.amdgpu_vm* %26, %struct.amdgpu_vm** %17, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @AMDGPU_GPU_PAGE_MASK, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @AMDGPU_GPU_PAGE_MASK, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @AMDGPU_GPU_PAGE_MASK, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %36, %31, %6
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %124

47:                                               ; preds = %39
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %48, %49
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %18, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %16, align 8
  %57 = icmp ne %struct.amdgpu_bo* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %16, align 8
  %63 = call i64 @amdgpu_bo_size(%struct.amdgpu_bo* %62)
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58, %47
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %124

68:                                               ; preds = %58, %55
  %69 = load i64, i64* @AMDGPU_GPU_PAGE_SIZE, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sdiv i64 %70, %69
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* @AMDGPU_GPU_PAGE_SIZE, align 8
  %73 = load i64, i64* %18, align 8
  %74 = sdiv i64 %73, %72
  store i64 %74, i64* %18, align 8
  %75 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %17, align 8
  %76 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %75, i32 0, i32 0
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call %struct.amdgpu_bo_va_mapping* @amdgpu_vm_it_iter_first(i32* %76, i64 %77, i64 %78)
  store %struct.amdgpu_bo_va_mapping* %79, %struct.amdgpu_bo_va_mapping** %15, align 8
  %80 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %81 = icmp ne %struct.amdgpu_bo_va_mapping* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %68
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %16, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %90 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %93 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.amdgpu_bo* %86, i64 %87, i64 %88, i64 %91, i64 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %124

99:                                               ; preds = %68
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.amdgpu_bo_va_mapping* @kmalloc(i32 32, i32 %100)
  store %struct.amdgpu_bo_va_mapping* %101, %struct.amdgpu_bo_va_mapping** %14, align 8
  %102 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %103 = icmp ne %struct.amdgpu_bo_va_mapping* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %124

107:                                              ; preds = %99
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %110 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %113 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %116 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %119 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %121 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %122 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %123 = call i32 @amdgpu_vm_bo_insert_map(%struct.amdgpu_device* %120, %struct.amdgpu_bo_va* %121, %struct.amdgpu_bo_va_mapping* %122)
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %107, %104, %82, %65, %44
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i64 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local %struct.amdgpu_bo_va_mapping* @amdgpu_vm_it_iter_first(i32*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.amdgpu_bo*, i64, i64, i64, i64) #1

declare dso_local %struct.amdgpu_bo_va_mapping* @kmalloc(i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_insert_map(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
