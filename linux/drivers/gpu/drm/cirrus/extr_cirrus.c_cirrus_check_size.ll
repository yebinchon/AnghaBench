; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_check_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }

@CIRRUS_MAX_PITCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CIRRUS_VRAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.drm_framebuffer*)* @cirrus_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrus_check_size(i32 %0, i32 %1, %struct.drm_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %12 = icmp ne %struct.drm_framebuffer* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %15 = call i32 @cirrus_pitch(%struct.drm_framebuffer* %14)
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @CIRRUS_MAX_PITCH, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @CIRRUS_VRAM_SIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @cirrus_pitch(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
