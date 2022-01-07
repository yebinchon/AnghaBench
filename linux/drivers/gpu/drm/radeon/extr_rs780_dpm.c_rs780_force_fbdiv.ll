; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_force_fbdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_force_fbdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.igp_ps = type { i64, i64 }

@GFX_MACRO_BYPASS_CNTL = common dso_local global i32 0, align 4
@SPLL_BYPASS_CNTL = common dso_local global i32 0, align 4
@FVTHROT_FBDIV_REG2 = common dso_local global i32 0, align 4
@FORCED_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@FVTHROT_FBDIV_REG1 = common dso_local global i32 0, align 4
@STARTING_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@FORCE_FEEDBACK_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @rs780_force_fbdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_force_fbdiv(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igp_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.igp_ps* @rs780_get_ps(i32 %10)
  store %struct.igp_ps* %11, %struct.igp_ps** %5, align 8
  %12 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %13 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %16 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %48

20:                                               ; preds = %2
  %21 = load i32, i32* @GFX_MACRO_BYPASS_CNTL, align 4
  %22 = load i32, i32* @SPLL_BYPASS_CNTL, align 4
  %23 = load i32, i32* @SPLL_BYPASS_CNTL, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @WREG32_P(i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* @FVTHROT_FBDIV_REG2, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @FORCED_FEEDBACK_DIV(i32 %27)
  %29 = load i32, i32* @FORCED_FEEDBACK_DIV_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = call i32 @WREG32_P(i32 %26, i32 %28, i32 %30)
  %32 = load i32, i32* @FVTHROT_FBDIV_REG1, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @STARTING_FEEDBACK_DIV(i32 %33)
  %35 = load i32, i32* @STARTING_FEEDBACK_DIV_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @WREG32_P(i32 %32, i32 %34, i32 %36)
  %38 = load i32, i32* @FVTHROT_FBDIV_REG1, align 4
  %39 = load i32, i32* @FORCE_FEEDBACK_DIV, align 4
  %40 = load i32, i32* @FORCE_FEEDBACK_DIV, align 4
  %41 = xor i32 %40, -1
  %42 = call i32 @WREG32_P(i32 %38, i32 %39, i32 %41)
  %43 = call i32 @udelay(i32 100)
  %44 = load i32, i32* @GFX_MACRO_BYPASS_CNTL, align 4
  %45 = load i32, i32* @SPLL_BYPASS_CNTL, align 4
  %46 = xor i32 %45, -1
  %47 = call i32 @WREG32_P(i32 %44, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.igp_ps* @rs780_get_ps(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @FORCED_FEEDBACK_DIV(i32) #1

declare dso_local i32 @STARTING_FEEDBACK_DIV(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
