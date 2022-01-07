; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c_bxt_port_to_phy_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c_bxt_port_to_phy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.bxt_ddi_phy_info = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@DPIO_CH0 = common dso_local global i64 0, align 8
@DPIO_CH1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"PHY not found for PORT %c\00", align 1
@DPIO_PHY0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxt_port_to_phy_channel(%struct.drm_i915_private* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bxt_ddi_phy_info*, align 8
  %10 = alloca %struct.bxt_ddi_phy_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = call %struct.bxt_ddi_phy_info* @bxt_get_phy_list(%struct.drm_i915_private* %13, i32* %12)
  store %struct.bxt_ddi_phy_info* %14, %struct.bxt_ddi_phy_info** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %61, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %20, i64 %22
  store %struct.bxt_ddi_phy_info* %23, %struct.bxt_ddi_phy_info** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %9, align 8
  %26 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* @DPIO_CH0, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* @DPIO_CH0, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %73

39:                                               ; preds = %19
  %40 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %9, align 8
  %41 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %9, align 8
  %47 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* @DPIO_CH1, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %45, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i64, i64* @DPIO_CH1, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %73

60:                                               ; preds = %44, %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %15

64:                                               ; preds = %15
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @port_name(i32 %65)
  %67 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @DPIO_PHY0, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i64, i64* @DPIO_CH0, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %54, %33
  ret void
}

declare dso_local %struct.bxt_ddi_phy_info* @bxt_get_phy_list(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
