; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.psp_gfx_cmd_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PSP_1_MEG = common dso_local global i32 0, align 4
@PSP_RAS_SHARED_MEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_ras_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_ras_load(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_gfx_cmd_resp*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %6 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %7 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @amdgpu_sriov_vf(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

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
  br label %72

20:                                               ; preds = %12
  %21 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %22 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PSP_1_MEG, align 4
  %25 = call i32 @memset(i32 %23, i32 0, i32 %24)
  %26 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %27 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %30 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %33 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %37 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %38 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %41 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %45 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PSP_RAS_SHARED_MEM_SIZE, align 4
  %48 = call i32 @psp_prep_ras_ta_load_cmd_buf(%struct.psp_gfx_cmd_resp* %36, i32 %39, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %50 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %51 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %52 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @psp_cmd_submit_buf(%struct.psp_context* %49, i32* null, %struct.psp_gfx_cmd_resp* %50, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %20
  %58 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %59 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %62 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %66 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %20
  %69 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %5, align 8
  %70 = call i32 @kfree(%struct.psp_gfx_cmd_resp* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %17, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @amdgpu_sriov_vf(i32) #1

declare dso_local %struct.psp_gfx_cmd_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @psp_prep_ras_ta_load_cmd_buf(%struct.psp_gfx_cmd_resp*, i32, i32, i32, i32) #1

declare dso_local i32 @psp_cmd_submit_buf(%struct.psp_context*, i32*, %struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @kfree(%struct.psp_gfx_cmd_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
