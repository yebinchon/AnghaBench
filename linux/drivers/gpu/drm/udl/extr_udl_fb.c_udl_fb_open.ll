; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.fb_deferred_io*, %struct.udl_fbdev* }
%struct.fb_deferred_io = type { i32, i32 }
%struct.udl_fbdev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.udl_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"open /dev/fb%d user=%d fb_info=%p count=%d\0A\00", align 1
@DL_DEFIO_WRITE_DELAY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@drm_fb_helper_deferred_io = common dso_local global i32 0, align 4
@fb_defio = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @udl_fb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_fb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udl_fbdev*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.udl_device*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load %struct.udl_fbdev*, %struct.udl_fbdev** %10, align 8
  store %struct.udl_fbdev* %11, %struct.udl_fbdev** %6, align 8
  %12 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %13 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = call %struct.udl_device* @to_udl(%struct.drm_device* %17)
  store %struct.udl_device* %18, %struct.udl_device** %8, align 8
  %19 = load %struct.udl_device*, %struct.udl_device** %8, align 8
  %20 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %19, i32 0, i32 0
  %21 = call i64 @drm_dev_is_unplugged(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %28 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %37 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, %struct.fb_info* %35, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %26, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.udl_device* @to_udl(%struct.drm_device*) #1

declare dso_local i64 @drm_dev_is_unplugged(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, %struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
