; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_set_ip_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_set_ip_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@xgpu_vi_virt_ops = common dso_local global i32 0, align 4
@vi_common_ip_block = common dso_local global i32 0, align 4
@gmc_v7_4_ip_block = common dso_local global i32 0, align 4
@iceland_ih_ip_block = common dso_local global i32 0, align 4
@gfx_v8_0_ip_block = common dso_local global i32 0, align 4
@sdma_v2_4_ip_block = common dso_local global i32 0, align 4
@pp_smu_ip_block = common dso_local global i32 0, align 4
@dce_virtual_ip_block = common dso_local global i32 0, align 4
@gmc_v8_5_ip_block = common dso_local global i32 0, align 4
@tonga_ih_ip_block = common dso_local global i32 0, align 4
@sdma_v3_0_ip_block = common dso_local global i32 0, align 4
@dce_v10_1_ip_block = common dso_local global i32 0, align 4
@uvd_v6_0_ip_block = common dso_local global i32 0, align 4
@vce_v3_0_ip_block = common dso_local global i32 0, align 4
@gmc_v8_0_ip_block = common dso_local global i32 0, align 4
@dce_v10_0_ip_block = common dso_local global i32 0, align 4
@uvd_v5_0_ip_block = common dso_local global i32 0, align 4
@gmc_v8_1_ip_block = common dso_local global i32 0, align 4
@sdma_v3_1_ip_block = common dso_local global i32 0, align 4
@dce_v11_2_ip_block = common dso_local global i32 0, align 4
@uvd_v6_3_ip_block = common dso_local global i32 0, align 4
@vce_v3_4_ip_block = common dso_local global i32 0, align 4
@cz_ih_ip_block = common dso_local global i32 0, align 4
@dce_v11_0_ip_block = common dso_local global i32 0, align 4
@vce_v3_1_ip_block = common dso_local global i32 0, align 4
@gfx_v8_1_ip_block = common dso_local global i32 0, align 4
@uvd_v6_2_ip_block = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@acp_ip_block = common dso_local global i32 0, align 4
@dm_ip_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vi_set_ip_blocks(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %5 = call i32 @vi_detect_hw_virtualization(%struct.amdgpu_device* %4)
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* @xgpu_vi_virt_ops, i32** %12, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %196 [
    i32 129, label %17
    i32 135, label %38
    i32 130, label %75
    i32 134, label %112
    i32 133, label %112
    i32 132, label %112
    i32 128, label %112
    i32 136, label %140
    i32 131, label %168
  ]

17:                                               ; preds = %13
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %18, i32* @vi_common_ip_block)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %20, i32* @gmc_v7_4_ip_block)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %22, i32* @iceland_ih_ip_block)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %24, i32* @gfx_v8_0_ip_block)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %26, i32* @sdma_v2_4_ip_block)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %28, i32* @pp_smu_ip_block)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %35, i32* @dce_virtual_ip_block)
  br label %37

37:                                               ; preds = %34, %17
  br label %199

38:                                               ; preds = %13
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %39, i32* @vi_common_ip_block)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %41, i32* @gmc_v8_5_ip_block)
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %43, i32* @tonga_ih_ip_block)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %45, i32* @gfx_v8_0_ip_block)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %47, i32* @sdma_v3_0_ip_block)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %49, i32* @pp_smu_ip_block)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %38
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %38
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %60, i32* @dce_virtual_ip_block)
  br label %65

62:                                               ; preds = %55
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %63, i32* @dce_v10_1_ip_block)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %70, i32* @uvd_v6_0_ip_block)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %72, i32* @vce_v3_0_ip_block)
  br label %74

74:                                               ; preds = %69, %65
  br label %199

75:                                               ; preds = %13
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %76, i32* @vi_common_ip_block)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %78, i32* @gmc_v8_0_ip_block)
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %80, i32* @tonga_ih_ip_block)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %82, i32* @gfx_v8_0_ip_block)
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %85 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %84, i32* @sdma_v3_0_ip_block)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %86, i32* @pp_smu_ip_block)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %75
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %75
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %97, i32* @dce_virtual_ip_block)
  br label %102

99:                                               ; preds = %92
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %100, i32* @dce_v10_0_ip_block)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %107, i32* @uvd_v5_0_ip_block)
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %109, i32* @vce_v3_0_ip_block)
  br label %111

111:                                              ; preds = %106, %102
  br label %199

112:                                              ; preds = %13, %13, %13, %13
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %114 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %113, i32* @vi_common_ip_block)
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %115, i32* @gmc_v8_1_ip_block)
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %117, i32* @tonga_ih_ip_block)
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %120 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %119, i32* @gfx_v8_0_ip_block)
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %122 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %121, i32* @sdma_v3_1_ip_block)
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %123, i32* @pp_smu_ip_block)
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %112
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %130, i32* @dce_virtual_ip_block)
  br label %135

132:                                              ; preds = %112
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %134 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %133, i32* @dce_v11_2_ip_block)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %136, i32* @uvd_v6_3_ip_block)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %138, i32* @vce_v3_4_ip_block)
  br label %199

140:                                              ; preds = %13
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %142 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %141, i32* @vi_common_ip_block)
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %144 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %143, i32* @gmc_v8_0_ip_block)
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %145, i32* @cz_ih_ip_block)
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %148 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %147, i32* @gfx_v8_0_ip_block)
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %150 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %149, i32* @sdma_v3_0_ip_block)
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %151, i32* @pp_smu_ip_block)
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %140
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %159 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %158, i32* @dce_virtual_ip_block)
  br label %163

160:                                              ; preds = %140
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %162 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %161, i32* @dce_v11_0_ip_block)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %165 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %164, i32* @uvd_v6_0_ip_block)
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %167 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %166, i32* @vce_v3_1_ip_block)
  br label %199

168:                                              ; preds = %13
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %170 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %169, i32* @vi_common_ip_block)
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %172 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %171, i32* @gmc_v8_0_ip_block)
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %173, i32* @cz_ih_ip_block)
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %176 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %175, i32* @gfx_v8_1_ip_block)
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %178 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %177, i32* @sdma_v3_0_ip_block)
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %180 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %179, i32* @pp_smu_ip_block)
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %168
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %187 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %186, i32* @dce_virtual_ip_block)
  br label %191

188:                                              ; preds = %168
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %190 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %189, i32* @dce_v11_0_ip_block)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %193 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %192, i32* @uvd_v6_2_ip_block)
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %195 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %194, i32* @vce_v3_4_ip_block)
  br label %199

196:                                              ; preds = %13
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %200

199:                                              ; preds = %191, %163, %135, %111, %74, %37
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %196
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @vi_detect_hw_virtualization(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
