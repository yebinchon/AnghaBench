; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_getclient.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_getclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_client = type { i64, i64, i64, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@overflowuid = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_getclient(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_client*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_client*
  store %struct.drm_client* %10, %struct.drm_client** %8, align 8
  %11 = load %struct.drm_client*, %struct.drm_client** %8, align 8
  %12 = getelementptr inbounds %struct.drm_client, %struct.drm_client* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_client*, %struct.drm_client** %8, align 8
  %20 = getelementptr inbounds %struct.drm_client, %struct.drm_client* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @task_pid_vnr(i32 %21)
  %23 = load %struct.drm_client*, %struct.drm_client** %8, align 8
  %24 = getelementptr inbounds %struct.drm_client, %struct.drm_client* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @overflowuid, align 4
  %26 = load %struct.drm_client*, %struct.drm_client** %8, align 8
  %27 = getelementptr inbounds %struct.drm_client, %struct.drm_client* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.drm_client*, %struct.drm_client** %8, align 8
  %29 = getelementptr inbounds %struct.drm_client, %struct.drm_client* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.drm_client*, %struct.drm_client** %8, align 8
  %31 = getelementptr inbounds %struct.drm_client, %struct.drm_client* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @task_pid_vnr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
