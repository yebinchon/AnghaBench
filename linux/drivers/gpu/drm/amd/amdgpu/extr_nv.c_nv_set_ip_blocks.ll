; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_set_ip_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_set_ip_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }
%struct.amdgpu_device = type { i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }

@nbio_v2_3_funcs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@nv_common_ip_block = common dso_local global i32 0, align 4
@gmc_v10_0_ip_block = common dso_local global i32 0, align 4
@navi10_ih_ip_block = common dso_local global i32 0, align 4
@psp_v11_0_ip_block = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i32 0, align 4
@smu_v11_0_ip_block = common dso_local global i32 0, align 4
@dce_virtual_ip_block = common dso_local global i32 0, align 4
@gfx_v10_0_ip_block = common dso_local global i32 0, align 4
@sdma_v5_0_ip_block = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_DIRECT = common dso_local global i32 0, align 4
@vcn_v2_0_ip_block = common dso_local global i32 0, align 4
@mes_v10_1_ip_block = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dm_ip_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv_set_ip_blocks(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call i32 @nv_reg_base_init(%struct.amdgpu_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %147

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 4
  store %struct.TYPE_4__* @nbio_v2_3_funcs, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.amdgpu_device*)**
  %19 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %18, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 %19(%struct.amdgpu_device* %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %143 [
    i32 130, label %25
    i32 128, label %25
    i32 129, label %88
  ]

25:                                               ; preds = %11, %11
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %26, i32* @nv_common_ip_block)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %28, i32* @gmc_v10_0_ip_block)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %30, i32* @navi10_ih_ip_block)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %32, i32* @psp_v11_0_ip_block)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AMDGPU_FW_LOAD_PSP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %25
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %45, i32* @smu_v11_0_ip_block)
  br label %47

47:                                               ; preds = %44, %40, %25
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %47
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %57, i32* @dce_virtual_ip_block)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %60, i32* @gfx_v10_0_ip_block)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %62, i32* @sdma_v5_0_ip_block)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AMDGPU_FW_LOAD_DIRECT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %75, i32* @smu_v11_0_ip_block)
  br label %77

77:                                               ; preds = %74, %70, %59
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %78, i32* @vcn_v2_0_ip_block)
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %86 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %85, i32* @mes_v10_1_ip_block)
  br label %87

87:                                               ; preds = %84, %77
  br label %146

88:                                               ; preds = %11
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %89, i32* @nv_common_ip_block)
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %91, i32* @gmc_v10_0_ip_block)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %93, i32* @navi10_ih_ip_block)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %95, i32* @psp_v11_0_ip_block)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AMDGPU_FW_LOAD_PSP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %88
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %108, i32* @smu_v11_0_ip_block)
  br label %110

110:                                              ; preds = %107, %103, %88
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %117 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115, %110
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %121 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %120, i32* @dce_virtual_ip_block)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %123, i32* @gfx_v10_0_ip_block)
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %126 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %125, i32* @sdma_v5_0_ip_block)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AMDGPU_FW_LOAD_DIRECT, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %122
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %135 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %138, i32* @smu_v11_0_ip_block)
  br label %140

140:                                              ; preds = %137, %133, %122
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %142 = call i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device* %141, i32* @vcn_v2_0_ip_block)
  br label %146

143:                                              ; preds = %11
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %140, %87
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %143, %9
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @nv_reg_base_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_block_add(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
