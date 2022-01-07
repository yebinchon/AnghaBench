; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_mode_getfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_mode_getfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.drm_framebuffer*, %struct.drm_file*, i64*)* }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getfb(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_mode_fb_cmd*
  store %struct.drm_mode_fb_cmd* %12, %struct.drm_mode_fb_cmd** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_MODESET, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %112

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %24 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device* %21, %struct.drm_file* %22, i32 %25)
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %9, align 8
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %28 = icmp ne %struct.drm_framebuffer* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %112

32:                                               ; preds = %20
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %108

42:                                               ; preds = %32
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.drm_framebuffer*, %struct.drm_file*, i64*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i64*)** %46, align 8
  %48 = icmp ne i32 (%struct.drm_framebuffer*, %struct.drm_file*, i64*)* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %108

52:                                               ; preds = %42
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %69 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %71 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 8
  %78 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %79 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %81 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %86 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %88 = call i32 @drm_is_current_master(%struct.drm_file* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %52
  %91 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %92 = call i32 @capable(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %96 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  store i32 0, i32* %10, align 4
  br label %108

97:                                               ; preds = %90, %52
  %98 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %99 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.drm_framebuffer*, %struct.drm_file*, i64*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i64*)** %101, align 8
  %103 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %104 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %105 = load %struct.drm_mode_fb_cmd*, %struct.drm_mode_fb_cmd** %8, align 8
  %106 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %105, i32 0, i32 1
  %107 = call i32 %102(%struct.drm_framebuffer* %103, %struct.drm_file* %104, i64* %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %97, %94, %49, %39
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %110 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %29, %17
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @drm_is_current_master(%struct.drm_file*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
