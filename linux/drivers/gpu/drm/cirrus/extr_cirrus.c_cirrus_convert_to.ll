; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_convert_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_convert_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@CIRRUS_MAX_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*)* @cirrus_convert_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrus_convert_to(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %3, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %5 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %14 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CIRRUS_MAX_PITCH, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %22 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 3
  %25 = load i32, i32* @CIRRUS_MAX_PITCH, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 3, i32* %2, align 4
  br label %30

28:                                               ; preds = %20
  store i32 2, i32* %2, align 4
  br label %30

29:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %27
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
