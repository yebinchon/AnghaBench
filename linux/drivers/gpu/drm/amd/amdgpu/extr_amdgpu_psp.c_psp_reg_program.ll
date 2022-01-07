; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_reg_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_reg_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32 }
%struct.psp_gfx_cmd_resp = type { i32 }

@PSP_REG_LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psp_reg_program(%struct.psp_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.psp_gfx_cmd_resp*, align 8
  %9 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.psp_gfx_cmd_resp* null, %struct.psp_gfx_cmd_resp** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PSP_REG_LAST, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.psp_gfx_cmd_resp* @kzalloc(i32 4, i32 %17)
  store %struct.psp_gfx_cmd_resp* %18, %struct.psp_gfx_cmd_resp** %8, align 8
  %19 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %8, align 8
  %20 = icmp ne %struct.psp_gfx_cmd_resp* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %38

24:                                               ; preds = %16
  %25 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @psp_prep_reg_prog_cmd_buf(%struct.psp_gfx_cmd_resp* %25, i32 %26, i32 %27)
  %29 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %30 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %8, align 8
  %31 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %32 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @psp_cmd_submit_buf(%struct.psp_context* %29, i32* null, %struct.psp_gfx_cmd_resp* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %8, align 8
  %36 = call i32 @kfree(%struct.psp_gfx_cmd_resp* %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %24, %21, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.psp_gfx_cmd_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @psp_prep_reg_prog_cmd_buf(%struct.psp_gfx_cmd_resp*, i32, i32) #1

declare dso_local i32 @psp_cmd_submit_buf(%struct.psp_context*, i32*, %struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @kfree(%struct.psp_gfx_cmd_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
