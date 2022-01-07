; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_set_mai_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_set_mai_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_hdmi = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }

@VC4_HD_MAI_SMP_N_MASK = common dso_local global i32 0, align 4
@VC4_HD_MAI_SMP_N_SHIFT = common dso_local global i32 0, align 4
@VC4_HD_MAI_SMP_M_MASK = common dso_local global i32 0, align 4
@VC4_HD_MAI_SMP_M_SHIFT = common dso_local global i32 0, align 4
@VC4_HD_MAI_SMP = common dso_local global i32 0, align 4
@VC4_HD_MAI_SMP_N = common dso_local global i32 0, align 4
@VC4_HD_MAI_SMP_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_hdmi*)* @vc4_hdmi_audio_set_mai_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_hdmi_audio_set_mai_clock(%struct.vc4_hdmi* %0) #0 {
  %2 = alloca %struct.vc4_hdmi*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vc4_hdmi* %0, %struct.vc4_hdmi** %2, align 8
  %8 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %2, align 8
  %9 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %13)
  store %struct.vc4_dev* %14, %struct.vc4_dev** %4, align 8
  %15 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %2, align 8
  %16 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_get_rate(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %2, align 8
  %21 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VC4_HD_MAI_SMP_N_MASK, align 4
  %25 = load i32, i32* @VC4_HD_MAI_SMP_N_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @VC4_HD_MAI_SMP_M_MASK, align 4
  %28 = load i32, i32* @VC4_HD_MAI_SMP_M_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = call i32 @rational_best_approximation(i32 %19, i32 %23, i32 %26, i32 %30, i64* %6, i64* %7)
  %32 = load i32, i32* @VC4_HD_MAI_SMP, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @VC4_HD_MAI_SMP_N, align 4
  %35 = call i32 @VC4_SET_FIELD(i64 %33, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, 1
  %38 = load i32, i32* @VC4_HD_MAI_SMP_M, align 4
  %39 = call i32 @VC4_SET_FIELD(i64 %37, i32 %38)
  %40 = or i32 %35, %39
  %41 = call i32 @HD_WRITE(i32 %32, i32 %40)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @rational_best_approximation(i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @HD_WRITE(i32, i32) #1

declare dso_local i32 @VC4_SET_FIELD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
