; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dc_to_smu_clock_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dc_to_smu_clock_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMU_CLK_COUNT = common dso_local global i32 0, align 4
@SMU_DISPCLK = common dso_local global i32 0, align 4
@SMU_GFXCLK = common dso_local global i32 0, align 4
@SMU_MCLK = common dso_local global i32 0, align 4
@SMU_DCEFCLK = common dso_local global i32 0, align 4
@SMU_SOCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DM_PPLIB: invalid clock type: %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dc_to_smu_clock_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_to_smu_clock_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @SMU_CLK_COUNT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %16 [
    i32 131, label %6
    i32 130, label %8
    i32 129, label %10
    i32 132, label %12
    i32 128, label %14
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @SMU_DISPCLK, align 4
  store i32 %7, i32* %3, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* @SMU_GFXCLK, align 4
  store i32 %9, i32* %3, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @SMU_MCLK, align 4
  store i32 %11, i32* %3, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @SMU_DCEFCLK, align 4
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @SMU_SOCCLK, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %14, %12, %10, %8, %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
