; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_transfer_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_transfer_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_syncobj_transfer = type { i64, i64 }

@DRIVER_SYNCOBJ_TIMELINE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_transfer_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_syncobj_transfer*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_syncobj_transfer*
  store %struct.drm_syncobj_transfer* %11, %struct.drm_syncobj_transfer** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load i32, i32* @DRIVER_SYNCOBJ_TIMELINE, align 4
  %14 = call i32 @drm_core_check_feature(%struct.drm_device* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %8, align 8
  %21 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %8, align 8
  %29 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %34 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %8, align 8
  %35 = call i32 @drm_syncobj_transfer_to_timeline(%struct.drm_file* %33, %struct.drm_syncobj_transfer* %34)
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %38 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %8, align 8
  %39 = call i32 @drm_syncobj_transfer_to_binary(%struct.drm_file* %37, %struct.drm_syncobj_transfer* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %24, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_syncobj_transfer_to_timeline(%struct.drm_file*, %struct.drm_syncobj_transfer*) #1

declare dso_local i32 @drm_syncobj_transfer_to_binary(%struct.drm_file*, %struct.drm_syncobj_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
