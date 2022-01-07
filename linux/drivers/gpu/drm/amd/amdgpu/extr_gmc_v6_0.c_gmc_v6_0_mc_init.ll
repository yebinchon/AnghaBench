; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i32, i32 }

@mmMC_ARB_RAMCFG = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG__CHANSIZE_MASK = common dso_local global i32 0, align 4
@mmMC_SHARED_CHMAP = common dso_local global i32 0, align 4
@MC_SHARED_CHMAP__NOOFCHAN_MASK = common dso_local global i32 0, align 4
@MC_SHARED_CHMAP__NOOFCHAN__SHIFT = common dso_local global i32 0, align 4
@mmCONFIG_MEMSIZE = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@amdgpu_gart_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v6_0_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v6_0_mc_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load i32, i32* @mmMC_ARB_RAMCFG, align 4
  %9 = call i64 @RREG32(i32 %8)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 2048
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 16, i32* %5, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MC_ARB_RAMCFG__CHANSIZE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 64, i32* %5, align 4
  br label %22

21:                                               ; preds = %15
  store i32 32, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* @mmMC_SHARED_CHMAP, align 4
  %25 = call i64 @RREG32(i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MC_SHARED_CHMAP__NOOFCHAN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MC_SHARED_CHMAP__NOOFCHAN__SHIFT, align 4
  %31 = ashr i32 %29, %30
  switch i32 %31, label %33 [
    i32 0, label %32
    i32 1, label %34
    i32 2, label %35
    i32 3, label %36
    i32 4, label %37
    i32 5, label %38
    i32 6, label %39
    i32 7, label %40
    i32 8, label %41
  ]

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %23, %32
  store i32 1, i32* %6, align 4
  br label %42

34:                                               ; preds = %23
  store i32 2, i32* %6, align 4
  br label %42

35:                                               ; preds = %23
  store i32 4, i32* %6, align 4
  br label %42

36:                                               ; preds = %23
  store i32 8, i32* %6, align 4
  br label %42

37:                                               ; preds = %23
  store i32 3, i32* %6, align 4
  br label %42

38:                                               ; preds = %23
  store i32 6, i32* %6, align 4
  br label %42

39:                                               ; preds = %23
  store i32 10, i32* %6, align 4
  br label %42

40:                                               ; preds = %23
  store i32 12, i32* %6, align 4
  br label %42

41:                                               ; preds = %23
  store i32 16, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37, %36, %35, %34, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @mmCONFIG_MEMSIZE, align 4
  %50 = call i64 @RREG32(i32 %49)
  %51 = mul i64 %50, 1024
  %52 = mul i64 %51, 1024
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load i32, i32* @mmCONFIG_MEMSIZE, align 4
  %57 = call i64 @RREG32(i32 %56)
  %58 = mul i64 %57, 1024
  %59 = mul i64 %58, 1024
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i64 %59, i64* %62, align 8
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AMD_IS_APU, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %42
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = call i32 @amdgpu_device_resize_fb_bar(%struct.amdgpu_device* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %127

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %42
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pci_resource_start(i32 %80, i32 0)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  store i32 %81, i32* %84, align 8
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pci_resource_len(i32 %87, i32 0)
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @amdgpu_gart_size, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %115

101:                                              ; preds = %77
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %106 [
    i32 132, label %105
    i32 128, label %110
    i32 129, label %110
    i32 130, label %110
    i32 131, label %110
  ]

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %101, %105
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i64 268435456, i64* %109, align 8
  br label %114

110:                                              ; preds = %101, %101, %101, %101
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i64 1073741824, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %122

115:                                              ; preds = %77
  %116 = load i32, i32* @amdgpu_gart_size, align 4
  %117 = shl i32 %116, 20
  %118 = sext i32 %117 to i64
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  store i64 %118, i64* %121, align 8
  br label %122

122:                                              ; preds = %115, %114
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 2
  %126 = call i32 @gmc_v6_0_vram_gtt_location(%struct.amdgpu_device* %123, %struct.TYPE_2__* %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %74
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @amdgpu_device_resize_fb_bar(%struct.amdgpu_device*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @gmc_v6_0_vram_gtt_location(%struct.amdgpu_device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
