; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dpc_is_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dpc_is_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, %struct.child_device_config* }
%struct.child_device_config = type { i64, i64 }

@PORT_IDPC = common dso_local global i64 0, align 8
@DEVICE_TYPE_eDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @cdv_intel_dpc_is_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dpc_is_edp(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.child_device_config*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %4, align 8
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %11 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %19 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %24 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %23, i32 0, i32 1
  %25 = load %struct.child_device_config*, %struct.child_device_config** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %25, i64 %27
  store %struct.child_device_config* %28, %struct.child_device_config** %5, align 8
  %29 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %30 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT_IDPC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %36 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEVICE_TYPE_eDP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %46

41:                                               ; preds = %34, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %16

45:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %40, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
