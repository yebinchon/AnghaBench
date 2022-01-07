; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_placement = type { i32 }
%struct.vmw_framebuffer = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.vmw_private = type { i32, i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.TYPE_11__ = type { %struct.vmw_buffer_object* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.vmw_buffer_object* }

@SVGA_CAP_3D = common dso_local global i32 0, align 4
@vmw_vram_gmr_placement = common dso_local global %struct.ttm_placement zeroinitializer, align 4
@vmw_sys_placement = common dso_local global %struct.ttm_placement zeroinitializer, align 4
@vmw_mob_placement = common dso_local global %struct.ttm_placement zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_framebuffer*)* @vmw_framebuffer_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_framebuffer_pin(%struct.vmw_framebuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_framebuffer*, align 8
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_buffer_object*, align 8
  %6 = alloca %struct.ttm_placement*, align 8
  %7 = alloca i32, align 4
  store %struct.vmw_framebuffer* %0, %struct.vmw_framebuffer** %3, align 8
  %8 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %9 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.vmw_private* @vmw_priv(i32 %11)
  store %struct.vmw_private* %12, %struct.vmw_private** %4, align 8
  %13 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %14 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %19 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %18, i32 0, i32 1
  %20 = call %struct.TYPE_11__* @vmw_framebuffer_to_vfbd(%struct.TYPE_10__* %19)
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %21, align 8
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %25 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %24, i32 0, i32 1
  %26 = call %struct.TYPE_9__* @vmw_framebuffer_to_vfbs(%struct.TYPE_10__* %25)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %30, align 8
  br label %32

32:                                               ; preds = %23, %17
  %33 = phi %struct.vmw_buffer_object* [ %22, %17 ], [ %31, %23 ]
  store %struct.vmw_buffer_object* %33, %struct.vmw_buffer_object** %5, align 8
  %34 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %35 = icmp ne %struct.vmw_buffer_object* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %75

37:                                               ; preds = %32
  %38 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %70 [
    i32 130, label %41
    i32 129, label %49
    i32 128, label %49
  ]

41:                                               ; preds = %37
  %42 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %43 = call i32 @vmw_overlay_pause_all(%struct.vmw_private* %42)
  %44 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %45 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %46 = call i32 @vmw_bo_pin_in_start_of_vram(%struct.vmw_private* %44, %struct.vmw_buffer_object* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %48 = call i32 @vmw_overlay_resume_all(%struct.vmw_private* %47)
  br label %73

49:                                               ; preds = %37, %37
  %50 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %51 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %56 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SVGA_CAP_3D, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store %struct.ttm_placement* @vmw_vram_gmr_placement, %struct.ttm_placement** %6, align 8
  br label %63

62:                                               ; preds = %54
  store %struct.ttm_placement* @vmw_sys_placement, %struct.ttm_placement** %6, align 8
  br label %63

63:                                               ; preds = %62, %61
  br label %65

64:                                               ; preds = %49
  store %struct.ttm_placement* @vmw_mob_placement, %struct.ttm_placement** %6, align 8
  br label %65

65:                                               ; preds = %64, %63
  %66 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %67 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %68 = load %struct.ttm_placement*, %struct.ttm_placement** %6, align 8
  %69 = call i32 @vmw_bo_pin_in_placement(%struct.vmw_private* %66, %struct.vmw_buffer_object* %67, %struct.ttm_placement* %68, i32 0)
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %37
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %41
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %70, %65, %36
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local %struct.TYPE_11__* @vmw_framebuffer_to_vfbd(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @vmw_framebuffer_to_vfbs(%struct.TYPE_10__*) #1

declare dso_local i32 @vmw_overlay_pause_all(%struct.vmw_private*) #1

declare dso_local i32 @vmw_bo_pin_in_start_of_vram(%struct.vmw_private*, %struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @vmw_overlay_resume_all(%struct.vmw_private*) #1

declare dso_local i32 @vmw_bo_pin_in_placement(%struct.vmw_private*, %struct.vmw_buffer_object*, %struct.ttm_placement*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
