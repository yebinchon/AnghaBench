; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i64, i64, i64 }

@mmMC_ARB_RAMCFG = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@CHANSIZE = common dso_local global i32 0, align 4
@mmMC_SHARED_CHMAP = common dso_local global i32 0, align 4
@MC_SHARED_CHMAP = common dso_local global i32 0, align 4
@NOOFCHAN = common dso_local global i32 0, align 4
@mmCONFIG_MEMSIZE = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@amdgpu_gart_size = common dso_local global i32 0, align 4
@mmMC_VM_FB_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v8_0_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_mc_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i32 @amdgpu_atombios_get_vram_width(%struct.amdgpu_device* %8)
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @mmMC_ARB_RAMCFG, align 4
  %20 = call i64 @RREG32(i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %23 = load i32, i32* @CHANSIZE, align 4
  %24 = call i32 @REG_GET_FIELD(i64 %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 64, i32* %6, align 4
  br label %28

27:                                               ; preds = %18
  store i32 32, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* @mmMC_SHARED_CHMAP, align 4
  %30 = call i64 @RREG32(i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @MC_SHARED_CHMAP, align 4
  %33 = load i32, i32* @NOOFCHAN, align 4
  %34 = call i32 @REG_GET_FIELD(i64 %31, i32 %32, i32 %33)
  switch i32 %34, label %36 [
    i32 0, label %35
    i32 1, label %37
    i32 2, label %38
    i32 3, label %39
    i32 4, label %40
    i32 5, label %41
    i32 6, label %42
    i32 7, label %43
    i32 8, label %44
  ]

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %28, %35
  store i32 1, i32* %7, align 4
  br label %45

37:                                               ; preds = %28
  store i32 2, i32* %7, align 4
  br label %45

38:                                               ; preds = %28
  store i32 4, i32* %7, align 4
  br label %45

39:                                               ; preds = %28
  store i32 8, i32* %7, align 4
  br label %45

40:                                               ; preds = %28
  store i32 3, i32* %7, align 4
  br label %45

41:                                               ; preds = %28
  store i32 6, i32* %7, align 4
  br label %45

42:                                               ; preds = %28
  store i32 10, i32* %7, align 4
  br label %45

43:                                               ; preds = %28
  store i32 12, i32* %7, align 4
  br label %45

44:                                               ; preds = %28
  store i32 16, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %37, %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %52

52:                                               ; preds = %45, %1
  %53 = load i32, i32* @mmCONFIG_MEMSIZE, align 4
  %54 = call i64 @RREG32(i32 %53)
  %55 = mul i64 %54, 1024
  %56 = mul i64 %55, 1024
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* @mmCONFIG_MEMSIZE, align 4
  %61 = call i64 @RREG32(i32 %60)
  %62 = mul i64 %61, 1024
  %63 = mul i64 %62, 1024
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i64 %63, i64* %66, align 8
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AMD_IS_APU, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %52
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = call i32 @amdgpu_device_resize_fb_bar(%struct.amdgpu_device* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %149

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pci_resource_start(i32 %84, i32 0)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 8
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @pci_resource_len(i32 %91, i32 0)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  store i64 %92, i64* %95, align 8
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  store i64 %99, i64* %102, align 8
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %106, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %81
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 5
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %112, %81
  %121 = load i32, i32* @amdgpu_gart_size, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %128 [
    i32 133, label %127
    i32 132, label %127
    i32 131, label %127
    i32 128, label %127
    i32 129, label %132
    i32 134, label %132
    i32 135, label %132
    i32 130, label %132
  ]

127:                                              ; preds = %123, %123, %123, %123
  br label %128

128:                                              ; preds = %123, %127
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 6
  store i64 268435456, i64* %131, align 8
  br label %136

132:                                              ; preds = %123, %123, %123, %123
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 6
  store i64 1073741824, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %128
  br label %144

137:                                              ; preds = %120
  %138 = load i32, i32* @amdgpu_gart_size, align 4
  %139 = shl i32 %138, 20
  %140 = sext i32 %139 to i64
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 6
  store i64 %140, i64* %143, align 8
  br label %144

144:                                              ; preds = %137, %136
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 2
  %148 = call i32 @gmc_v8_0_vram_gtt_location(%struct.amdgpu_device* %145, %struct.TYPE_2__* %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %144, %78
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @amdgpu_atombios_get_vram_width(%struct.amdgpu_device*) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @REG_GET_FIELD(i64, i32, i32) #1

declare dso_local i32 @amdgpu_device_resize_fb_bar(%struct.amdgpu_device*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @gmc_v8_0_vram_gtt_location(%struct.amdgpu_device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
