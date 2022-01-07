; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MXR_INT_STATUS = common dso_local global i32 0, align 4
@MXR_INT_STATUS_VSYNC = common dso_local global i32 0, align 4
@MXR_INT_CLEAR_VSYNC = common dso_local global i32 0, align 4
@MXR_BIT_INTERLACE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mixer_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mixer_context*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mixer_context*
  store %struct.mixer_context* %8, %struct.mixer_context** %5, align 8
  %9 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %10 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %13 = load i32, i32* @MXR_INT_STATUS, align 4
  %14 = call i32 @mixer_reg_read(%struct.mixer_context* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MXR_INT_STATUS_VSYNC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load i32, i32* @MXR_INT_CLEAR_VSYNC, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @MXR_INT_STATUS_VSYNC, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @MXR_BIT_INTERLACE, align 4
  %28 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %29 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %34 = call i32 @mixer_is_synced(%struct.mixer_context* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %44

37:                                               ; preds = %32, %19
  %38 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %39 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @drm_crtc_handle_vblank(i32* %41)
  br label %43

43:                                               ; preds = %37, %2
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %46 = load i32, i32* @MXR_INT_STATUS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mixer_reg_write(%struct.mixer_context* %45, i32 %46, i32 %47)
  %49 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %50 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mixer_reg_read(%struct.mixer_context*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mixer_is_synced(%struct.mixer_context*) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @mixer_reg_write(%struct.mixer_context*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
