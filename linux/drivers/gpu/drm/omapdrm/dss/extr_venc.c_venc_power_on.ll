; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_device = type { i64, i32, i32, i32, i32, i32 }

@OMAP_DSS_VENC_TYPE_COMPOSITE = common dso_local global i64 0, align 8
@VENC_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_device*)* @venc_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_power_on(%struct.venc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.venc_device* %0, %struct.venc_device** %3, align 8
  %6 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %7 = call i32 @venc_runtime_get(%struct.venc_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %13 = call i32 @venc_reset(%struct.venc_device* %12)
  %14 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %15 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %16 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @venc_write_config(%struct.venc_device* %14, i32 %17)
  %19 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %20 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %23 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dss_set_venc_output(i32 %21, i64 %24)
  %26 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %27 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dss_set_dac_pwrdn_bgz(i32 %28, i32 1)
  store i32 0, i32* %4, align 4
  %30 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %31 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OMAP_DSS_VENC_TYPE_COMPOSITE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %11
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, 2
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %11
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 5
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %43 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, 8
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %51 = load i32, i32* @VENC_OUTPUT_CONTROL, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @venc_write_reg(%struct.venc_device* %50, i32 %51, i32 %52)
  %54 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %55 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @regulator_enable(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %63 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %62, i32 0, i32 4
  %64 = call i32 @dss_mgr_enable(i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %69

68:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %86

69:                                               ; preds = %67
  %70 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %71 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @regulator_disable(i32 %72)
  br label %74

74:                                               ; preds = %69, %60
  %75 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %76 = load i32, i32* @VENC_OUTPUT_CONTROL, align 4
  %77 = call i32 @venc_write_reg(%struct.venc_device* %75, i32 %76, i32 0)
  %78 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %79 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dss_set_dac_pwrdn_bgz(i32 %80, i32 0)
  %82 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %83 = call i32 @venc_runtime_put(%struct.venc_device* %82)
  br label %84

84:                                               ; preds = %74, %10
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %68
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @venc_runtime_get(%struct.venc_device*) #1

declare dso_local i32 @venc_reset(%struct.venc_device*) #1

declare dso_local i32 @venc_write_config(%struct.venc_device*, i32) #1

declare dso_local i32 @dss_set_venc_output(i32, i64) #1

declare dso_local i32 @dss_set_dac_pwrdn_bgz(i32, i32) #1

declare dso_local i32 @venc_write_reg(%struct.venc_device*, i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dss_mgr_enable(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @venc_runtime_put(%struct.venc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
