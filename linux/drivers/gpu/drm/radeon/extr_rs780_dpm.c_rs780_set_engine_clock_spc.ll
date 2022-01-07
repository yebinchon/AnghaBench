; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_spc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_spc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.igp_ps = type { i64, i64 }
%struct.igp_power_info = type { i64 }

@CG_INTGFX_MISC = common dso_local global i32 0, align 4
@FVTHROT_VBLANK_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @rs780_set_engine_clock_spc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_set_engine_clock_spc(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.igp_ps*, align 8
  %8 = alloca %struct.igp_ps*, align 8
  %9 = alloca %struct.igp_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %11 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %10)
  store %struct.igp_ps* %11, %struct.igp_ps** %7, align 8
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %13 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %12)
  store %struct.igp_ps* %13, %struct.igp_ps** %8, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %14)
  store %struct.igp_power_info* %15, %struct.igp_power_info** %9, align 8
  %16 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %17 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.igp_ps*, %struct.igp_ps** %8, align 8
  %20 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %25 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.igp_ps*, %struct.igp_ps** %8, align 8
  %28 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %48

32:                                               ; preds = %23, %3
  %33 = load %struct.igp_power_info*, %struct.igp_power_info** %9, align 8
  %34 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @CG_INTGFX_MISC, align 4
  %39 = load i32, i32* @FVTHROT_VBLANK_SEL, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i32 %38, i32 0, i32 %40)
  br label %48

42:                                               ; preds = %32
  %43 = load i32, i32* @CG_INTGFX_MISC, align 4
  %44 = load i32, i32* @FVTHROT_VBLANK_SEL, align 4
  %45 = load i32, i32* @FVTHROT_VBLANK_SEL, align 4
  %46 = xor i32 %45, -1
  %47 = call i32 @WREG32_P(i32 %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %31, %42, %37
  ret void
}

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
