; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_find_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_find_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.oaktrail_hdmi_clock = type { i32, i32, i32 }

@oaktrail_hdmi_limit = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"np, nr, nf %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32, i32, %struct.oaktrail_hdmi_clock*)* @oaktrail_hdmi_find_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oaktrail_hdmi_find_dpll(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.oaktrail_hdmi_clock* %3) #0 {
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.oaktrail_hdmi_clock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.oaktrail_hdmi_clock* %3, %struct.oaktrail_hdmi_clock** %8, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 2, i32 0), align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 10
  %19 = call i32 @DIV_ROUND_UP(i32 %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 2, i32 1), align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 10
  %23 = sdiv i32 %20, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 1, i32 0), align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 1, i32 0), align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 1, i32 1), align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 1, i32 1), align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 10
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @DIV_ROUND_UP(i32 %37, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 10
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @DIV_ROUND_UP(i32 %44, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 0, i32 0), align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %35
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 0, i32 0), align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %35
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oaktrail_hdmi_limit, i32 0, i32 0, i32 1), align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %64, 10
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 %65, %66
  %68 = call i32 @DIV_ROUND_UP(i32 %63, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 1000
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 10
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call i32 @DIV_ROUND_UP(i32 %70, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %76, 10
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %14, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @DIV_ROUND_CLOSEST(i32 %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.oaktrail_hdmi_clock*, %struct.oaktrail_hdmi_clock** %8, align 8
  %90 = getelementptr inbounds %struct.oaktrail_hdmi_clock, %struct.oaktrail_hdmi_clock* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %91, 1
  %93 = load %struct.oaktrail_hdmi_clock*, %struct.oaktrail_hdmi_clock** %8, align 8
  %94 = getelementptr inbounds %struct.oaktrail_hdmi_clock, %struct.oaktrail_hdmi_clock* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  %96 = shl i32 %95, 14
  %97 = load %struct.oaktrail_hdmi_clock*, %struct.oaktrail_hdmi_clock** %8, align 8
  %98 = getelementptr inbounds %struct.oaktrail_hdmi_clock, %struct.oaktrail_hdmi_clock* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
