; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.cdn_dp_device = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to disable encoder %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @cdn_dp_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdn_dp_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.cdn_dp_device* @encoder_to_dp(%struct.drm_encoder* %5)
  store %struct.cdn_dp_device* %6, %struct.cdn_dp_device** %3, align 8
  %7 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %8 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %7, i32 0, i32 2
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %11 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %16 = call i32 @cdn_dp_disable(%struct.cdn_dp_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @DRM_DEV_ERROR(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %14
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %28 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %27, i32 0, i32 2
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %31 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %36 = call i64 @cdn_dp_connected_port(%struct.cdn_dp_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %40 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %39, i32 0, i32 0
  %41 = call i32 @schedule_work(i32* %40)
  br label %42

42:                                               ; preds = %38, %34, %26
  ret void
}

declare dso_local %struct.cdn_dp_device* @encoder_to_dp(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cdn_dp_disable(%struct.cdn_dp_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @cdn_dp_connected_port(%struct.cdn_dp_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
