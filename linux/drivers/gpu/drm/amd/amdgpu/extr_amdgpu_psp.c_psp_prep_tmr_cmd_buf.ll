; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_tmr_cmd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_prep_tmr_cmd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32 }
%struct.psp_gfx_cmd_resp = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFX_CMD_ID_SETUP_VMR = common dso_local global i32 0, align 4
@GFX_CMD_ID_SETUP_TMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psp_context*, %struct.psp_gfx_cmd_resp*, i32, i32)* @psp_prep_tmr_cmd_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psp_prep_tmr_cmd_buf(%struct.psp_context* %0, %struct.psp_gfx_cmd_resp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.psp_context*, align 8
  %6 = alloca %struct.psp_gfx_cmd_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %5, align 8
  store %struct.psp_gfx_cmd_resp* %1, %struct.psp_gfx_cmd_resp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %10 = call i64 @psp_support_vmr_ring(%struct.psp_context* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @GFX_CMD_ID_SETUP_VMR, align 4
  %14 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %15 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @GFX_CMD_ID_SETUP_TMR, align 4
  %18 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %19 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lower_32_bits(i32 %21)
  %23 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %24 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @upper_32_bits(i32 %27)
  %29 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %30 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %6, align 8
  %35 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  ret void
}

declare dso_local i64 @psp_support_vmr_ring(%struct.psp_context*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
