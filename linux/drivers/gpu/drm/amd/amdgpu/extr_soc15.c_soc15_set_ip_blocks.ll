; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_set_ip_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_set_ip_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { {}* }
%struct.amdgpu_device = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_12__*, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@nbio_v7_0_funcs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@nbio_v7_4_funcs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@nbio_v6_1_funcs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@df_v3_6_funcs = common dso_local global i32 0, align 4
@df_v1_7_funcs = common dso_local global i32 0, align 4
@xgpu_ai_virt_ops = common dso_local global i32 0, align 4
@vega10_common_ip_block = common dso_local global i32 0, align 4
@gmc_v9_0_ip_block = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i32 0, align 4
@psp_v11_0_ip_block = common dso_local global i32 0, align 4
@psp_v3_1_ip_block = common dso_local global i32 0, align 4
@vega10_ih_ip_block = common dso_local global i32 0, align 4
@gfx_v9_0_ip_block = common dso_local global i32 0, align 4
@sdma_v4_0_ip_block = common dso_local global i32 0, align 4
@smu_v11_0_ip_block = common dso_local global i32 0, align 4
@pp_smu_ip_block = common dso_local global i32 0, align 4
@dce_virtual_ip_block = common dso_local global i32 0, align 4
@uvd_v7_0_ip_block = common dso_local global i32 0, align 4
@vce_v4_0_ip_block = common dso_local global i32 0, align 4
@psp_v10_0_ip_block = common dso_local global i32 0, align 4
@vcn_v1_0_ip_block = common dso_local global i32 0, align 4
@vcn_v2_5_ip_block = common dso_local global i32 0, align 4
@psp_v12_0_ip_block = common dso_local global i32 0, align 4
@smu_v12_0_ip_block = common dso_local global i32 0, align 4
@vcn_v2_0_ip_block = common dso_local global i32 0, align 4
@dm_ip_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc15_set_ip_blocks(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %16 [
    i32 130, label %7
    i32 129, label %7
    i32 132, label %7
    i32 131, label %7
    i32 128, label %10
    i32 133, label %13
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i32 @vega10_reg_base_init(%struct.amdgpu_device* %8)
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i32 @vega20_reg_base_init(%struct.amdgpu_device* %11)
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = call i32 @arct_reg_base_init(%struct.amdgpu_device* %14)
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %321

19:                                               ; preds = %13, %10, %7
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 133
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %19
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AMD_IS_APU, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 5
  store %struct.TYPE_12__* @nbio_v7_0_funcs, %struct.TYPE_12__** %43, align 8
  br label %61

44:                                               ; preds = %34
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 133
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %44
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 5
  store %struct.TYPE_12__* @nbio_v7_4_funcs, %struct.TYPE_12__** %56, align 8
  br label %60

57:                                               ; preds = %49
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 5
  store %struct.TYPE_12__* @nbio_v6_1_funcs, %struct.TYPE_12__** %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 133
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %61
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 7
  store i32* @df_v3_6_funcs, i32** %73, align 8
  br label %77

74:                                               ; preds = %66
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 7
  store i32* @df_v1_7_funcs, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = call i32 @soc15_get_rev_id(%struct.amdgpu_device* %78)
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 5
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = bitcast {}** %85 to i32 (%struct.amdgpu_device*)**
  %87 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %86, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = call i32 %87(%struct.amdgpu_device* %88)
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %91 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %77
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32* @xgpu_ai_virt_ops, i32** %96, align 8
  br label %97

97:                                               ; preds = %93, %77
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %317 [
    i32 130, label %101
    i32 129, label %101
    i32 128, label %101
    i32 132, label %205
    i32 133, label %245
    i32 131, label %272
  ]

101:                                              ; preds = %97, %97, %97
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %102, i32* @vega10_common_ip_block)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %104, i32* @gmc_v9_0_ip_block)
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %101
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AMDGPU_FW_LOAD_PSP, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @likely(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %109
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 128
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %126 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %125, i32* @psp_v11_0_ip_block)
  br label %130

127:                                              ; preds = %119
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %129 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %128, i32* @psp_v3_1_ip_block)
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %109
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %133 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %132, i32* @vega10_ih_ip_block)
  br label %159

134:                                              ; preds = %101
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %135, i32* @vega10_ih_ip_block)
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @AMDGPU_FW_LOAD_PSP, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @likely(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %134
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 128
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %152, i32* @psp_v11_0_ip_block)
  br label %157

154:                                              ; preds = %146
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %155, i32* @psp_v3_1_ip_block)
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %131
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %161 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %160, i32* @gfx_v9_0_ip_block)
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %163 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %162, i32* @sdma_v4_0_ip_block)
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %165 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %178, label %167

167:                                              ; preds = %159
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %169 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %172, i32* @smu_v11_0_ip_block)
  br label %177

174:                                              ; preds = %167
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %176 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %175, i32* @pp_smu_ip_block)
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %159
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %180 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %185 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183, %178
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %189 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %188, i32* @dce_virtual_ip_block)
  br label %190

190:                                              ; preds = %187, %183
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %192 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 128
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %197 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195, %190
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %201 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %200, i32* @uvd_v7_0_ip_block)
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %203 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %202, i32* @vce_v4_0_ip_block)
  br label %204

204:                                              ; preds = %199, %195
  br label %320

205:                                              ; preds = %97
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %207 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %206, i32* @vega10_common_ip_block)
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %209 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %208, i32* @gmc_v9_0_ip_block)
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %211 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %210, i32* @vega10_ih_ip_block)
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %213 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @AMDGPU_FW_LOAD_PSP, align 4
  %217 = icmp eq i32 %215, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @likely(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %205
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %223 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %222, i32* @psp_v10_0_ip_block)
  br label %224

224:                                              ; preds = %221, %205
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %226 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %225, i32* @gfx_v9_0_ip_block)
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %228 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %227, i32* @sdma_v4_0_ip_block)
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %230 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %229, i32* @pp_smu_ip_block)
  %231 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %232 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %224
  %236 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %237 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235, %224
  %240 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %241 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %240, i32* @dce_virtual_ip_block)
  br label %242

242:                                              ; preds = %239, %235
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %244 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %243, i32* @vcn_v1_0_ip_block)
  br label %320

245:                                              ; preds = %97
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %247 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %246, i32* @vega10_common_ip_block)
  %248 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %249 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %248, i32* @gmc_v9_0_ip_block)
  %250 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %251 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %250, i32* @vega10_ih_ip_block)
  %252 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %253 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %245
  %257 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %258 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %256, %245
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %262 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %261, i32* @dce_virtual_ip_block)
  br label %263

263:                                              ; preds = %260, %256
  %264 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %265 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %264, i32* @gfx_v9_0_ip_block)
  %266 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %267 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %266, i32* @sdma_v4_0_ip_block)
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %269 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %268, i32* @smu_v11_0_ip_block)
  %270 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %271 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %270, i32* @vcn_v2_5_ip_block)
  br label %320

272:                                              ; preds = %97
  %273 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %274 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %273, i32* @vega10_common_ip_block)
  %275 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %276 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %275, i32* @gmc_v9_0_ip_block)
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %278 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %277, i32* @vega10_ih_ip_block)
  %279 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %280 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @AMDGPU_FW_LOAD_PSP, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @likely(i32 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %272
  %289 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %290 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %289, i32* @psp_v12_0_ip_block)
  br label %291

291:                                              ; preds = %288, %272
  %292 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %293 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %297 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %296, i32* @smu_v12_0_ip_block)
  br label %298

298:                                              ; preds = %295, %291
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %300 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %299, i32* @gfx_v9_0_ip_block)
  %301 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %302 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %301, i32* @sdma_v4_0_ip_block)
  %303 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %304 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %298
  %308 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %309 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307, %298
  %312 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %313 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %312, i32* @dce_virtual_ip_block)
  br label %314

314:                                              ; preds = %311, %307
  %315 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %316 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %315, i32* @vcn_v2_0_ip_block)
  br label %320

317:                                              ; preds = %97
  %318 = load i32, i32* @EINVAL, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %2, align 4
  br label %321

320:                                              ; preds = %314, %263, %242, %204
  store i32 0, i32* %2, align 4
  br label %321

321:                                              ; preds = %320, %317, %16
  %322 = load i32, i32* %2, align 4
  ret i32 %322
}

declare dso_local i32 @vega10_reg_base_init(%struct.amdgpu_device*) #1

declare dso_local i32 @vega20_reg_base_init(%struct.amdgpu_device*) #1

declare dso_local i32 @arct_reg_base_init(%struct.amdgpu_device*) #1

declare dso_local i32 @soc15_get_rev_id(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @is_support_sw_smu(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
