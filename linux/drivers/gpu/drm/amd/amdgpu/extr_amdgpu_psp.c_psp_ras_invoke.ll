; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_invoke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.psp_gfx_cmd_resp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psp_ras_invoke(%struct.psp_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psp_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.psp_gfx_cmd_resp*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %9 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @amdgpu_sriov_vf(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.psp_gfx_cmd_resp* @kzalloc(i32 4, i32 %15)
  store %struct.psp_gfx_cmd_resp* %16, %struct.psp_gfx_cmd_resp** %7, align 8
  %17 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %18 = icmp ne %struct.psp_gfx_cmd_resp* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %14
  %23 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %26 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @psp_prep_ras_ta_invoke_cmd_buf(%struct.psp_gfx_cmd_resp* %23, i32 %24, i32 %28)
  %30 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %31 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %32 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %33 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @psp_cmd_submit_buf(%struct.psp_context* %30, i32* null, %struct.psp_gfx_cmd_resp* %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %37 = call i32 @kfree(%struct.psp_gfx_cmd_resp* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %22, %19, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @amdgpu_sriov_vf(i32) #1

declare dso_local %struct.psp_gfx_cmd_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @psp_prep_ras_ta_invoke_cmd_buf(%struct.psp_gfx_cmd_resp*, i32, i32) #1

declare dso_local i32 @psp_cmd_submit_buf(%struct.psp_context*, i32*, %struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @kfree(%struct.psp_gfx_cmd_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
