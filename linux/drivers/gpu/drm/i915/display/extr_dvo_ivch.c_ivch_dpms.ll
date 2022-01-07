; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@VR01 = common dso_local global i32 0, align 4
@VR80 = common dso_local global i32 0, align 4
@VR01_LCD_ENABLE = common dso_local global i32 0, align 4
@VR01_DVO_ENABLE = common dso_local global i32 0, align 4
@VR30 = common dso_local global i32 0, align 4
@VR30_PANEL_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, i32)* @ivch_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivch_dpms(%struct.intel_dvo_device* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dvo_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %10 = call i32 @ivch_reset(%struct.intel_dvo_device* %9)
  %11 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %12 = load i32, i32* @VR01, align 4
  %13 = call i32 @ivch_read(%struct.intel_dvo_device* %11, i32 %12, i32* %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %71

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %21

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %23 = load i32, i32* @VR80, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ivch_write(%struct.intel_dvo_device* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @VR01_LCD_ENABLE, align 4
  %30 = load i32, i32* @VR01_DVO_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %41

34:                                               ; preds = %21
  %35 = load i32, i32* @VR01_LCD_ENABLE, align 4
  %36 = load i32, i32* @VR01_DVO_ENABLE, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %43 = load i32, i32* @VR01, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ivch_write(%struct.intel_dvo_device* %42, i32 %43, i32 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %66, %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 100
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %51 = load i32, i32* @VR30, align 4
  %52 = call i32 @ivch_read(%struct.intel_dvo_device* %50, i32 %51, i32* %7)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %69

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @VR30_PANEL_ON, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %69

64:                                               ; preds = %55
  %65 = call i32 @udelay(i32 1000)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %46

69:                                               ; preds = %63, %54, %46
  %70 = call i32 @udelay(i32 16000)
  br label %71

71:                                               ; preds = %69, %15
  ret void
}

declare dso_local i32 @ivch_reset(%struct.intel_dvo_device*) #1

declare dso_local i32 @ivch_read(%struct.intel_dvo_device*, i32, i32*) #1

declare dso_local i32 @ivch_write(%struct.intel_dvo_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
