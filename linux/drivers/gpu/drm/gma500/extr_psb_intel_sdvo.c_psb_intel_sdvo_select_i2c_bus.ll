; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_select_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_select_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { %struct.TYPE_2__*, %struct.sdvo_device_mapping* }
%struct.TYPE_2__ = type { i32 }
%struct.sdvo_device_mapping = type { i64, i64, i64 }
%struct.psb_intel_sdvo = type { i32* }

@GMBUS_PORT_DPB = common dso_local global i64 0, align 8
@GMBUS_RATE_1MHZ = common dso_local global i32 0, align 4
@GMBUS_NUM_PORTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, %struct.psb_intel_sdvo*, i32)* @psb_intel_sdvo_select_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_select_i2c_bus(%struct.drm_psb_private* %0, %struct.psb_intel_sdvo* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.psb_intel_sdvo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdvo_device_mapping*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %4, align 8
  store %struct.psb_intel_sdvo* %1, %struct.psb_intel_sdvo** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @IS_SDVOB(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %15 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %14, i32 0, i32 1
  %16 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %15, align 8
  %17 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %16, i64 0
  store %struct.sdvo_device_mapping* %17, %struct.sdvo_device_mapping** %7, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %19, i32 0, i32 1
  %21 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %20, align 8
  %22 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %21, i64 1
  store %struct.sdvo_device_mapping* %22, %struct.sdvo_device_mapping** %7, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i64, i64* @GMBUS_PORT_DPB, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @GMBUS_RATE_1MHZ, align 4
  %26 = ashr i32 %25, 8
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %29 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %34 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %37 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %32, %23
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @GMBUS_NUM_PORTS, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %45 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %51 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %53 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @gma_intel_gmbus_set_speed(i32* %54, i64 %55)
  %57 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %58 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @gma_intel_gmbus_force_bit(i32* %59, i32 1)
  br label %70

61:                                               ; preds = %39
  %62 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %63 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* @GMBUS_PORT_DPB, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %69 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %61, %43
  ret void
}

declare dso_local i64 @IS_SDVOB(i32) #1

declare dso_local i32 @gma_intel_gmbus_set_speed(i32*, i64) #1

declare dso_local i32 @gma_intel_gmbus_force_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
