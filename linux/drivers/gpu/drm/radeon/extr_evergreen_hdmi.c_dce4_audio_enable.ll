; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_audio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_audio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.r600_audio_pin = type { i32 }

@AZ_HOT_PLUG_CONTROL = common dso_local global i32 0, align 4
@AUDIO_ENABLED = common dso_local global i32 0, align 4
@PIN0_AUDIO_ENABLED = common dso_local global i32 0, align 4
@PIN1_AUDIO_ENABLED = common dso_local global i32 0, align 4
@PIN2_AUDIO_ENABLED = common dso_local global i32 0, align 4
@PIN3_AUDIO_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce4_audio_enable(%struct.radeon_device* %0, %struct.r600_audio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.r600_audio_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.r600_audio_pin* %1, %struct.r600_audio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @AZ_HOT_PLUG_CONTROL, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.r600_audio_pin*, %struct.r600_audio_pin** %5, align 8
  %11 = icmp ne %struct.r600_audio_pin* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %69

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = load i32, i32* @AUDIO_ENABLED, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @PIN0_AUDIO_ENABLED, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @PIN1_AUDIO_ENABLED, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @PIN2_AUDIO_ENABLED, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @PIN3_AUDIO_ENABLED, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %65

52:                                               ; preds = %13
  %53 = load i32, i32* @AUDIO_ENABLED, align 4
  %54 = load i32, i32* @PIN0_AUDIO_ENABLED, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PIN1_AUDIO_ENABLED, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PIN2_AUDIO_ENABLED, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PIN3_AUDIO_ENABLED, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %52, %51
  %66 = load i32, i32* @AZ_HOT_PLUG_CONTROL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %12
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
