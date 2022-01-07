; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_accel_ce_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_accel_ce_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvif_device }
%struct.nvif_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@NV_DEVICE_INFO_V0_KEPLER = common dso_local global i64 0, align 8
@NvDmaFB = common dso_local global i32 0, align 4
@NvDmaTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create ce channel, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_drm*)* @nouveau_accel_ce_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_accel_ce_init(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nvif_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %5 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.nvif_device* %7, %struct.nvif_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %9 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NV_DEVICE_INFO_V0_KEPLER, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %16 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %17 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %18 = call i32 @nvif_fifo_runlist_ce(%struct.nvif_device* %17)
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %19, i32 0, i32 0
  %21 = call i32 @nouveau_channel_new(%struct.nouveau_drm* %15, %struct.nvif_device* %16, i32 %18, i32 0, i32 1, i32* %20)
  store i32 %21, i32* %4, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %24 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 163
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %30 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 170
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %36 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 172
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %42 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %43 = load i32, i32* @NvDmaFB, align 4
  %44 = load i32, i32* @NvDmaTT, align 4
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %46 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %45, i32 0, i32 0
  %47 = call i32 @nouveau_channel_new(%struct.nouveau_drm* %41, %struct.nvif_device* %42, i32 %43, i32 %44, i32 0, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %34, %28, %22
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @NV_ERROR(%struct.nouveau_drm* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @nouveau_channel_new(%struct.nouveau_drm*, %struct.nvif_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @nvif_fifo_runlist_ce(%struct.nvif_device*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
