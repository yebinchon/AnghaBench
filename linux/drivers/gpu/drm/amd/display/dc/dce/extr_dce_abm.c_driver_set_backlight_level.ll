; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_driver_set_backlight_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_driver_set_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_abm = type { i32 }

@BL_PWM_PERIOD_CNTL = common dso_local global i32 0, align 4
@BL_PWM_PERIOD_BITCNT = common dso_local global i32 0, align 4
@BL_PWM_PERIOD = common dso_local global i32 0, align 4
@BL_PWM_GRP1_REG_LOCK = common dso_local global i32 0, align 4
@BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN = common dso_local global i32 0, align 4
@BL_PWM_CNTL = common dso_local global i32 0, align 4
@BL_ACTIVE_INT_FRAC_CNT = common dso_local global i32 0, align 4
@BL_PWM_GRP1_REG_UPDATE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_abm*, i32)* @driver_set_backlight_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @driver_set_backlight_level(%struct.dce_abm* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_abm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dce_abm* %0, %struct.dce_abm** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @BL_PWM_PERIOD_CNTL, align 4
  %11 = load i32, i32* @BL_PWM_PERIOD_BITCNT, align 4
  %12 = load i32, i32* @BL_PWM_PERIOD, align 4
  %13 = call i32 @REG_GET_2(i32 %10, i32 %11, i32* %9, i32 %12, i32* %6)
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 16, i32* %7, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %20, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 65535
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = ashr i32 %33, %35
  %37 = and i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @BL_PWM_GRP1_REG_LOCK, align 4
  %41 = load i32, i32* @BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN, align 4
  %42 = load i32, i32* @BL_PWM_GRP1_REG_LOCK, align 4
  %43 = call i32 @REG_UPDATE_2(i32 %40, i32 %41, i32 1, i32 %42, i32 1)
  %44 = load i32, i32* @BL_PWM_CNTL, align 4
  %45 = load i32, i32* @BL_ACTIVE_INT_FRAC_CNT, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @BL_PWM_GRP1_REG_LOCK, align 4
  %49 = load i32, i32* @BL_PWM_GRP1_REG_LOCK, align 4
  %50 = call i32 @REG_UPDATE(i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* @BL_PWM_GRP1_REG_LOCK, align 4
  %52 = load i32, i32* @BL_PWM_GRP1_REG_UPDATE_PENDING, align 4
  %53 = call i32 @REG_WAIT(i32 %51, i32 %52, i32 0, i32 1, i32 10000)
  ret void
}

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
