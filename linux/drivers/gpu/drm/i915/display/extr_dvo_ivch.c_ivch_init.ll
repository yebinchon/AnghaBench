; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, %struct.ivch_priv*, %struct.i2c_adapter* }
%struct.ivch_priv = type { i32, i32, i32, i32* }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VR00 = common dso_local global i32 0, align 4
@VR00_BASE_ADDRESS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ivch detect failed due to address mismatch (%d vs %d)\0A\00", align 1
@VR20 = common dso_local global i32 0, align 4
@VR21 = common dso_local global i32 0, align 4
@backup_addresses = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)* @ivch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivch_init(%struct.intel_dvo_device* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.ivch_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ivch_priv* @kzalloc(i32 24, i32 %9)
  store %struct.ivch_priv* %10, %struct.ivch_priv** %6, align 8
  %11 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %12 = icmp eq %struct.ivch_priv* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %17 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %16, i32 0, i32 2
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %17, align 8
  %18 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %19 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %20 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %19, i32 0, i32 1
  store %struct.ivch_priv* %18, %struct.ivch_priv** %20, align 8
  %21 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %22 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %24 = load i32, i32* @VR00, align 4
  %25 = call i32 @ivch_read(%struct.intel_dvo_device* %23, i32 %24, i32* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  br label %82

28:                                               ; preds = %14
  %29 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VR00_BASE_ADDRESS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %35 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @VR00_BASE_ADDRESS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %43 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  br label %82

46:                                               ; preds = %28
  %47 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %48 = load i32, i32* @VR20, align 4
  %49 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %49, i32 0, i32 1
  %51 = call i32 @ivch_read(%struct.intel_dvo_device* %47, i32 %48, i32* %50)
  %52 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %53 = load i32, i32* @VR21, align 4
  %54 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %54, i32 0, i32 2
  %56 = call i32 @ivch_read(%struct.intel_dvo_device* %52, i32 %53, i32* %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %76, %46
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** @backup_addresses, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %64 = load i32*, i32** @backup_addresses, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %70 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @ivch_read(%struct.intel_dvo_device* %63, i32 %68, i32* %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %81 = call i32 @ivch_dump_regs(%struct.intel_dvo_device* %80)
  store i32 1, i32* %3, align 4
  br label %85

82:                                               ; preds = %38, %27
  %83 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %84 = call i32 @kfree(%struct.ivch_priv* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %79, %13
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.ivch_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @ivch_read(%struct.intel_dvo_device*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ivch_dump_regs(%struct.intel_dvo_device*) #1

declare dso_local i32 @kfree(%struct.ivch_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
