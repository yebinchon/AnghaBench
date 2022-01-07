; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_set_ip_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_set_ip_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@cik_common_ip_block = common dso_local global i32 0, align 4
@gmc_v7_0_ip_block = common dso_local global i32 0, align 4
@cik_ih_ip_block = common dso_local global i32 0, align 4
@gfx_v7_2_ip_block = common dso_local global i32 0, align 4
@cik_sdma_ip_block = common dso_local global i32 0, align 4
@pp_smu_ip_block = common dso_local global i32 0, align 4
@dce_virtual_ip_block = common dso_local global i32 0, align 4
@dce_v8_2_ip_block = common dso_local global i32 0, align 4
@uvd_v4_2_ip_block = common dso_local global i32 0, align 4
@vce_v2_0_ip_block = common dso_local global i32 0, align 4
@gfx_v7_3_ip_block = common dso_local global i32 0, align 4
@dce_v8_5_ip_block = common dso_local global i32 0, align 4
@gfx_v7_1_ip_block = common dso_local global i32 0, align 4
@kv_smu_ip_block = common dso_local global i32 0, align 4
@dce_v8_1_ip_block = common dso_local global i32 0, align 4
@dce_v8_3_ip_block = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dm_ip_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_set_ip_blocks(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %5 = call i32 @cik_detect_hw_virtualization(%struct.amdgpu_device* %4)
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %121 [
    i32 132, label %9
    i32 131, label %37
    i32 129, label %65
    i32 130, label %93
    i32 128, label %93
  ]

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %10, i32* @cik_common_ip_block)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %12, i32* @gmc_v7_0_ip_block)
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %14, i32* @cik_ih_ip_block)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %16, i32* @gfx_v7_2_ip_block)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %18, i32* @cik_sdma_ip_block)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %20, i32* @pp_smu_ip_block)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %27, i32* @dce_virtual_ip_block)
  br label %32

29:                                               ; preds = %9
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %30, i32* @dce_v8_2_ip_block)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %33, i32* @uvd_v4_2_ip_block)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %35, i32* @vce_v2_0_ip_block)
  br label %124

37:                                               ; preds = %1
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %38, i32* @cik_common_ip_block)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %40, i32* @gmc_v7_0_ip_block)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %42, i32* @cik_ih_ip_block)
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %44, i32* @gfx_v7_3_ip_block)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %46, i32* @cik_sdma_ip_block)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %48, i32* @pp_smu_ip_block)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %55, i32* @dce_virtual_ip_block)
  br label %60

57:                                               ; preds = %37
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %58, i32* @dce_v8_5_ip_block)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %61, i32* @uvd_v4_2_ip_block)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %63, i32* @vce_v2_0_ip_block)
  br label %124

65:                                               ; preds = %1
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %66, i32* @cik_common_ip_block)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %68, i32* @gmc_v7_0_ip_block)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %70, i32* @cik_ih_ip_block)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %72, i32* @gfx_v7_1_ip_block)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %74, i32* @cik_sdma_ip_block)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %76, i32* @kv_smu_ip_block)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %83, i32* @dce_virtual_ip_block)
  br label %88

85:                                               ; preds = %65
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %86, i32* @dce_v8_1_ip_block)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %89, i32* @uvd_v4_2_ip_block)
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %91, i32* @vce_v2_0_ip_block)
  br label %124

93:                                               ; preds = %1, %1
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %94, i32* @cik_common_ip_block)
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %96, i32* @gmc_v7_0_ip_block)
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %98, i32* @cik_ih_ip_block)
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %100, i32* @gfx_v7_2_ip_block)
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %102, i32* @cik_sdma_ip_block)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %104, i32* @kv_smu_ip_block)
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %93
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %111, i32* @dce_virtual_ip_block)
  br label %116

113:                                              ; preds = %93
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %114, i32* @dce_v8_3_ip_block)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %117, i32* @uvd_v4_2_ip_block)
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %120 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %119, i32* @vce_v2_0_ip_block)
  br label %124

121:                                              ; preds = %1
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %125

124:                                              ; preds = %116, %88, %60, %32
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @cik_detect_hw_virtualization(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
