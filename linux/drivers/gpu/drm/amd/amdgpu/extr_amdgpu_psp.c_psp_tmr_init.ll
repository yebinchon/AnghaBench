; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_tmr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_tmr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32, i32, i32, i64, i64, i64 }

@PSP_TMR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to load toc\0A\00", align 1
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_tmr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_tmr_init(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %8 = load i32, i32* @PSP_TMR_SIZE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %10 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %15 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %20 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %25 = call i32 @psp_load_toc(%struct.psp_context* %24, i32* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %18, %13, %1
  %33 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %34 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @amdgpu_sriov_vf(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i8** [ %6, %38 ], [ null, %39 ]
  store i8** %41, i8*** %7, align 8
  %42 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %43 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @PSP_TMR_SIZE, align 4
  %47 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %48 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %49 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %48, i32 0, i32 1
  %50 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %51 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %50, i32 0, i32 0
  %52 = load i8**, i8*** %7, align 8
  %53 = call i32 @amdgpu_bo_create_kernel(i32 %44, i32 %45, i32 %46, i32 %47, i32* %49, i32* %51, i8** %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %40, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @psp_load_toc(%struct.psp_context*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @amdgpu_sriov_vf(i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(i32, i32, i32, i32, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
