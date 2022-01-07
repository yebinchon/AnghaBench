; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_from_id_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_from_id_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_release = type { i32 }
%struct.qxl_device = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to find id in release_idr\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qxl_release* @qxl_release_from_id_locked(%struct.qxl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.qxl_release*, align 8
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_release*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %8 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %11 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %10, i32 0, i32 1
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.qxl_release* @idr_find(i32* %11, i32 %12)
  store %struct.qxl_release* %13, %struct.qxl_release** %6, align 8
  %14 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %15 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  %18 = icmp ne %struct.qxl_release* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.qxl_release* null, %struct.qxl_release** %3, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  store %struct.qxl_release* %22, %struct.qxl_release** %3, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.qxl_release*, %struct.qxl_release** %3, align 8
  ret %struct.qxl_release* %24
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.qxl_release* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
