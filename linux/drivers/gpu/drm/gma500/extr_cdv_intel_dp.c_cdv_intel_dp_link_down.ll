; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@DP_PORT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DP_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*)* @cdv_intel_dp_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_link_down(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.cdv_intel_dp*, align 8
  %5 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %6 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %10, i32 0, i32 0
  %12 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %11, align 8
  store %struct.cdv_intel_dp* %12, %struct.cdv_intel_dp** %4, align 8
  %13 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %14 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %17 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_READ(i32 %18)
  %20 = load i32, i32* @DP_PORT_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %54

24:                                               ; preds = %1
  %25 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @DP_LINK_TRAIN_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %31 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DP_LINK_TRAIN_PAT_IDLE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @REG_WRITE(i32 %32, i32 %35)
  %37 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %38 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @REG_READ(i32 %39)
  %41 = call i32 @msleep(i32 17)
  %42 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %43 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @DP_PORT_EN, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i32 @REG_WRITE(i32 %44, i32 %48)
  %50 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %51 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @REG_READ(i32 %52)
  br label %54

54:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
