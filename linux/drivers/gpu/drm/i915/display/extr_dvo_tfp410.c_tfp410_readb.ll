; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_tfp410.c_tfp410_readb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_tfp410.c_tfp410_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, %struct.i2c_adapter*, %struct.tfp410_priv* }
%struct.i2c_adapter = type { i32 }
%struct.tfp410_priv = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to read register 0x%02x from %s:%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, i32, i32*)* @tfp410_readb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_readb(%struct.intel_dvo_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dvo_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tfp410_priv*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %14 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %13, i32 0, i32 2
  %15 = load %struct.tfp410_priv*, %struct.tfp410_priv** %14, align 8
  store %struct.tfp410_priv* %15, %struct.tfp410_priv** %8, align 8
  %16 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %17 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %16, i32 0, i32 1
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %9, align 8
  %19 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %25 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %26 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 1
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  %33 = load i32, i32* @I2C_M_RD, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  %35 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %36 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %34, align 4
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %43 = call i32 @i2c_transfer(%struct.i2c_adapter* %41, %struct.i2c_msg* %42, i32 2)
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %4, align 4
  br label %64

49:                                               ; preds = %3
  %50 = load %struct.tfp410_priv*, %struct.tfp410_priv** %8, align 8
  %51 = getelementptr inbounds %struct.tfp410_priv, %struct.tfp410_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %60 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
