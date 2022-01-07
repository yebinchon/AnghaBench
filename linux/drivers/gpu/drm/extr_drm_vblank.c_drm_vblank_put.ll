; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, i32 }

@drm_vblank_offdelay = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @drm_vblank_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_vblank_put(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_vblank_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 2
  %8 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %8, i64 %10
  store %struct.drm_vblank_crtc* %11, %struct.drm_vblank_crtc** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %22, i32 0, i32 1
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %65

30:                                               ; preds = %21
  %31 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %32 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %31, i32 0, i32 1
  %33 = call i64 @atomic_dec_and_test(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load i32, i32* @drm_vblank_offdelay, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %65

39:                                               ; preds = %35
  %40 = load i32, i32* @drm_vblank_offdelay, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %44 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %43, i32 0, i32 0
  %45 = call i32 @vblank_disable_fn(i32* %44)
  br label %63

46:                                               ; preds = %39
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %52, i32 0, i32 0
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i32, i32* @drm_vblank_offdelay, align 4
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sdiv i32 %57, 1000
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %54, %59
  %61 = call i32 @mod_timer(i32* %53, i64 %60)
  br label %62

62:                                               ; preds = %51, %46
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %20, %29, %38, %64, %30
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @vblank_disable_fn(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
