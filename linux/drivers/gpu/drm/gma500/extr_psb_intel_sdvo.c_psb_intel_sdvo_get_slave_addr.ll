; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_slave_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_slave_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @psb_intel_sdvo_get_slave_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_get_slave_addr(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.sdvo_device_mapping*, align 8
  %8 = alloca %struct.sdvo_device_mapping*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @IS_SDVOB(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %17 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %16, i32 0, i32 0
  %18 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %17, align 8
  %19 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %18, i64 0
  store %struct.sdvo_device_mapping* %19, %struct.sdvo_device_mapping** %7, align 8
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %21 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %20, i32 0, i32 0
  %22 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %21, align 8
  %23 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %22, i64 1
  store %struct.sdvo_device_mapping* %23, %struct.sdvo_device_mapping** %8, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 0
  %27 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %26, align 8
  %28 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %27, i64 1
  store %struct.sdvo_device_mapping* %28, %struct.sdvo_device_mapping** %7, align 8
  %29 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %30 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %29, i32 0, i32 0
  %31 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %30, align 8
  %32 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %31, i64 0
  store %struct.sdvo_device_mapping* %32, %struct.sdvo_device_mapping** %8, align 8
  br label %33

33:                                               ; preds = %24, %15
  %34 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %35 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %40 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %33
  %43 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %8, align 8
  %44 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %8, align 8
  %49 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 112
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 114, i32* %3, align 4
  br label %60

53:                                               ; preds = %47
  store i32 112, i32* %3, align 4
  br label %60

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @IS_SDVOB(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 112, i32* %3, align 4
  br label %60

59:                                               ; preds = %54
  store i32 114, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %53, %52, %38
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @IS_SDVOB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
