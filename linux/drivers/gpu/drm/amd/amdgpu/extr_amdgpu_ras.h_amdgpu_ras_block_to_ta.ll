; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.h_amdgpu_ras_block_to_ta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.h_amdgpu_ras_block_to_ta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TA_RAS_BLOCK__UMC = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__SDMA = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__GFX = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__MMHUB = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__ATHUB = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__PCIE_BIF = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__HDP = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__XGMI_WAFL = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__DF = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__SMN = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__SEM = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__MP0 = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__MP1 = common dso_local global i32 0, align 4
@TA_RAS_BLOCK__FUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RAS ERROR: unexpected block id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdgpu_ras_block_to_ta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ras_block_to_ta(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %33 [
    i32 129, label %5
    i32 132, label %7
    i32 138, label %9
    i32 136, label %11
    i32 141, label %13
    i32 133, label %15
    i32 137, label %17
    i32 128, label %19
    i32 140, label %21
    i32 130, label %23
    i32 131, label %25
    i32 135, label %27
    i32 134, label %29
    i32 139, label %31
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TA_RAS_BLOCK__UMC, align 4
  store i32 %6, i32* %2, align 4
  br label %37

7:                                                ; preds = %1
  %8 = load i32, i32* @TA_RAS_BLOCK__SDMA, align 4
  store i32 %8, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load i32, i32* @TA_RAS_BLOCK__GFX, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* @TA_RAS_BLOCK__MMHUB, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* @TA_RAS_BLOCK__ATHUB, align 4
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load i32, i32* @TA_RAS_BLOCK__PCIE_BIF, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load i32, i32* @TA_RAS_BLOCK__HDP, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load i32, i32* @TA_RAS_BLOCK__XGMI_WAFL, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load i32, i32* @TA_RAS_BLOCK__DF, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load i32, i32* @TA_RAS_BLOCK__SMN, align 4
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %1
  %26 = load i32, i32* @TA_RAS_BLOCK__SEM, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %1
  %28 = load i32, i32* @TA_RAS_BLOCK__MP0, align 4
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* @TA_RAS_BLOCK__MP1, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @TA_RAS_BLOCK__FUSE, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @TA_RAS_BLOCK__UMC, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
