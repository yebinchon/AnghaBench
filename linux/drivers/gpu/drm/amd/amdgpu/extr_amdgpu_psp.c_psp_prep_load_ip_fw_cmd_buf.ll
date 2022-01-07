; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_load_ip_fw_cmd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_load_ip_fw_cmd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_firmware_info = type { i32, i32 }
%struct.psp_gfx_cmd_resp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GFX_CMD_ID_LOAD_IP_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown firmware type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_firmware_info*, %struct.psp_gfx_cmd_resp*)* @psp_prep_load_ip_fw_cmd_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_prep_load_ip_fw_cmd_buf(%struct.amdgpu_firmware_info* %0, %struct.psp_gfx_cmd_resp* %1) #0 {
  %3 = alloca %struct.amdgpu_firmware_info*, align 8
  %4 = alloca %struct.psp_gfx_cmd_resp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_firmware_info* %0, %struct.amdgpu_firmware_info** %3, align 8
  store %struct.psp_gfx_cmd_resp* %1, %struct.psp_gfx_cmd_resp** %4, align 8
  %7 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %11 = call i32 @memset(%struct.psp_gfx_cmd_resp* %10, i32 0, i32 20)
  %12 = load i32, i32* @GFX_CMD_ID_LOAD_IP_FW, align 4
  %13 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %14 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %18 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @upper_32_bits(i32 %21)
  %23 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %24 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %31 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %3, align 8
  %35 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %36 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @psp_get_fw_type(%struct.amdgpu_firmware_info* %34, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %2
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.psp_gfx_cmd_resp*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @psp_get_fw_type(%struct.amdgpu_firmware_info*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
