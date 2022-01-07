; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_add_bo_to_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_add_bo_to_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kgd_mem = type { i32, %struct.list_head, i64, %struct.amdgpu_bo* }
%struct.list_head = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.amdgpu_vm = type { i32 }
%struct.kfd_bo_va_list = type { i32, i32, i8*, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid VA when adding BO to VM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\09 add VA 0x%llx - 0x%llx to vm %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to add BO object to VM. ret == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"validate_pt_pd_bos() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.kgd_mem*, %struct.amdgpu_vm*, i32, %struct.kfd_bo_va_list**)* @add_bo_to_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bo_to_vm(%struct.amdgpu_device* %0, %struct.kgd_mem* %1, %struct.amdgpu_vm* %2, i32 %3, %struct.kfd_bo_va_list** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.kgd_mem*, align 8
  %9 = alloca %struct.amdgpu_vm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kfd_bo_va_list**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kfd_bo_va_list*, align 8
  %14 = alloca %struct.amdgpu_bo*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.kgd_mem* %1, %struct.kgd_mem** %8, align 8
  store %struct.amdgpu_vm* %2, %struct.amdgpu_vm** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.kfd_bo_va_list** %4, %struct.kfd_bo_va_list*** %11, align 8
  %18 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %19 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %18, i32 0, i32 3
  %20 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %19, align 8
  store %struct.amdgpu_bo* %20, %struct.amdgpu_bo** %14, align 8
  %21 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %22 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %25 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %24, i32 0, i32 1
  store %struct.list_head* %25, %struct.list_head** %16, align 8
  %26 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %14, align 8
  %27 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %5
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %119

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.kfd_bo_va_list* @kzalloc(i32 32, i32 %45)
  store %struct.kfd_bo_va_list* %46, %struct.kfd_bo_va_list** %13, align 8
  %47 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %48 = icmp ne %struct.kfd_bo_va_list* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %119

52:                                               ; preds = %44
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %17, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %56, %struct.amdgpu_vm* %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %60 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %61 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %14, align 8
  %62 = call i32 @amdgpu_vm_bo_add(%struct.amdgpu_device* %59, %struct.amdgpu_vm* %60, %struct.amdgpu_bo* %61)
  %63 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %64 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %66 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %52
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %115

74:                                               ; preds = %52
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %77 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %79 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %80 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @amdgpu_gmc_get_pte_flags(%struct.amdgpu_device* %78, i32 %81)
  %83 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %84 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %86 = bitcast %struct.amdgpu_device* %85 to i8*
  %87 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %88 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %90 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %89, i32 0, i32 0
  %91 = load %struct.list_head*, %struct.list_head** %16, align 8
  %92 = call i32 @list_add(i32* %90, %struct.list_head* %91)
  %93 = load %struct.kfd_bo_va_list**, %struct.kfd_bo_va_list*** %11, align 8
  %94 = icmp ne %struct.kfd_bo_va_list** %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %74
  %96 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %97 = load %struct.kfd_bo_va_list**, %struct.kfd_bo_va_list*** %11, align 8
  store %struct.kfd_bo_va_list* %96, %struct.kfd_bo_va_list** %97, align 8
  br label %98

98:                                               ; preds = %95, %74
  %99 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %100 = call i32 @vm_validate_pt_pd_bos(%struct.amdgpu_vm* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %119

106:                                              ; preds = %103
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %108 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %109 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @amdgpu_vm_bo_rmv(%struct.amdgpu_device* %107, i32 %110)
  %112 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %113 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %112, i32 0, i32 0
  %114 = call i32 @list_del(i32* %113)
  br label %115

115:                                              ; preds = %106, %69
  %116 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %13, align 8
  %117 = call i32 @kfree(%struct.kfd_bo_va_list* %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %105, %49, %33
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.kfd_bo_va_list* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, %struct.amdgpu_vm*) #1

declare dso_local i32 @amdgpu_vm_bo_add(%struct.amdgpu_device*, %struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_gmc_get_pte_flags(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @vm_validate_pt_pd_bos(%struct.amdgpu_vm*) #1

declare dso_local i32 @amdgpu_vm_bo_rmv(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.kfd_bo_va_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
