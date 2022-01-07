; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_framebuffer_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_framebuffer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"atomic remove_fb failed with %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_framebuffer_remove(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %5 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %6 = icmp ne %struct.drm_framebuffer* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 0
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %20 = call i32 @drm_framebuffer_read_refcount(%struct.drm_framebuffer* %19)
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %8
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %28 = call i32 @atomic_remove_fb(%struct.drm_framebuffer* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @WARN(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %35

32:                                               ; preds = %22
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %34 = call i32 @legacy_remove_fb(%struct.drm_framebuffer* %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %8
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %38 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %37)
  br label %39

39:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @drm_framebuffer_read_refcount(%struct.drm_framebuffer*) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @atomic_remove_fb(%struct.drm_framebuffer*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @legacy_remove_fb(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
