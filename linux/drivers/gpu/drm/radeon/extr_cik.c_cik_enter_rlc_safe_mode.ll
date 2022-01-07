; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enter_rlc_safe_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enter_rlc_safe_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@REQ = common dso_local global i64 0, align 8
@MSG_ENTER_RLC_SAFE_MODE = common dso_local global i32 0, align 4
@RLC_GPR_REG2 = common dso_local global i32 0, align 4
@GFX_POWER_STATUS = common dso_local global i64 0, align 8
@GFX_CLOCK_STATUS = common dso_local global i64 0, align 8
@RLC_GPM_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_enter_rlc_safe_mode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load i64, i64* @REQ, align 8
  %7 = load i32, i32* @MSG_ENTER_RLC_SAFE_MODE, align 4
  %8 = call i64 @MESSAGE(i32 %7)
  %9 = or i64 %6, %8
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @RLC_GPR_REG2, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @WREG32(i32 %10, i64 %11)
  %13 = load i64, i64* @GFX_POWER_STATUS, align 8
  %14 = load i64, i64* @GFX_CLOCK_STATUS, align 8
  %15 = or i64 %13, %14
  store i64 %15, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* @RLC_GPM_STAT, align 4
  %24 = call i64 @RREG32(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %35

30:                                               ; preds = %22
  %31 = call i32 @udelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %16

35:                                               ; preds = %29, %16
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, i32* @RLC_GPR_REG2, align 4
  %44 = call i64 @RREG32(i32 %43)
  %45 = load i64, i64* @REQ, align 8
  %46 = and i64 %44, %45
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %54

49:                                               ; preds = %42
  %50 = call i32 @udelay(i32 1)
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %36

54:                                               ; preds = %48, %36
  ret void
}

declare dso_local i64 @MESSAGE(i32) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
