; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_load_toc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_load_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.psp_gfx_cmd_resp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PSP_1_MEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32*)* @psp_load_toc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_load_toc(%struct.psp_context* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psp_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.psp_gfx_cmd_resp*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.psp_gfx_cmd_resp* @kzalloc(i32 4, i32 %8)
  store %struct.psp_gfx_cmd_resp* %9, %struct.psp_gfx_cmd_resp** %7, align 8
  %10 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %11 = icmp ne %struct.psp_gfx_cmd_resp* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %17 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PSP_1_MEG, align 4
  %20 = call i32 @memset(i32 %18, i32 0, i32 %19)
  %21 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %22 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %25 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %28 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %32 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %33 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %36 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @psp_prep_load_toc_cmd_buf(%struct.psp_gfx_cmd_resp* %31, i32 %34, i32 %37)
  %39 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %40 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %41 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %42 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @psp_cmd_submit_buf(%struct.psp_context* %39, i32* null, %struct.psp_gfx_cmd_resp* %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %15
  %48 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %49 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %15
  %56 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %7, align 8
  %57 = call i32 @kfree(%struct.psp_gfx_cmd_resp* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.psp_gfx_cmd_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @psp_prep_load_toc_cmd_buf(%struct.psp_gfx_cmd_resp*, i32, i32) #1

declare dso_local i32 @psp_cmd_submit_buf(%struct.psp_context*, i32*, %struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @kfree(%struct.psp_gfx_cmd_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
