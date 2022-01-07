; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_sil164.c_sil164_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_sil164.c_sil164_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, %struct.sil164_priv*, %struct.i2c_adapter* }
%struct.sil164_priv = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SIL164_VID_LO = common dso_local global i32 0, align 4
@SIL164_VID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"sil164 not detected got %d: from %s Slave %d.\0A\00", align 1
@SIL164_DID_LO = common dso_local global i32 0, align 4
@SIL164_DID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"init sil164 dvo controller successfully!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)* @sil164_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sil164_init(%struct.intel_dvo_device* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.sil164_priv*, align 8
  %7 = alloca i8, align 1
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sil164_priv* @kzalloc(i32 4, i32 %8)
  store %struct.sil164_priv* %9, %struct.sil164_priv** %6, align 8
  %10 = load %struct.sil164_priv*, %struct.sil164_priv** %6, align 8
  %11 = icmp eq %struct.sil164_priv* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %16 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %15, i32 0, i32 2
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %16, align 8
  %17 = load %struct.sil164_priv*, %struct.sil164_priv** %6, align 8
  %18 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %19 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %18, i32 0, i32 1
  store %struct.sil164_priv* %17, %struct.sil164_priv** %19, align 8
  %20 = load %struct.sil164_priv*, %struct.sil164_priv** %6, align 8
  %21 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %23 = load i32, i32* @SIL164_VID_LO, align 4
  %24 = call i32 @sil164_readb(%struct.intel_dvo_device* %22, i32 %23, i8* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %69

27:                                               ; preds = %13
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* @SIL164_VID, align 4
  %31 = and i32 %30, 255
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %40 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41)
  br label %69

43:                                               ; preds = %27
  %44 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %45 = load i32, i32* @SIL164_DID_LO, align 4
  %46 = call i32 @sil164_readb(%struct.intel_dvo_device* %44, i32 %45, i8* %7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %69

49:                                               ; preds = %43
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* @SIL164_DID, align 4
  %53 = and i32 %52, 255
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %62 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  br label %69

65:                                               ; preds = %49
  %66 = load %struct.sil164_priv*, %struct.sil164_priv** %6, align 8
  %67 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %72

69:                                               ; preds = %55, %48, %33, %26
  %70 = load %struct.sil164_priv*, %struct.sil164_priv** %6, align 8
  %71 = call i32 @kfree(%struct.sil164_priv* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %65, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.sil164_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @sil164_readb(%struct.intel_dvo_device*, i32, i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @kfree(%struct.sil164_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
