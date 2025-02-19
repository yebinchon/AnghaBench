; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_get_mac_definition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_get_mac_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMU74_MAX_LEVELS_GRAPHICS = common dso_local global i32 0, align 4
@SMU74_MAX_LEVELS_MEMORY = common dso_local global i32 0, align 4
@SMU74_MAX_LEVELS_LINK = common dso_local global i32 0, align 4
@SMU74_MAX_ENTRIES_SMIO = common dso_local global i32 0, align 4
@SMU74_MAX_LEVELS_VDDC = common dso_local global i32 0, align 4
@SMU74_MAX_LEVELS_VDDGFX = common dso_local global i32 0, align 4
@SMU74_MAX_LEVELS_VDDCI = common dso_local global i32 0, align 4
@SMU74_MAX_LEVELS_MVDD = common dso_local global i32 0, align 4
@SMU7_UVD_MCLK_HANDSHAKE_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"can't get the mac of %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @polaris10_get_mac_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @polaris10_get_mac_definition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 135, label %5
    i32 133, label %7
    i32 134, label %9
    i32 136, label %11
    i32 131, label %13
    i32 129, label %15
    i32 130, label %17
    i32 132, label %19
    i32 128, label %21
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SMU74_MAX_LEVELS_GRAPHICS, align 4
  store i32 %6, i32* %2, align 4
  br label %26

7:                                                ; preds = %1
  %8 = load i32, i32* @SMU74_MAX_LEVELS_MEMORY, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @SMU74_MAX_LEVELS_LINK, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @SMU74_MAX_ENTRIES_SMIO, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @SMU74_MAX_LEVELS_VDDC, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* @SMU74_MAX_LEVELS_VDDGFX, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @SMU74_MAX_LEVELS_VDDCI, align 4
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @SMU74_MAX_LEVELS_MVDD, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @SMU7_UVD_MCLK_HANDSHAKE_DISABLE, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
