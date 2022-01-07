; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_late_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_late_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.amdgpu_device*, i32)* }

@.str = private unnamed_addr constant [21 x i8] c"ECC is not present.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ECC is active.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SRAM ECC is not present.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SRAM ECC is active.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gmc_v9_0_late_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_late_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call i32 @gmc_v9_0_keep_stolen_memory(%struct.amdgpu_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = call i32 @amdgpu_bo_late_init(%struct.amdgpu_device* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = call i32 @gmc_v9_0_allocate_vm_inv_eng(%struct.amdgpu_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %78

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %21
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %63 [
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %25, %25
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = call i32 @amdgpu_atomfirmware_mem_ecc_supported(%struct.amdgpu_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %29
  %35 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.amdgpu_device*, i32)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %46, align 8
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = call i32 %47(%struct.amdgpu_device* %48, i32 0)
  br label %50

50:                                               ; preds = %42, %34
  br label %53

51:                                               ; preds = %29
  %52 = call i32 @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %50
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %55 = call i32 @amdgpu_atomfirmware_sram_ecc_supported(%struct.amdgpu_device* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %62

60:                                               ; preds = %53
  %61 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58
  br label %64

63:                                               ; preds = %25
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @gmc_v9_0_ecc_late_init(i8* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %78

72:                                               ; preds = %65
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @amdgpu_irq_get(%struct.amdgpu_device* %73, i32* %76, i32 0)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %70, %19
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @gmc_v9_0_keep_stolen_memory(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_late_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gmc_v9_0_allocate_vm_inv_eng(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atomfirmware_mem_ecc_supported(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @amdgpu_atomfirmware_sram_ecc_supported(%struct.amdgpu_device*) #1

declare dso_local i32 @gmc_v9_0_ecc_late_init(i8*) #1

declare dso_local i32 @amdgpu_irq_get(%struct.amdgpu_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
