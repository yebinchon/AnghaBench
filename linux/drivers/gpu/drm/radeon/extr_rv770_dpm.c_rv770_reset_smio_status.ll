; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_reset_smio_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_reset_smio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32 }

@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@SW_SMIO_INDEX_MASK = common dso_local global i32 0, align 4
@SW_SMIO_INDEX_SHIFT = common dso_local global i32 0, align 4
@S3_VID_LOWER_SMIO_CNTL = common dso_local global i32 0, align 4
@S2_VID_LOWER_SMIO_CNTL = common dso_local global i32 0, align 4
@S1_VID_LOWER_SMIO_CNTL = common dso_local global i32 0, align 4
@S0_VID_LOWER_SMIO_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_reset_smio_status(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %6)
  store %struct.rv7xx_power_info* %7, %struct.rv7xx_power_info** %3, align 8
  %8 = load i32, i32* @GENERAL_PWRMGT, align 4
  %9 = call i32 @RREG32(i32 %8)
  %10 = load i32, i32* @SW_SMIO_INDEX_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @SW_SMIO_INDEX_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %25 [
    i32 3, label %15
    i32 2, label %18
    i32 1, label %21
    i32 0, label %24
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @S3_VID_LOWER_SMIO_CNTL, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @S2_VID_LOWER_SMIO_CNTL, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @S1_VID_LOWER_SMIO_CNTL, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %1
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %27 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21, %18, %15
  %30 = load i32, i32* @S0_VID_LOWER_SMIO_CNTL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  %33 = load i32, i32* @GENERAL_PWRMGT, align 4
  %34 = call i32 @SW_SMIO_INDEX(i32 0)
  %35 = load i32, i32* @SW_SMIO_INDEX_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @WREG32_P(i32 %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SW_SMIO_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
