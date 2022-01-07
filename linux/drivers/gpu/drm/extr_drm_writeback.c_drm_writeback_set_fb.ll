; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_set_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_set_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.drm_framebuffer = type { i32 }

@DRM_MODE_CONNECTOR_WRITEBACK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_writeback_set_fb(%struct.drm_connector_state* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %4, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %5, align 8
  %6 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %7 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DRM_MODE_CONNECTOR_WRITEBACK, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_3__* @kzalloc(i32 8, i32 %20)
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %22, i32 0, i32 0
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %25 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @drm_connector_to_writeback(%struct.TYPE_4__* %34)
  %36 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %37 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %2
  %41 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %42 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %46 = call i32 @drm_framebuffer_assign(i32* %44, %struct.drm_framebuffer* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_to_writeback(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_framebuffer_assign(i32*, %struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
