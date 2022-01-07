; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_is_layer_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_is_layer_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_fb = type { %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Layer TYPE: %d doesn't support fb FMT: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_fb_is_layer_supported(%struct.komeda_fb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.komeda_fb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.komeda_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.komeda_fb* %0, %struct.komeda_fb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.komeda_fb*, %struct.komeda_fb** %4, align 8
  %13 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %12, i32 0, i32 0
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %7, align 8
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %15 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.komeda_dev*, %struct.komeda_dev** %17, align 8
  store %struct.komeda_dev* %18, %struct.komeda_dev** %8, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.komeda_dev*, %struct.komeda_dev** %8, align 8
  %28 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @komeda_format_mod_supported(i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @komeda_get_format_name(i32 %38, i32 %39)
  %41 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %3
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @komeda_format_mod_supported(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32) #1

declare dso_local i32 @komeda_get_format_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
