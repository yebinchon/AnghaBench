; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fbdev_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fbdev_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fb_ops*, %struct.fb_ops*, i64 }
%struct.fb_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_fbdev_teardown(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca %struct.fb_ops*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  store %struct.drm_fb_helper* %7, %struct.drm_fb_helper** %3, align 8
  store %struct.fb_ops* null, %struct.fb_ops** %4, align 8
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %9 = icmp ne %struct.drm_fb_helper* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %18 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %25 = call i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper* %24)
  br label %26

26:                                               ; preds = %23, %16, %11
  %27 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %33 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.fb_ops*, %struct.fb_ops** %35, align 8
  %37 = icmp ne %struct.fb_ops* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %40 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @fb_deferred_io_cleanup(%struct.TYPE_2__* %41)
  %43 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %44 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.fb_ops*, %struct.fb_ops** %46, align 8
  %48 = call i32 @kfree(%struct.fb_ops* %47)
  %49 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %50 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.fb_ops*, %struct.fb_ops** %52, align 8
  store %struct.fb_ops* %53, %struct.fb_ops** %4, align 8
  br label %54

54:                                               ; preds = %38, %31, %26
  %55 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %56 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %55)
  %57 = load %struct.fb_ops*, %struct.fb_ops** %4, align 8
  %58 = call i32 @kfree(%struct.fb_ops* %57)
  %59 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %60 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %65 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @drm_framebuffer_remove(i64 %66)
  br label %68

68:                                               ; preds = %10, %63, %54
  ret void
}

declare dso_local i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @fb_deferred_io_cleanup(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.fb_ops*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_framebuffer_remove(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
