; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_gpu_pci_config_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_gpu_pci_config_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64, i32, i32, i32 }
%struct.kv_reset_save_regs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"GPU pci config reset\0A\00", align 1
@AMD_IS_APU = common dso_local global i32 0, align 4
@mmCONFIG_MEMSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @cik_gpu_pci_config_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_gpu_pci_config_reset(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kv_reset_save_regs, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = bitcast %struct.kv_reset_save_regs* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AMD_IS_APU, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = call i32 @kv_save_regs_for_reset(%struct.amdgpu_device* %20, %struct.kv_reset_save_regs* %3)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_clear_master(i32 %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = call i32 @amdgpu_device_pci_config_reset(%struct.amdgpu_device* %27)
  %29 = call i32 @udelay(i32 100)
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %49, %22
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32, i32* @mmCONFIG_MEMSIZE, align 4
  %38 = call i32 @RREG32(i32 %37)
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_set_master(i32 %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  store i32 0, i32* %5, align 4
  br label %52

47:                                               ; preds = %36
  %48 = call i32 @udelay(i32 1)
  br label %49

49:                                               ; preds = %47
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %30

52:                                               ; preds = %40, %30
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AMD_IS_APU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %61 = call i32 @kv_restore_regs_for_reset(%struct.amdgpu_device* %60, %struct.kv_reset_save_regs* %3)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_info(i32, i8*) #2

declare dso_local i32 @kv_save_regs_for_reset(%struct.amdgpu_device*, %struct.kv_reset_save_regs*) #2

declare dso_local i32 @pci_clear_master(i32) #2

declare dso_local i32 @amdgpu_device_pci_config_reset(%struct.amdgpu_device*) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @RREG32(i32) #2

declare dso_local i32 @pci_set_master(i32) #2

declare dso_local i32 @kv_restore_regs_for_reset(%struct.amdgpu_device*, %struct.kv_reset_save_regs*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
