; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ltdc_device* }
%struct.ltdc_device = type { i32, i32, i32 }
%struct.drm_crtc = type { i32 }

@ISR_LIF = common dso_local global i32 0, align 4
@ISR_FUIF = common dso_local global i32 0, align 4
@ISR_TERRIF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ltdc_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltdc_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.ltdc_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.drm_device*
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.ltdc_device*, %struct.ltdc_device** %11, align 8
  store %struct.ltdc_device* %12, %struct.ltdc_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device* %13, i32 0)
  store %struct.drm_crtc* %14, %struct.drm_crtc** %7, align 8
  %15 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %16 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ISR_LIF, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %23 = call i32 @drm_crtc_handle_vblank(%struct.drm_crtc* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %26 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %29 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ISR_FUIF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* @ISR_FUIF, align 4
  %36 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %37 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %42 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ISR_TERRIF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* @ISR_TERRIF, align 4
  %49 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %50 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %55 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %57
}

declare dso_local %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_crtc_handle_vblank(%struct.drm_crtc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
