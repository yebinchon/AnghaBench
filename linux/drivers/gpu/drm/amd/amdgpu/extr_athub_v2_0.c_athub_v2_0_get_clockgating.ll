; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_athub_v2_0.c_athub_v2_0_get_clockgating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_athub_v2_0.c_athub_v2_0_get_clockgating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@ATHUB = common dso_local global i32 0, align 4
@mmATHUB_MISC_CNTL = common dso_local global i32 0, align 4
@ATHUB_MISC_CNTL__CG_ENABLE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_ATHUB_MGCG = common dso_local global i32 0, align 4
@ATHUB_MISC_CNTL__CG_MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_ATHUB_LS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @athub_v2_0_get_clockgating(%struct.amdgpu_device* %0, i32* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @ATHUB, align 4
  %7 = load i32, i32* @mmATHUB_MISC_CNTL, align 4
  %8 = call i32 @RREG32_SOC15(i32 %6, i32 0, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ATHUB_MISC_CNTL__CG_ENABLE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @AMD_CG_SUPPORT_ATHUB_MGCG, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ATHUB_MISC_CNTL__CG_MEM_LS_ENABLE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @AMD_CG_SUPPORT_ATHUB_LS, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
