; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_wait_for_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_wait_for_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC2_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_wait_for_vblank(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %70

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %17 = call i32 @RREG32(i32 %16)
  %18 = load i32, i32* @RADEON_CRTC_EN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %70

22:                                               ; preds = %15
  br label %31

23:                                               ; preds = %12
  %24 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = load i32, i32* @RADEON_CRTC2_EN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %70

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %49, %31
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @r100_is_in_vblank(%struct.radeon_device* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = urem i32 %38, 100
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @r100_is_counter_moving(%struct.radeon_device* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %50

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %37
  br label %32

50:                                               ; preds = %47, %32
  br label %51

51:                                               ; preds = %69, %50
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @r100_is_in_vblank(%struct.radeon_device* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = urem i32 %58, 100
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @r100_is_counter_moving(%struct.radeon_device* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %70

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %57
  br label %51

70:                                               ; preds = %11, %21, %29, %67, %51
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @r100_is_in_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @r100_is_counter_moving(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
