; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@VCN25_MAX_HW_INSTANCES_ARCTURUS = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmCC_UVD_HARVESTING = common dso_local global i32 0, align 4
@CC_UVD_HARVESTING__UVD_DISABLE_MASK = common dso_local global i32 0, align 4
@AMDGPU_VCN_HARVEST_VCN0 = common dso_local global i32 0, align 4
@AMDGPU_VCN_HARVEST_VCN1 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vcn_v2_5_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_5_early_init(i8* %0) #0 {
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
  %12 = load i64, i64* @CHIP_ARCTURUS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %1
  %15 = load i32, i32* @VCN25_MAX_HW_INSTANCES_ARCTURUS, align 4
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
  %29 = load i32, i32* @mmCC_UVD_HARVESTING, align 4
  %30 = call i32 @RREG32_SOC15(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CC_UVD_HARVESTING__UVD_DISABLE_MASK, align 4
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
  %52 = load i32, i32* @AMDGPU_VCN_HARVEST_VCN0, align 4
  %53 = load i32, i32* @AMDGPU_VCN_HARVEST_VCN1, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %76

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
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 2, i32* %67, align 8
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = call i32 @vcn_v2_5_set_dec_ring_funcs(%struct.amdgpu_device* %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = call i32 @vcn_v2_5_set_enc_ring_funcs(%struct.amdgpu_device* %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = call i32 @vcn_v2_5_set_jpeg_ring_funcs(%struct.amdgpu_device* %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = call i32 @vcn_v2_5_set_irq_funcs(%struct.amdgpu_device* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %64, %56
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @vcn_v2_5_set_dec_ring_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @vcn_v2_5_set_enc_ring_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @vcn_v2_5_set_jpeg_ring_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @vcn_v2_5_set_irq_funcs(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
