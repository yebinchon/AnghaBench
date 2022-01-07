; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_pll_8960.c_msm_hdmi_pll_8960_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_pll_8960.c_msm_hdmi_pll_8960_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_pll_8960 = type { %struct.TYPE_5__, %struct.platform_device*, %struct.clk* }
%struct.TYPE_5__ = type { i32* }
%struct.clk = type { i32 }

@freqtbl = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hdmi_pll\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HDMI_PLL\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to map pll base\0A\00", align 1
@pll_init = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to register pll clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_hdmi_pll_8960_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hdmi_pll_8960*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @freqtbl, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %12)
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @freqtbl, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @freqtbl, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %22, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.hdmi_pll_8960* @devm_kzalloc(%struct.device* %42, i32 24, i32 %43)
  store %struct.hdmi_pll_8960* %44, %struct.hdmi_pll_8960** %5, align 8
  %45 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %5, align 8
  %46 = icmp ne %struct.hdmi_pll_8960* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %85

50:                                               ; preds = %41
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = call %struct.clk* @msm_ioremap(%struct.platform_device* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %5, align 8
  %54 = getelementptr inbounds %struct.hdmi_pll_8960, %struct.hdmi_pll_8960* %53, i32 0, i32 2
  store %struct.clk* %52, %struct.clk** %54, align 8
  %55 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %5, align 8
  %56 = getelementptr inbounds %struct.hdmi_pll_8960, %struct.hdmi_pll_8960* %55, i32 0, i32 2
  %57 = load %struct.clk*, %struct.clk** %56, align 8
  %58 = call i64 @IS_ERR(%struct.clk* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @DRM_DEV_ERROR(%struct.device* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %85

65:                                               ; preds = %50
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %5, align 8
  %68 = getelementptr inbounds %struct.hdmi_pll_8960, %struct.hdmi_pll_8960* %67, i32 0, i32 1
  store %struct.platform_device* %66, %struct.platform_device** %68, align 8
  %69 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %5, align 8
  %70 = getelementptr inbounds %struct.hdmi_pll_8960, %struct.hdmi_pll_8960* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32* @pll_init, i32** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.hdmi_pll_8960*, %struct.hdmi_pll_8960** %5, align 8
  %74 = getelementptr inbounds %struct.hdmi_pll_8960, %struct.hdmi_pll_8960* %73, i32 0, i32 0
  %75 = call %struct.clk* @devm_clk_register(%struct.device* %72, %struct.TYPE_5__* %74)
  store %struct.clk* %75, %struct.clk** %6, align 8
  %76 = load %struct.clk*, %struct.clk** %6, align 8
  %77 = call i64 @IS_ERR(%struct.clk* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @DRM_DEV_ERROR(%struct.device* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %79, %60, %47, %34
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.hdmi_pll_8960* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk* @msm_ioremap(%struct.platform_device*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
