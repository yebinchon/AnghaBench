; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_sw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_sw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ras_common_if*, %struct.ras_common_if* }
%struct.ras_common_if = type { i32 }
%struct.ras_ih_if = type { %struct.ras_common_if }

@AMDGPU_RAS_BLOCK__UMC = common dso_local global i32 0, align 4
@AMDGPU_RAS_BLOCK__MMHUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gmc_v9_0_sw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_sw_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ras_common_if*, align 8
  %6 = alloca %struct.ras_ih_if, align 4
  %7 = alloca %struct.ras_common_if*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = load i32, i32* @AMDGPU_RAS_BLOCK__UMC, align 4
  %12 = call i64 @amdgpu_ras_is_supported(%struct.amdgpu_device* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.ras_common_if*, %struct.ras_common_if** %17, align 8
  %19 = icmp ne %struct.ras_common_if* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.ras_common_if*, %struct.ras_common_if** %23, align 8
  store %struct.ras_common_if* %24, %struct.ras_common_if** %5, align 8
  %25 = getelementptr inbounds %struct.ras_ih_if, %struct.ras_ih_if* %6, i32 0, i32 0
  %26 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %27 = bitcast %struct.ras_common_if* %25 to i8*
  %28 = bitcast %struct.ras_common_if* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %31 = call i32 @amdgpu_ras_debugfs_remove(%struct.amdgpu_device* %29, %struct.ras_common_if* %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %34 = call i32 @amdgpu_ras_sysfs_remove(%struct.amdgpu_device* %32, %struct.ras_common_if* %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = call i32 @amdgpu_ras_interrupt_remove_handler(%struct.amdgpu_device* %35, %struct.ras_ih_if* %6)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %39 = call i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %37, %struct.ras_common_if* %38, i32 0)
  %40 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %41 = call i32 @kfree(%struct.ras_common_if* %40)
  br label %42

42:                                               ; preds = %20, %14, %1
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = load i32, i32* @AMDGPU_RAS_BLOCK__MMHUB, align 4
  %45 = call i64 @amdgpu_ras_is_supported(%struct.amdgpu_device* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.ras_common_if*, %struct.ras_common_if** %50, align 8
  %52 = icmp ne %struct.ras_common_if* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.ras_common_if*, %struct.ras_common_if** %56, align 8
  store %struct.ras_common_if* %57, %struct.ras_common_if** %7, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = load %struct.ras_common_if*, %struct.ras_common_if** %7, align 8
  %60 = call i32 @amdgpu_ras_debugfs_remove(%struct.amdgpu_device* %58, %struct.ras_common_if* %59)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = load %struct.ras_common_if*, %struct.ras_common_if** %7, align 8
  %63 = call i32 @amdgpu_ras_sysfs_remove(%struct.amdgpu_device* %61, %struct.ras_common_if* %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = load %struct.ras_common_if*, %struct.ras_common_if** %7, align 8
  %66 = call i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %64, %struct.ras_common_if* %65, i32 0)
  %67 = load %struct.ras_common_if*, %struct.ras_common_if** %7, align 8
  %68 = call i32 @kfree(%struct.ras_common_if* %67)
  br label %69

69:                                               ; preds = %53, %47, %42
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = call i32 @amdgpu_gem_force_release(%struct.amdgpu_device* %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = call i32 @amdgpu_vm_manager_fini(%struct.amdgpu_device* %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = call i64 @gmc_v9_0_keep_stolen_memory(%struct.amdgpu_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = call i32 @amdgpu_bo_free_kernel(i32* %79, i32* null, i8** %4)
  br label %81

81:                                               ; preds = %77, %69
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = call i32 @amdgpu_gart_table_vram_free(%struct.amdgpu_device* %82)
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %85 = call i32 @amdgpu_bo_fini(%struct.amdgpu_device* %84)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = call i32 @amdgpu_gart_fini(%struct.amdgpu_device* %86)
  ret i32 0
}

declare dso_local i64 @amdgpu_ras_is_supported(%struct.amdgpu_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @amdgpu_ras_debugfs_remove(%struct.amdgpu_device*, %struct.ras_common_if*) #1

declare dso_local i32 @amdgpu_ras_sysfs_remove(%struct.amdgpu_device*, %struct.ras_common_if*) #1

declare dso_local i32 @amdgpu_ras_interrupt_remove_handler(%struct.amdgpu_device*, %struct.ras_ih_if*) #1

declare dso_local i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device*, %struct.ras_common_if*, i32) #1

declare dso_local i32 @kfree(%struct.ras_common_if*) #1

declare dso_local i32 @amdgpu_gem_force_release(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_vm_manager_fini(%struct.amdgpu_device*) #1

declare dso_local i64 @gmc_v9_0_keep_stolen_memory(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i8**) #1

declare dso_local i32 @amdgpu_gart_table_vram_free(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gart_fini(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
