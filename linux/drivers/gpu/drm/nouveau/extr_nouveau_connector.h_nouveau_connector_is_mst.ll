; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.h_nouveau_connector_is_mst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.h_nouveau_connector_is_mst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.nouveau_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { i64 }

@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@DCB_OUTPUT_ANY = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DPMST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @nouveau_connector_is_mst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_is_mst(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_encoder*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %14 = load i32, i32* @DCB_OUTPUT_ANY, align 4
  %15 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %13, i32 %14)
  store %struct.nouveau_encoder* %15, %struct.nouveau_encoder** %4, align 8
  %16 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %17 = icmp ne %struct.nouveau_encoder* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.drm_encoder* %22, %struct.drm_encoder** %5, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRM_MODE_ENCODER_DPMST, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %18, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.nouveau_encoder* @find_encoder(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
