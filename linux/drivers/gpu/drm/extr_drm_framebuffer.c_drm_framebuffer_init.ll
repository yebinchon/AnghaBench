; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.drm_framebuffer = type { i32, i32, i32, %struct.drm_framebuffer_funcs*, i32, i32, %struct.drm_device* }
%struct.drm_framebuffer_funcs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@DRM_MODE_OBJECT_FB = common dso_local global i32 0, align 4
@drm_framebuffer_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_framebuffer_init(%struct.drm_device* %0, %struct.drm_framebuffer* %1, %struct.drm_framebuffer_funcs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_framebuffer_funcs*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.drm_framebuffer_funcs* %2, %struct.drm_framebuffer_funcs** %7, align 8
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %9, i32 0, i32 6
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = icmp ne %struct.drm_device* %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %20
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 4
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %7, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 3
  store %struct.drm_framebuffer_funcs* %32, %struct.drm_framebuffer_funcs** %34, align 8
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcpy(i32 %37, i32 %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 0
  %45 = load i32, i32* @DRM_MODE_OBJECT_FB, align 4
  %46 = load i32, i32* @drm_framebuffer_free, align 4
  %47 = call i32 @__drm_mode_object_add(%struct.drm_device* %42, i32* %44, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  br label %75

51:                                               ; preds = %28
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %62 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %61, i32 0, i32 1
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = call i32 @list_add(i32* %62, i32* %65)
  %67 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %73 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %72, i32 0, i32 0
  %74 = call i32 @drm_mode_object_register(%struct.drm_device* %71, i32* %73)
  br label %75

75:                                               ; preds = %51, %50
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @__drm_mode_object_add(%struct.drm_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_mode_object_register(%struct.drm_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
