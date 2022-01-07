; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_dispnv04hw.h_NVLockVgaCrtcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_dispnv04hw.h_NVLockVgaCrtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NV_CIO_SR_LOCK_INDEX = common dso_local global i32 0, align 4
@NV_CIO_SR_LOCK_VALUE = common dso_local global i32 0, align 4
@NV_CIO_SR_UNLOCK_RW_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @NVLockVgaCrtcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NVLockVgaCrtcs(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = load i32, i32* @NV_CIO_SR_LOCK_INDEX, align 4
  %11 = call i32 @NVReadVgaCrtc(%struct.drm_device* %9, i32 0, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = load i32, i32* @NV_CIO_SR_LOCK_INDEX, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @NV_CIO_SR_LOCK_VALUE, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NV_CIO_SR_UNLOCK_RW_VALUE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %15, i32 0, i32 %16, i32 %24)
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 17
  br i1 %32, label %33, label %49

33:                                               ; preds = %23
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = call i32 @nv_heads_tied(%struct.drm_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = load i32, i32* @NV_CIO_SR_LOCK_INDEX, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @NV_CIO_SR_LOCK_VALUE, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @NV_CIO_SR_UNLOCK_RW_VALUE, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %38, i32 1, i32 %39, i32 %47)
  br label %49

49:                                               ; preds = %46, %33, %23
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @nv_heads_tied(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
