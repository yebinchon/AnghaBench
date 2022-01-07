; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_enable_sclk_ds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_enable_sclk_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@DEEP_SLEEP_CNTL = common dso_local global i32 0, align 4
@DEEP_SLEEP_CNTL2 = common dso_local global i32 0, align 4
@R_DIS = common dso_local global i32 0, align 4
@HS_MASK = common dso_local global i32 0, align 4
@LB_UFP_EN = common dso_local global i32 0, align 4
@INOUT_C_MASK = common dso_local global i32 0, align 4
@ENABLE_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @sumo_enable_sclk_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_enable_sclk_ds(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = load i32, i32* @DEEP_SLEEP_CNTL, align 4
  %12 = call i32 @RREG32(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @DEEP_SLEEP_CNTL2, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %15 = load i32, i32* @R_DIS, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @HS_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 4095
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  br label %28

26:                                               ; preds = %10
  %27 = load i32, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 4095, %25 ], [ %27, %26 ]
  %30 = call i32 @HS(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @LB_UFP_EN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @INOUT_C_MASK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = call i32 @INOUT_C(i32 15)
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @DEEP_SLEEP_CNTL2, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  %45 = load i32, i32* @DEEP_SLEEP_CNTL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %2
  %49 = load i32, i32* @DEEP_SLEEP_CNTL, align 4
  %50 = load i32, i32* @ENABLE_DS, align 4
  %51 = xor i32 %50, -1
  %52 = call i32 @WREG32_P(i32 %49, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %48, %28
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @HS(i32) #1

declare dso_local i32 @INOUT_C(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
