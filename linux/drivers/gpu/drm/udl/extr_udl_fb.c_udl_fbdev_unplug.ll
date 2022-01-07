; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fbdev_unplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fbdev_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.udl_device = type { %struct.udl_fbdev* }
%struct.udl_fbdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udl_fbdev_unplug(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.udl_device*, align 8
  %4 = alloca %struct.udl_fbdev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.udl_device* @to_udl(%struct.drm_device* %5)
  store %struct.udl_device* %6, %struct.udl_device** %3, align 8
  %7 = load %struct.udl_device*, %struct.udl_device** %3, align 8
  %8 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %7, i32 0, i32 0
  %9 = load %struct.udl_fbdev*, %struct.udl_fbdev** %8, align 8
  %10 = icmp ne %struct.udl_fbdev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.udl_device*, %struct.udl_device** %3, align 8
  %14 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %13, i32 0, i32 0
  %15 = load %struct.udl_fbdev*, %struct.udl_fbdev** %14, align 8
  store %struct.udl_fbdev* %15, %struct.udl_fbdev** %4, align 8
  %16 = load %struct.udl_fbdev*, %struct.udl_fbdev** %4, align 8
  %17 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %16, i32 0, i32 0
  %18 = call i32 @drm_fb_helper_unlink_fbi(i32* %17)
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.udl_device* @to_udl(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_unlink_fbi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
