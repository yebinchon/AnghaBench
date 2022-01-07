; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CHIP_VEGA20 = common dso_local global i64 0, align 8
@UVD7_MAX_HW_INSTANCES_VEGA20 = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_PG0_CC_UVD_HARVESTING = common dso_local global i32 0, align 4
@UVD_PG0_CC_UVD_HARVESTING__UVD_DISABLE_MASK = common dso_local global i32 0, align 4
@AMDGPU_UVD_HARVEST_UVD0 = common dso_local global i32 0, align 4
@AMDGPU_UVD_HARVEST_UVD1 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v7_0_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_early_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_VEGA20, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %1
  %15 = load i32, i32* @UVD7_MAX_HW_INSTANCES_VEGA20, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %44, %14
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load i32, i32* @UVD, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @mmUVD_PG0_CC_UVD_HARVESTING, align 4
  %30 = call i32 @RREG32_SOC15(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UVD_PG0_CC_UVD_HARVESTING__UVD_DISABLE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AMDGPU_UVD_HARVEST_UVD0, align 4
  %53 = load i32, i32* @AMDGPU_UVD_HARVEST_UVD1, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %83

59:                                               ; preds = %47
  br label %64

60:                                               ; preds = %1
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %76

72:                                               ; preds = %64
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 2, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %78 = call i32 @uvd_v7_0_set_ring_funcs(%struct.amdgpu_device* %77)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = call i32 @uvd_v7_0_set_enc_ring_funcs(%struct.amdgpu_device* %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %82 = call i32 @uvd_v7_0_set_irq_funcs(%struct.amdgpu_device* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %56
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @uvd_v7_0_set_ring_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @uvd_v7_0_set_enc_ring_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @uvd_v7_0_set_irq_funcs(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
