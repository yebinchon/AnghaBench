; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_update_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_update_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, i64, i64, i64 }

@DRM_FORCE_OFF = common dso_local global i32 0, align 4
@DRM_FORCE_UNSPECIFIED = common dso_local global i32 0, align 4
@DRM_FORCE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_update_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_update_power(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %4 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %8 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @DRM_FORCE_OFF, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @DRM_FORCE_UNSPECIFIED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %19 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @DRM_FORCE_ON, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @DRM_FORCE_OFF, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %13
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @DRM_FORCE_OFF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %34 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %39 = call i32 @dw_hdmi_poweroff(%struct.dw_hdmi* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %50

41:                                               ; preds = %28
  %42 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %43 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %48 = call i32 @dw_hdmi_poweron(%struct.dw_hdmi* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %40
  ret void
}

declare dso_local i32 @dw_hdmi_poweroff(%struct.dw_hdmi*) #1

declare dso_local i32 @dw_hdmi_poweron(%struct.dw_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
