; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_support_scdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_support_scdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*)* @dw_hdmi_support_scdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_support_scdc(%struct.dw_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.drm_display_info*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  %5 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %6 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store %struct.drm_display_info* %7, %struct.drm_display_info** %4, align 8
  %8 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 8202
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %50

19:                                               ; preds = %13
  %20 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %28 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26, %19
  store i32 0, i32* %2, align 4
  br label %50

35:                                               ; preds = %26
  %36 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %37 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %45 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 340000
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %50

49:                                               ; preds = %43, %35
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %48, %34, %18, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
