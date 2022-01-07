; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_page_flip_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_page_flip_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nouveau_drm*, %struct.nouveau_fence_chan* }
%struct.nouveau_drm = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_fence_chan = type { i32 }
%struct.nouveau_bo = type { i32 }
%struct.nv04_page_flip_state = type { i32 }
%struct.nouveau_fence = type { i32 }

@NvSubSw = common dso_local global i32 0, align 4
@NV_SW_PAGE_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.nouveau_bo*, %struct.nouveau_bo*, %struct.nv04_page_flip_state*, %struct.nouveau_fence**)* @nv04_page_flip_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_page_flip_emit(%struct.nouveau_channel* %0, %struct.nouveau_bo* %1, %struct.nouveau_bo* %2, %struct.nv04_page_flip_state* %3, %struct.nouveau_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_channel*, align 8
  %8 = alloca %struct.nouveau_bo*, align 8
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca %struct.nv04_page_flip_state*, align 8
  %11 = alloca %struct.nouveau_fence**, align 8
  %12 = alloca %struct.nouveau_fence_chan*, align 8
  %13 = alloca %struct.nouveau_drm*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %7, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %8, align 8
  store %struct.nouveau_bo* %2, %struct.nouveau_bo** %9, align 8
  store %struct.nv04_page_flip_state* %3, %struct.nv04_page_flip_state** %10, align 8
  store %struct.nouveau_fence** %4, %struct.nouveau_fence*** %11, align 8
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %17, i32 0, i32 1
  %19 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %18, align 8
  store %struct.nouveau_fence_chan* %19, %struct.nouveau_fence_chan** %12, align 8
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %21 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %20, i32 0, i32 0
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %21, align 8
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %13, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  store %struct.drm_device* %25, %struct.drm_device** %14, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i64, i64* %15, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.nv04_page_flip_state*, %struct.nv04_page_flip_state** %10, align 8
  %31 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %30, i32 0, i32 0
  %32 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %12, align 8
  %33 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %41 = call i32 @nouveau_fence_sync(%struct.nouveau_bo* %39, %struct.nouveau_channel* %40, i32 0, i32 0)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  br label %67

45:                                               ; preds = %5
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %47 = call i32 @RING_SPACE(%struct.nouveau_channel* %46, i32 2)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %67

51:                                               ; preds = %45
  %52 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %53 = load i32, i32* @NvSubSw, align 4
  %54 = load i32, i32* @NV_SW_PAGE_FLIP, align 4
  %55 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %57 = call i32 @OUT_RING(%struct.nouveau_channel* %56, i32 0)
  %58 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %59 = call i32 @FIRE_RING(%struct.nouveau_channel* %58)
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %61 = load %struct.nouveau_fence**, %struct.nouveau_fence*** %11, align 8
  %62 = call i32 @nouveau_fence_new(%struct.nouveau_channel* %60, i32 0, %struct.nouveau_fence** %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %67

66:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %80

67:                                               ; preds = %65, %50, %44
  %68 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.nv04_page_flip_state*, %struct.nv04_page_flip_state** %10, align 8
  %73 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %72, i32 0, i32 0
  %74 = call i32 @list_del(i32* %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %67, %66
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_fence_sync(%struct.nouveau_bo*, %struct.nouveau_channel*, i32, i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

declare dso_local i32 @nouveau_fence_new(%struct.nouveau_channel*, i32, %struct.nouveau_fence**) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
