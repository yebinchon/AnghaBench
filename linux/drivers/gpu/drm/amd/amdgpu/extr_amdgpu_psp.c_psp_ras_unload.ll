; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.psp_gfx_cmd_resp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_ras_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_ras_unload(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_gfx_cmd_resp*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %6 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %7 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @amdgpu_sriov_vf(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.psp_gfx_cmd_resp* @kzalloc(i32 4, i32 %13)
  store %struct.psp_gfx_cmd_resp* %14, %struct.psp_gfx_cmd_resp** %5, align 8
  %15 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %16 = icmp ne %struct.psp_gfx_cmd_resp* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %22 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %23 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @psp_prep_ras_ta_unload_cmd_buf(%struct.psp_gfx_cmd_resp* %21, i32 %25)
  %27 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %28 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %29 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %30 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @psp_cmd_submit_buf(%struct.psp_context* %27, i32* null, %struct.psp_gfx_cmd_resp* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %34 = call i32 @kfree(%struct.psp_gfx_cmd_resp* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %20, %17, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @amdgpu_sriov_vf(i32) #1

declare dso_local %struct.psp_gfx_cmd_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @psp_prep_ras_ta_unload_cmd_buf(%struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @psp_cmd_submit_buf(%struct.psp_context*, i32*, %struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @kfree(%struct.psp_gfx_cmd_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
