; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_cursor.c_nv04_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_cursor.c_nv04_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@nv04_cursor_set_offset = common dso_local global i32 0, align 4
@nv04_cursor_set_pos = common dso_local global i32 0, align 4
@nv04_cursor_hide = common dso_local global i32 0, align 4
@nv04_cursor_show = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_cursor_init(%struct.nouveau_crtc* %0) #0 {
  %2 = alloca %struct.nouveau_crtc*, align 8
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %2, align 8
  %3 = load i32, i32* @nv04_cursor_set_offset, align 4
  %4 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @nv04_cursor_set_pos, align 4
  %8 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @nv04_cursor_hide, align 4
  %12 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @nv04_cursor_show, align 4
  %16 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %17 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
