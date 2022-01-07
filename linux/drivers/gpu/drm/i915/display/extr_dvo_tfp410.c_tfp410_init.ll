; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_tfp410.c_tfp410_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_tfp410.c_tfp410_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, %struct.tfp410_priv*, %struct.i2c_adapter* }
%struct.tfp410_priv = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TFP410_VID_LO = common dso_local global i32 0, align 4
@TFP410_VID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"tfp410 not detected got VID %X: from %s Slave %d.\0A\00", align 1
@TFP410_DID_LO = common dso_local global i32 0, align 4
@TFP410_DID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"tfp410 not detected got DID %X: from %s Slave %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)* @tfp410_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_init(%struct.intel_dvo_device* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.tfp410_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tfp410_priv* @kzalloc(i32 4, i32 %8)
  store %struct.tfp410_priv* %9, %struct.tfp410_priv** %6, align 8
  %10 = load %struct.tfp410_priv*, %struct.tfp410_priv** %6, align 8
  %11 = icmp eq %struct.tfp410_priv* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %16 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %15, i32 0, i32 2
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %16, align 8
  %17 = load %struct.tfp410_priv*, %struct.tfp410_priv** %6, align 8
  %18 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %19 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %18, i32 0, i32 1
  store %struct.tfp410_priv* %17, %struct.tfp410_priv** %19, align 8
  %20 = load %struct.tfp410_priv*, %struct.tfp410_priv** %6, align 8
  %21 = getelementptr inbounds %struct.tfp410_priv, %struct.tfp410_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %23 = load i32, i32* @TFP410_VID_LO, align 4
  %24 = call i32 @tfp410_getid(%struct.intel_dvo_device* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @TFP410_VID, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %33 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34)
  br label %54

36:                                               ; preds = %13
  %37 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %38 = load i32, i32* @TFP410_DID_LO, align 4
  %39 = call i32 @tfp410_getid(%struct.intel_dvo_device* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @TFP410_DID, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %48 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  br label %54

51:                                               ; preds = %36
  %52 = load %struct.tfp410_priv*, %struct.tfp410_priv** %6, align 8
  %53 = getelementptr inbounds %struct.tfp410_priv, %struct.tfp410_priv* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %57

54:                                               ; preds = %42, %27
  %55 = load %struct.tfp410_priv*, %struct.tfp410_priv** %6, align 8
  %56 = call i32 @kfree(%struct.tfp410_priv* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.tfp410_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @tfp410_getid(%struct.intel_dvo_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tfp410_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
