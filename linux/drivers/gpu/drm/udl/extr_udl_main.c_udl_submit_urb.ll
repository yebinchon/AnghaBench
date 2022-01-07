; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_submit_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_submit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.urb = type { i64 }
%struct.udl_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"usb_submit_urb error %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_submit_urb(%struct.drm_device* %0, %struct.urb* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.udl_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.udl_device* @to_udl(%struct.drm_device* %9)
  store %struct.udl_device* %10, %struct.udl_device** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %13 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.urb*, %struct.urb** %5, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i32 @usb_submit_urb(%struct.urb* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = call i32 @udl_urb_completion(%struct.urb* %28)
  %30 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %31 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %30, i32 0, i32 0
  %32 = call i32 @atomic_set(i32* %31, i32 1)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %27, %3
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.udl_device* @to_udl(%struct.drm_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @udl_urb_completion(%struct.urb*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
