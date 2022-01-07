; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ltdc_device* }
%struct.ltdc_device = type { i32, i32 }

@LTDC_ISR = common dso_local global i32 0, align 4
@LTDC_ICR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ltdc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltdc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.ltdc_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.drm_device*
  store %struct.drm_device* %8, %struct.drm_device** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.ltdc_device*, %struct.ltdc_device** %10, align 8
  store %struct.ltdc_device* %11, %struct.ltdc_device** %6, align 8
  %12 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %13 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LTDC_ISR, align 4
  %16 = call i32 @reg_read(i32 %14, i32 %15)
  %17 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %18 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %20 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LTDC_ICR, align 4
  %23 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %24 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @reg_write(i32 %21, i32 %22, i32 %25)
  %27 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %27
}

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
