; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_NVSetOwner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_NVSetOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NV_CIO_SR_LOCK_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_44 = common dso_local global i32 0, align 4
@NV_CIO_CRE_2E = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NVSetOwner(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %6)
  store %struct.nouveau_drm* %7, %struct.nouveau_drm** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 3
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 17
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load i32, i32* @NV_CIO_SR_LOCK_INDEX, align 4
  %24 = call i32 @NVReadVgaCrtc(%struct.drm_device* %22, i32 0, i32 %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = load i32, i32* @NV_CIO_SR_LOCK_INDEX, align 4
  %27 = call i32 @NVReadVgaCrtc(%struct.drm_device* %25, i32 1, i32 %26)
  br label %28

28:                                               ; preds = %21, %13
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = load i32, i32* @NV_CIO_CRE_44, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %29, i32 0, i32 %30, i32 %31)
  %33 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 17
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = load i32, i32* @NV_CIO_CRE_2E, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %41, i32 0, i32 %42, i32 %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = load i32, i32* @NV_CIO_CRE_2E, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %45, i32 0, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %28
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
