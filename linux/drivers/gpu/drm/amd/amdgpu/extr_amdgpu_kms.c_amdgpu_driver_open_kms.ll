; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_driver_open_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_driver_open_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No more PASIDs available!\00", align 1
@AMDGPU_VM_CONTEXT_GFX = common dso_local global i32 0, align 4
@amdgpu_mcbp = common dso_local global i64 0, align 8
@AMDGPU_GMC_HOLE_MASK = common dso_local global i32 0, align 4
@AMDGPU_CSA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_driver_open_kms(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_fpriv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %6, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 2
  %16 = call i32 @flush_delayed_work(i32* %15)
  %17 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  store %struct.amdgpu_fpriv* null, %struct.amdgpu_fpriv** %18, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %137

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.amdgpu_fpriv* @kzalloc(i32 24, i32 %28)
  store %struct.amdgpu_fpriv* %29, %struct.amdgpu_fpriv** %7, align 8
  %30 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %31 = icmp ne %struct.amdgpu_fpriv* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %127

39:                                               ; preds = %27
  %40 = call i32 @amdgpu_pasid_alloc(i32 16)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %50 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %50, i32 0, i32 0
  %52 = load i32, i32* @AMDGPU_VM_CONTEXT_GFX, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @amdgpu_vm_init(%struct.amdgpu_device* %49, i32* %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %118

58:                                               ; preds = %48
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %60 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %61 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %60, i32 0, i32 0
  %62 = call i32 @amdgpu_vm_bo_add(%struct.amdgpu_device* %59, i32* %61, i32* null)
  %63 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %66 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %113

72:                                               ; preds = %58
  %73 = load i64, i64* @amdgpu_mcbp, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %77 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %75, %72
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %81 = call i32 @amdgpu_csa_vaddr(%struct.amdgpu_device* %80)
  %82 = load i32, i32* @AMDGPU_GMC_HOLE_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %10, align 4
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %85 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %86 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %85, i32 0, i32 0
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %92 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %91, i32 0, i32 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @AMDGPU_CSA_SIZE, align 4
  %95 = call i32 @amdgpu_map_static_csa(%struct.amdgpu_device* %84, i32* %86, i32 %90, i32* %92, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  br label %113

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %75
  %101 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %102 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %101, i32 0, i32 3
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %105 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %104, i32 0, i32 2
  %106 = call i32 @idr_init(i32* %105)
  %107 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %108 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %107, i32 0, i32 1
  %109 = call i32 @amdgpu_ctx_mgr_init(i32* %108)
  %110 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %111 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %112 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %111, i32 0, i32 0
  store %struct.amdgpu_fpriv* %110, %struct.amdgpu_fpriv** %112, align 8
  br label %127

113:                                              ; preds = %98, %69
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %115 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %116 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %115, i32 0, i32 0
  %117 = call i32 @amdgpu_vm_fini(%struct.amdgpu_device* %114, i32* %116)
  br label %118

118:                                              ; preds = %113, %57
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @amdgpu_pasid_free(i32 %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %126 = call i32 @kfree(%struct.amdgpu_fpriv* %125)
  br label %127

127:                                              ; preds = %124, %100, %36
  %128 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %129 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @pm_runtime_mark_last_busy(i32 %130)
  %132 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %133 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @pm_runtime_put_autosuspend(i32 %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %127, %25
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.amdgpu_fpriv* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_pasid_alloc(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @amdgpu_vm_init(%struct.amdgpu_device*, i32*, i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_add(%struct.amdgpu_device*, i32*, i32*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_csa_vaddr(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_map_static_csa(%struct.amdgpu_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @amdgpu_ctx_mgr_init(i32*) #1

declare dso_local i32 @amdgpu_vm_fini(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @amdgpu_pasid_free(i32) #1

declare dso_local i32 @kfree(%struct.amdgpu_fpriv*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
