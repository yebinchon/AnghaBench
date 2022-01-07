; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_get_guest_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_get_guest_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@SVGA_GMR_FRAMEBUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_bo_get_guest_ptr(%struct.ttm_buffer_object* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TTM_PL_VRAM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* @SVGA_GMR_FRAMEBUFFER, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %20, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
