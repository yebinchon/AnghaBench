; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_get_repeater_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_get_repeater_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDCP_DDIA_REP_PRESENT = common dso_local global i32 0, align 4
@HDCP_DDIA_SHA1_M0 = common dso_local global i32 0, align 4
@HDCP_DDIB_REP_PRESENT = common dso_local global i32 0, align 4
@HDCP_DDIB_SHA1_M0 = common dso_local global i32 0, align 4
@HDCP_DDIC_REP_PRESENT = common dso_local global i32 0, align 4
@HDCP_DDIC_SHA1_M0 = common dso_local global i32 0, align 4
@HDCP_DDID_REP_PRESENT = common dso_local global i32 0, align 4
@HDCP_DDID_SHA1_M0 = common dso_local global i32 0, align 4
@HDCP_DDIE_REP_PRESENT = common dso_local global i32 0, align 4
@HDCP_DDIE_SHA1_M0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown port %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @intel_hdcp_get_repeater_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdcp_get_repeater_ctl(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %5 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %6 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %30 [
    i32 132, label %10
    i32 131, label %14
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @HDCP_DDIA_REP_PRESENT, align 4
  %12 = load i32, i32* @HDCP_DDIA_SHA1_M0, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load i32, i32* @HDCP_DDIB_REP_PRESENT, align 4
  %16 = load i32, i32* @HDCP_DDIB_SHA1_M0, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* @HDCP_DDIC_REP_PRESENT, align 4
  %20 = load i32, i32* @HDCP_DDIC_SHA1_M0, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* @HDCP_DDID_REP_PRESENT, align 4
  %24 = load i32, i32* @HDCP_DDID_SHA1_M0, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load i32, i32* @HDCP_DDIE_REP_PRESENT, align 4
  %28 = load i32, i32* @HDCP_DDIE_SHA1_M0, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %26, %22, %18, %14, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
