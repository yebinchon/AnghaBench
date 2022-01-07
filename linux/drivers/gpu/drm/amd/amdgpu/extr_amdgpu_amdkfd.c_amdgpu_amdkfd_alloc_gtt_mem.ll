; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_alloc_gtt_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_alloc_gtt_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_param = type { i64, i32, i32*, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_GTT_USWC = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_MQD_GFX9 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate BO for amdkfd (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"(%d) failed to reserve bo for amdkfd\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"(%d) failed to pin bo for amdkfd\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%p bind failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"(%d) failed to map bo to kernel for amdkfd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_alloc_gtt_mem(%struct.kgd_dev* %0, i64 %1, i8** %2, i32* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kgd_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_device*, align 8
  %15 = alloca %struct.amdgpu_bo*, align 8
  %16 = alloca %struct.amdgpu_bo_param, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %20 = bitcast %struct.kgd_dev* %19 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %15, align 8
  store i8* null, i8** %18, align 8
  %21 = call i32 @memset(%struct.amdgpu_bo_param* %16, i32 0, i32 40)
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %27 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_GTT_USWC, align 4
  %29 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @ttm_bo_type_kernel, align 4
  %31 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i32, i32* @AMDGPU_GEM_CREATE_MQD_GFX9, align 4
  %37 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %6
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %42 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %41, %struct.amdgpu_bo_param* %16, %struct.amdgpu_bo** %15)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %7, align 4
  br label %118

52:                                               ; preds = %40
  %53 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %54 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %53, i32 1)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %115

63:                                               ; preds = %52
  %64 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %65 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %66 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %112

75:                                               ; preds = %63
  %76 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %77 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %76, i32 0, i32 0
  %78 = call i32 @amdgpu_ttm_alloc_gart(i32* %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.amdgpu_bo* %85)
  br label %109

87:                                               ; preds = %75
  %88 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %89 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %88, i8** %18)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %109

98:                                               ; preds = %87
  %99 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %100 = bitcast %struct.amdgpu_bo* %99 to i8*
  %101 = load i8**, i8*** %10, align 8
  store i8* %100, i8** %101, align 8
  %102 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %103 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %102)
  %104 = load i32*, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** %18, align 8
  %106 = load i8**, i8*** %12, align 8
  store i8* %105, i8** %106, align 8
  %107 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %108 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %107)
  store i32 0, i32* %7, align 4
  br label %118

109:                                              ; preds = %92, %81
  %110 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %111 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %110)
  br label %112

112:                                              ; preds = %109, %69
  %113 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %114 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %113)
  br label %115

115:                                              ; preds = %112, %57
  %116 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %15)
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %98, %45
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_ttm_alloc_gart(i32*) #1

declare dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i8**) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
