; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_train_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_train_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to start training %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to get training stat %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"rate:0x%x, lanes:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_train_link(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %5 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %6 = call i32 @cdn_dp_training_start(%struct.cdn_dp_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %11 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DRM_DEV_ERROR(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %18 = call i32 @cdn_dp_get_training_status(%struct.cdn_dp_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %23 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DRM_DEV_ERROR(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %16
  %29 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %30 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %33 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %37 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DRM_DEV_DEBUG_KMS(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %28, %21, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @cdn_dp_training_start(%struct.cdn_dp_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @cdn_dp_get_training_status(%struct.cdn_dp_device*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
