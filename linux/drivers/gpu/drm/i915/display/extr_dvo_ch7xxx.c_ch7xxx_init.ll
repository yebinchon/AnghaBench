; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7xxx.c_ch7xxx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7xxx.c_ch7xxx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i8*, %struct.ch7xxx_priv*, %struct.i2c_adapter* }
%struct.ch7xxx_priv = type { i32 }
%struct.i2c_adapter = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CH7xxx_REG_VID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ch7xxx not detected; got VID 0x%02x from %s slave %d.\0A\00", align 1
@CH7xxx_REG_DID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"ch7xxx not detected; got DID 0x%02x from %s slave %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Detected %s chipset, vendor/device ID 0x%02x/0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)* @ch7xxx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch7xxx_init(%struct.intel_dvo_device* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.ch7xxx_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ch7xxx_priv* @kzalloc(i32 4, i32 %11)
  store %struct.ch7xxx_priv* %12, %struct.ch7xxx_priv** %6, align 8
  %13 = load %struct.ch7xxx_priv*, %struct.ch7xxx_priv** %6, align 8
  %14 = icmp eq %struct.ch7xxx_priv* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %19 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %18, i32 0, i32 2
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %19, align 8
  %20 = load %struct.ch7xxx_priv*, %struct.ch7xxx_priv** %6, align 8
  %21 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %22 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %21, i32 0, i32 1
  store %struct.ch7xxx_priv* %20, %struct.ch7xxx_priv** %22, align 8
  %23 = load %struct.ch7xxx_priv*, %struct.ch7xxx_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ch7xxx_priv, %struct.ch7xxx_priv* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %26 = load i32, i32* @CH7xxx_REG_VID, align 4
  %27 = call i32 @ch7xxx_readb(%struct.intel_dvo_device* %25, i32 %26, i8** %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %71

30:                                               ; preds = %16
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @ch7xxx_get_id(i8* %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %41 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %39, i8* %42)
  br label %71

44:                                               ; preds = %30
  %45 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %46 = load i32, i32* @CH7xxx_REG_DID, align 4
  %47 = call i32 @ch7xxx_readb(%struct.intel_dvo_device* %45, i32 %46, i8** %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %71

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @ch7xxx_get_did(i8* %51)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %61 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %59, i8* %62)
  br label %71

64:                                               ; preds = %50
  %65 = load %struct.ch7xxx_priv*, %struct.ch7xxx_priv** %6, align 8
  %66 = getelementptr inbounds %struct.ch7xxx_priv, %struct.ch7xxx_priv* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %67, i8* %68, i8* %69)
  store i32 1, i32* %3, align 4
  br label %74

71:                                               ; preds = %55, %49, %35, %29
  %72 = load %struct.ch7xxx_priv*, %struct.ch7xxx_priv** %6, align 8
  %73 = call i32 @kfree(%struct.ch7xxx_priv* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %64, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.ch7xxx_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @ch7xxx_readb(%struct.intel_dvo_device*, i32, i8**) #1

declare dso_local i8* @ch7xxx_get_id(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @ch7xxx_get_did(i8*) #1

declare dso_local i32 @kfree(%struct.ch7xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
