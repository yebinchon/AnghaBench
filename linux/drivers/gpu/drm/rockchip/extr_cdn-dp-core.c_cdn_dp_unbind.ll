; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cdn_dp_device = type { i32*, i32, i64, i32, %struct.drm_connector, %struct.drm_encoder }
%struct.drm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.drm_connector*)* }
%struct.drm_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_encoder*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @cdn_dp_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdn_dp_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cdn_dp_device*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.cdn_dp_device* @dev_get_drvdata(%struct.device* %10)
  store %struct.cdn_dp_device* %11, %struct.cdn_dp_device** %7, align 8
  %12 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %13 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %12, i32 0, i32 5
  store %struct.drm_encoder* %13, %struct.drm_encoder** %8, align 8
  %14 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %15 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %14, i32 0, i32 4
  store %struct.drm_connector* %15, %struct.drm_connector** %9, align 8
  %16 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %17 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %16, i32 0, i32 3
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %20 = call i32 @cdn_dp_encoder_disable(%struct.drm_encoder* %19)
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)** %24, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %27 = call i32 %25(%struct.drm_encoder* %26)
  %28 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.drm_connector*)*, i32 (%struct.drm_connector*)** %31, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %34 = call i32 %32(%struct.drm_connector* %33)
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @pm_runtime_disable(%struct.device* %35)
  %37 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %38 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %43 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @release_firmware(i32 %44)
  br label %46

46:                                               ; preds = %41, %3
  %47 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %48 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %52 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  ret void
}

declare dso_local %struct.cdn_dp_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cdn_dp_encoder_disable(%struct.drm_encoder*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
