; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_crtc = type { i32, i64 }

@LCD_SPU_IRQ_ENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada_crtc*, i32)* @armada_drm_crtc_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_drm_crtc_disable_irq(%struct.armada_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.armada_crtc*, align 8
  %4 = alloca i32, align 4
  store %struct.armada_crtc* %0, %struct.armada_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %6 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LCD_SPU_IRQ_ENA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  br label %27

27:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
