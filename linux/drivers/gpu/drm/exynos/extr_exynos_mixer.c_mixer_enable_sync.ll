; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_enable_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_enable_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i64, i32 }

@MXR_VER_16_0_33_0 = common dso_local global i64 0, align 8
@MXR_VER_128_0_0_184 = common dso_local global i64 0, align 8
@MXR_CFG = common dso_local global i32 0, align 4
@MXR_CFG_LAYER_UPDATE = common dso_local global i32 0, align 4
@MXR_STATUS = common dso_local global i32 0, align 4
@MXR_STATUS_SYNC_ENABLE = common dso_local global i32 0, align 4
@MXR_BIT_VP_ENABLED = common dso_local global i32 0, align 4
@VP_SHADOW_UPDATE = common dso_local global i32 0, align 4
@VP_SHADOW_UPDATE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*)* @mixer_enable_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_enable_sync(%struct.mixer_context* %0) #0 {
  %2 = alloca %struct.mixer_context*, align 8
  store %struct.mixer_context* %0, %struct.mixer_context** %2, align 8
  %3 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MXR_VER_16_0_33_0, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %10 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MXR_VER_128_0_0_184, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8, %1
  %15 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %16 = load i32, i32* @MXR_CFG, align 4
  %17 = load i32, i32* @MXR_CFG_LAYER_UPDATE, align 4
  %18 = call i32 @mixer_reg_writemask(%struct.mixer_context* %15, i32 %16, i32 -1, i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  %20 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %21 = load i32, i32* @MXR_STATUS, align 4
  %22 = load i32, i32* @MXR_STATUS_SYNC_ENABLE, align 4
  %23 = call i32 @mixer_reg_writemask(%struct.mixer_context* %20, i32 %21, i32 -1, i32 %22)
  %24 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %25 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %26 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %31 = load i32, i32* @VP_SHADOW_UPDATE, align 4
  %32 = load i32, i32* @VP_SHADOW_UPDATE_ENABLE, align 4
  %33 = call i32 @vp_reg_write(%struct.mixer_context* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %19
  ret void
}

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @vp_reg_write(%struct.mixer_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
