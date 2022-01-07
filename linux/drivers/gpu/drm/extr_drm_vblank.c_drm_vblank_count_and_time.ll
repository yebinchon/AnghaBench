; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_count_and_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_count_and_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32*)* @drm_vblank_count_and_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_vblank_count_and_time(%struct.drm_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_vblank_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %13, i64 %15
  store %struct.drm_vblank_crtc* %16, %struct.drm_vblank_crtc** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %47

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %39, %27
  %29 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %30 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %29, i32 0, i32 2
  %31 = call i32 @read_seqbegin(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %33 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %36 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %41 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %40, i32 0, i32 2
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @read_seqretry(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %28, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
