; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i64, i32, i32 }

@MXR_BIT_INTERLACE = common dso_local global i32 0, align 4
@MXR_CFG_SCAN_INTERLACE = common dso_local global i32 0, align 4
@MXR_CFG_SCAN_PROGRESSIVE = common dso_local global i32 0, align 4
@MXR_VER_128_0_0_184 = common dso_local global i64 0, align 8
@MXR_RESOLUTION = common dso_local global i32 0, align 4
@MXR_CFG = common dso_local global i32 0, align 4
@MXR_CFG_SCAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*, i32, i32)* @mixer_cfg_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_cfg_scan(%struct.mixer_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mixer_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MXR_BIT_INTERLACE, align 4
  %9 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %10 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %9, i32 0, i32 2
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @MXR_CFG_SCAN_INTERLACE, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @MXR_CFG_SCAN_PROGRESSIVE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %20 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MXR_VER_128_0_0_184, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %26 = load i32, i32* @MXR_RESOLUTION, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MXR_MXR_RES_HEIGHT(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @MXR_MXR_RES_WIDTH(i32 %29)
  %31 = or i32 %28, %30
  %32 = call i32 @mixer_reg_write(%struct.mixer_context* %25, i32 %26, i32 %31)
  br label %39

33:                                               ; preds = %17
  %34 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %35 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %33, %24
  %40 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %41 = load i32, i32* @MXR_CFG, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MXR_CFG_SCAN_MASK, align 4
  %44 = call i32 @mixer_reg_writemask(%struct.mixer_context* %40, i32 %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mixer_reg_write(%struct.mixer_context*, i32, i32) #1

declare dso_local i32 @MXR_MXR_RES_HEIGHT(i32) #1

declare dso_local i32 @MXR_MXR_RES_WIDTH(i32) #1

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
