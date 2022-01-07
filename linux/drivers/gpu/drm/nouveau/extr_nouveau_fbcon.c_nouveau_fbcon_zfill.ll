; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_zfill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_zfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i64, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nouveau_fbdev*)* @nouveau_fbcon_zfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_fbcon_zfill(%struct.drm_device* %0, %struct.nouveau_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_fillrect, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_fbdev* %1, %struct.nouveau_fbdev** %4, align 8
  %7 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  store %struct.fb_info* %10, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @ROP_COPY, align 4
  %25 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %29, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = call i32 %30(%struct.fb_info* %31, %struct.fb_fillrect* %6)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
