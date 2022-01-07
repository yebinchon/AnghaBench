; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ns2501.c_ns2501_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ns2501.c_ns2501_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i64 }
%struct.ns2501_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Trying set the dpms of the DVO to %i\0A\00", align 1
@NS2501_REGC0 = common dso_local global i32 0, align 4
@NS2501_REG41 = common dso_local global i32 0, align 4
@NS2501_REG34 = common dso_local global i32 0, align 4
@NS2501_34_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@NS2501_REG8 = common dso_local global i32 0, align 4
@NS2501_8_BPAS = common dso_local global i32 0, align 4
@NS2501_34_ENABLE_BACKLIGHT = common dso_local global i32 0, align 4
@NS2501_8_VEN = common dso_local global i32 0, align 4
@NS2501_8_HEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, i32)* @ns2501_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns2501_dpms(%struct.intel_dvo_device* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dvo_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ns2501_priv*, align 8
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %7 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ns2501_priv*
  store %struct.ns2501_priv* %9, %struct.ns2501_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %2
  %15 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %16 = load i32, i32* @NS2501_REGC0, align 4
  %17 = load %struct.ns2501_priv*, %struct.ns2501_priv** %5, align 8
  %18 = getelementptr inbounds %struct.ns2501_priv, %struct.ns2501_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 8
  %23 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %15, i32 %16, i32 %22)
  %24 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %25 = load i32, i32* @NS2501_REG41, align 4
  %26 = load %struct.ns2501_priv*, %struct.ns2501_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ns2501_priv, %struct.ns2501_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %24, i32 %25, i32 %30)
  %32 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %33 = load i32, i32* @NS2501_REG34, align 4
  %34 = load i32, i32* @NS2501_34_ENABLE_OUTPUT, align 4
  %35 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %32, i32 %33, i32 %34)
  %36 = call i32 @msleep(i32 15)
  %37 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %38 = load i32, i32* @NS2501_REG8, align 4
  %39 = load %struct.ns2501_priv*, %struct.ns2501_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ns2501_priv, %struct.ns2501_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NS2501_8_BPAS, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %37, i32 %38, i32 %45)
  %47 = load %struct.ns2501_priv*, %struct.ns2501_priv** %5, align 8
  %48 = getelementptr inbounds %struct.ns2501_priv, %struct.ns2501_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NS2501_8_BPAS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %14
  %56 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %57 = load i32, i32* @NS2501_REG8, align 4
  %58 = load %struct.ns2501_priv*, %struct.ns2501_priv** %5, align 8
  %59 = getelementptr inbounds %struct.ns2501_priv, %struct.ns2501_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %56, i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %55, %14
  %65 = call i32 @msleep(i32 200)
  %66 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %67 = load i32, i32* @NS2501_REG34, align 4
  %68 = load i32, i32* @NS2501_34_ENABLE_OUTPUT, align 4
  %69 = load i32, i32* @NS2501_34_ENABLE_BACKLIGHT, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %66, i32 %67, i32 %70)
  %72 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %73 = load i32, i32* @NS2501_REGC0, align 4
  %74 = load %struct.ns2501_priv*, %struct.ns2501_priv** %5, align 8
  %75 = getelementptr inbounds %struct.ns2501_priv, %struct.ns2501_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %72, i32 %73, i32 %78)
  br label %98

80:                                               ; preds = %2
  %81 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %82 = load i32, i32* @NS2501_REG34, align 4
  %83 = load i32, i32* @NS2501_34_ENABLE_OUTPUT, align 4
  %84 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %81, i32 %82, i32 %83)
  %85 = call i32 @msleep(i32 200)
  %86 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %87 = load i32, i32* @NS2501_REG8, align 4
  %88 = load i32, i32* @NS2501_8_VEN, align 4
  %89 = load i32, i32* @NS2501_8_HEN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @NS2501_8_BPAS, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %86, i32 %87, i32 %92)
  %94 = call i32 @msleep(i32 15)
  %95 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %96 = load i32, i32* @NS2501_REG34, align 4
  %97 = call i32 @ns2501_writeb(%struct.intel_dvo_device* %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %80, %64
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @ns2501_writeb(%struct.intel_dvo_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
