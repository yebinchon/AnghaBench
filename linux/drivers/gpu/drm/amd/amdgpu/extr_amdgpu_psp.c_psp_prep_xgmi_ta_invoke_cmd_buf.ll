; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_xgmi_ta_invoke_cmd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_xgmi_ta_invoke_cmd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_gfx_cmd_resp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@GFX_CMD_ID_INVOKE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psp_gfx_cmd_resp*, i8*, i8*)* @psp_prep_xgmi_ta_invoke_cmd_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psp_prep_xgmi_ta_invoke_cmd_buf(%struct.psp_gfx_cmd_resp* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.psp_gfx_cmd_resp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.psp_gfx_cmd_resp* %0, %struct.psp_gfx_cmd_resp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @GFX_CMD_ID_INVOKE_CMD, align 4
  %8 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %9 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %12 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i8* %10, i8** %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %4, align 8
  %17 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
