; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_display_info_set_bus_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_display_info_set_bus_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_info = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_display_info_set_bus_formats(%struct.drm_display_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_display_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.drm_display_info* %0, %struct.drm_display_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %48

17:                                               ; preds = %11, %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmemdup(i32* %24, i32 %28, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %20, %17
  %38 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %33, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
