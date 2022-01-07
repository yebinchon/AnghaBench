; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_accel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_7__, %struct.nouveau_fbdev* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_fbdev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fb_info* }
%struct.fb_info = type { i32* }

@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@nouveau_fbcon_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @nouveau_fbcon_accel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_fbcon_accel_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %3, align 8
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 1
  %11 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %10, align 8
  store %struct.nouveau_fbdev* %11, %struct.nouveau_fbdev** %4, align 8
  %12 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  store %struct.fb_info* %15, %struct.fb_info** %5, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %26 = call i32 @nv04_fbcon_accel_init(%struct.fb_info* %25)
  store i32 %26, i32* %6, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = call i32 @nv50_fbcon_accel_init(%struct.fb_info* %37)
  store i32 %38, i32* %6, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %41 = call i32 @nvc0_fbcon_accel_init(%struct.fb_info* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  store i32* @nouveau_fbcon_ops, i32** %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nv04_fbcon_accel_init(%struct.fb_info*) #1

declare dso_local i32 @nv50_fbcon_accel_init(%struct.fb_info*) #1

declare dso_local i32 @nvc0_fbcon_accel_init(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
