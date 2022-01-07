; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_np_fw_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_np_fw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, i32 }

@AMDGPU_UCODE_ID_SMC = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA0 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA1 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA2 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA3 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA4 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA5 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA6 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA7 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_G = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC1_JT = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2_JT = common dso_local global i64 0, align 8
@CHIP_RENOIR = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to start rlc autoload\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_np_fw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_np_fw_load(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_firmware_info*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %8 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %9 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %12 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %18, align 8
  %20 = load i64, i64* @AMDGPU_UCODE_ID_SMC, align 8
  %21 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %19, i64 %20
  store %struct.amdgpu_firmware_info* %21, %struct.amdgpu_firmware_info** %6, align 8
  %22 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %37

27:                                               ; preds = %15
  %28 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %29 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %30 = call i32 @psp_execute_np_fw_load(%struct.psp_context* %28, %struct.amdgpu_firmware_info* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %195

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %1
  br label %37

37:                                               ; preds = %36, %26
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %191, %37
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %194

45:                                               ; preds = %38
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %49, i64 %51
  store %struct.amdgpu_firmware_info* %52, %struct.amdgpu_firmware_info** %6, align 8
  %53 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %191

58:                                               ; preds = %45
  %59 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %60 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AMDGPU_UCODE_ID_SMC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %66 = call i64 @psp_smu_reload_quirk(%struct.psp_context* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %70 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %64
  br label %191

74:                                               ; preds = %68, %58
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %76 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %133

78:                                               ; preds = %74
  %79 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %80 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AMDGPU_UCODE_ID_SDMA0, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %132, label %84

84:                                               ; preds = %78
  %85 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %86 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AMDGPU_UCODE_ID_SDMA1, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %132, label %90

90:                                               ; preds = %84
  %91 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %92 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AMDGPU_UCODE_ID_SDMA2, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %132, label %96

96:                                               ; preds = %90
  %97 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %98 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AMDGPU_UCODE_ID_SDMA3, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %132, label %102

102:                                              ; preds = %96
  %103 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %104 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AMDGPU_UCODE_ID_SDMA4, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %132, label %108

108:                                              ; preds = %102
  %109 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %110 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AMDGPU_UCODE_ID_SDMA5, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %132, label %114

114:                                              ; preds = %108
  %115 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %116 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @AMDGPU_UCODE_ID_SDMA6, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %114
  %121 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %122 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AMDGPU_UCODE_ID_SDMA7, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %128 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @AMDGPU_UCODE_ID_RLC_G, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %120, %114, %108, %102, %96, %90, %84, %78
  br label %191

133:                                              ; preds = %126, %74
  %134 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %135 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %140 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1_JT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %146 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144, %138
  br label %191

151:                                              ; preds = %144, %133
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CHIP_RENOIR, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %159 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %191

164:                                              ; preds = %157, %151
  %165 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %166 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %167 = call i32 @psp_print_fw_hdr(%struct.psp_context* %165, %struct.amdgpu_firmware_info* %166)
  %168 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %169 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %170 = call i32 @psp_execute_np_fw_load(%struct.psp_context* %168, %struct.amdgpu_firmware_info* %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %195

175:                                              ; preds = %164
  %176 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %177 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %183 = call i32 @psp_rlc_autoload(%struct.psp_context* %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %195

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %175
  br label %191

191:                                              ; preds = %190, %163, %150, %132, %73, %57
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %38

194:                                              ; preds = %38
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %186, %173, %33
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @psp_execute_np_fw_load(%struct.psp_context*, %struct.amdgpu_firmware_info*) #1

declare dso_local i64 @psp_smu_reload_quirk(%struct.psp_context*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @psp_print_fw_hdr(%struct.psp_context*, %struct.amdgpu_firmware_info*) #1

declare dso_local i32 @psp_rlc_autoload(%struct.psp_context*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
