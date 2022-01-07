; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_crtc = type { i32, i64 }

@CFG_DUMB_ENA = common dso_local global i32 0, align 4
@DUMB_MASK = common dso_local global i32 0, align 4
@DUMB24_RGB888_0 = common dso_local global i32 0, align 4
@DUMB_BLANK = common dso_local global i32 0, align 4
@CFG_INV_CSYNC = common dso_local global i32 0, align 4
@CFG_INV_HSYNC = common dso_local global i32 0, align 4
@CFG_INV_VSYNC = common dso_local global i32 0, align 4
@LCD_SPU_DUMB_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada_crtc*, i32)* @armada_drm_crtc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_drm_crtc_update(%struct.armada_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.armada_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.armada_crtc* %0, %struct.armada_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @CFG_DUMB_ENA, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DUMB_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @DUMB24_RGB888_0, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @DUMB_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @DUMB_BLANK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %18, %15
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CFG_INV_CSYNC, align 4
  %35 = load i32, i32* @CFG_INV_HSYNC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CFG_INV_VSYNC, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %41 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @armada_updatel(i32 %33, i32 %39, i64 %44)
  ret void
}

declare dso_local i32 @armada_updatel(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
