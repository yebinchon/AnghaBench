; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.psp_context }
%struct.psp_context = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.amdgpu_device*, i32 }

@PSP_RING_TYPE__KM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PSP_1_MEG = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@PSP_FENCE_BUFFER_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@PSP_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PSP ring init failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @psp_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_load_fw(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_context*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  store %struct.psp_context* %7, %struct.psp_context** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %18 = load i32, i32* @PSP_RING_TYPE__KM, align 4
  %19 = call i32 @psp_ring_stop(%struct.psp_context* %17, i32 %18)
  br label %99

20:                                               ; preds = %11, %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kzalloc(i32 4, i32 %21)
  %23 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %24 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %26 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %114

32:                                               ; preds = %20
  %33 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %34 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %33, i32 0, i32 9
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %34, align 8
  %36 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = load i32, i32* @PSP_1_MEG, align 4
  %41 = load i32, i32* @PSP_1_MEG, align 4
  %42 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %43 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %44 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %43, i32 0, i32 8
  %45 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %46 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %45, i32 0, i32 7
  %47 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %48 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %47, i32 0, i32 0
  %49 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %39, i32 %40, i32 %41, i32 %42, i32* %44, i32* %46, i8** %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %112

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = load i32, i32* @PSP_FENCE_BUFFER_SIZE, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %59 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %60 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %59, i32 0, i32 6
  %61 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %62 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %61, i32 0, i32 5
  %63 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %64 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %63, i32 0, i32 1
  %65 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %55, i32 %56, i32 %57, i32 %58, i32* %60, i32* %62, i8** %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %112

69:                                               ; preds = %54
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = load i32, i32* @PSP_CMD_BUFFER_SIZE, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %74 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %75 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %74, i32 0, i32 4
  %76 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %77 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %76, i32 0, i32 3
  %78 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %79 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %78, i32 0, i32 2
  %80 = bitcast i32* %79 to i8**
  %81 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %70, i32 %71, i32 %72, i32 %73, i32* %75, i32* %77, i8** %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %112

85:                                               ; preds = %69
  %86 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %87 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @PSP_FENCE_BUFFER_SIZE, align 4
  %90 = call i32 @memset(i8* %88, i32 0, i32 %89)
  %91 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %92 = load i32, i32* @PSP_RING_TYPE__KM, align 4
  %93 = call i32 @psp_ring_init(%struct.psp_context* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %112

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %16
  %100 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %101 = call i32 @psp_hw_start(%struct.psp_context* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %112

105:                                              ; preds = %99
  %106 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %107 = call i32 @psp_np_fw_load(%struct.psp_context* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %112

111:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %114

112:                                              ; preds = %110, %104, %96, %84, %68, %52
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %111, %29
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @psp_ring_stop(%struct.psp_context*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @psp_ring_init(%struct.psp_context*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @psp_hw_start(%struct.psp_context*) #1

declare dso_local i32 @psp_np_fw_load(%struct.psp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
