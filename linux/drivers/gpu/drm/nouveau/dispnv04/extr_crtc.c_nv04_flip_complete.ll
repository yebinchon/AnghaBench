; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_flip_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_flip_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_notify = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.nouveau_cli = type { %struct.nouveau_drm* }
%struct.nouveau_drm = type { i32, %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }
%struct.nv04_page_flip_state = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@NVIF_NOTIFY_KEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_flip_complete(%struct.nvif_notify* %0) #0 {
  %2 = alloca %struct.nvif_notify*, align 8
  %3 = alloca %struct.nouveau_cli*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca %struct.nv04_page_flip_state, align 8
  store %struct.nvif_notify* %0, %struct.nvif_notify** %2, align 8
  %7 = load %struct.nvif_notify*, %struct.nvif_notify** %2, align 8
  %8 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %13, %struct.nouveau_cli** %3, align 8
  %14 = load %struct.nouveau_cli*, %struct.nouveau_cli** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %14, i32 0, i32 0
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %15, align 8
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %4, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 1
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %18, align 8
  store %struct.nouveau_channel* %19, %struct.nouveau_channel** %5, align 8
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %21 = call i32 @nv04_finish_page_flip(%struct.nouveau_channel* %20, %struct.nv04_page_flip_state* %6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %1
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %6, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @drm_crtc_index(%struct.TYPE_4__* %28)
  %30 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %6, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %6, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %31, %39
  %41 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %6, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.nv04_page_flip_state, %struct.nv04_page_flip_state* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = sdiv i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %40, %49
  %51 = call i32 @nv_set_crtc_base(i32 %26, i32 %29, i64 %50)
  br label %52

52:                                               ; preds = %23, %1
  %53 = load i32, i32* @NVIF_NOTIFY_KEEP, align 4
  ret i32 %53
}

declare dso_local i32 @nv04_finish_page_flip(%struct.nouveau_channel*, %struct.nv04_page_flip_state*) #1

declare dso_local i32 @nv_set_crtc_base(i32, i32, i64) #1

declare dso_local i32 @drm_crtc_index(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
