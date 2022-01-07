; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_tmr_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_tmr_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32, i32, i32 }
%struct.psp_gfx_cmd_resp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"reserve 0x%lx from 0x%llx for PSP TMR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_tmr_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_tmr_load(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_gfx_cmd_resp*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.psp_gfx_cmd_resp* @kzalloc(i32 4, i32 %6)
  store %struct.psp_gfx_cmd_resp* %7, %struct.psp_gfx_cmd_resp** %5, align 8
  %8 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %9 = icmp ne %struct.psp_gfx_cmd_resp* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %15 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %16 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %17 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %20 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @amdgpu_bo_size(i32 %21)
  %23 = call i32 @psp_prep_tmr_cmd_buf(%struct.psp_context* %14, %struct.psp_gfx_cmd_resp* %15, i32 %18, i32 %22)
  %24 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %25 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @amdgpu_bo_size(i32 %26)
  %28 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %29 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %33 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %34 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %35 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @psp_cmd_submit_buf(%struct.psp_context* %32, i32* null, %struct.psp_gfx_cmd_resp* %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %13
  br label %44

41:                                               ; preds = %13
  %42 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %43 = call i32 @kfree(%struct.psp_gfx_cmd_resp* %42)
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %40
  %45 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %46 = call i32 @kfree(%struct.psp_gfx_cmd_resp* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %41, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.psp_gfx_cmd_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @psp_prep_tmr_cmd_buf(%struct.psp_context*, %struct.psp_gfx_cmd_resp*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_size(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

declare dso_local i32 @psp_cmd_submit_buf(%struct.psp_context*, i32*, %struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @kfree(%struct.psp_gfx_cmd_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
