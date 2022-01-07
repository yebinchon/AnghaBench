; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }

@HDMI_WP_IRQSTATUS = common dso_local global i32 0, align 4
@HDMI_IRQ_VIDEO_FRAME_DONE = common dso_local global i32 0, align 4
@HDMI_WP_VIDEO_CFG = common dso_local global i32 0, align 4
@HDMI_WP_IRQSTATUS_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"no HDMI FRAMEDONE when disabling output\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_video_stop(%struct.hdmi_wp_data* %0) #0 {
  %2 = alloca %struct.hdmi_wp_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %2, align 8
  %5 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %2, align 8
  %6 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HDMI_WP_IRQSTATUS, align 4
  %9 = load i32, i32* @HDMI_IRQ_VIDEO_FRAME_DONE, align 4
  %10 = call i32 @hdmi_write_reg(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HDMI_WP_VIDEO_CFG, align 4
  %15 = call i32 @REG_FLD_MOD(i32 %13, i32 %14, i32 0, i32 31, i32 31)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 50
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = call i32 @msleep(i32 20)
  %21 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %2, align 8
  %22 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HDMI_WP_IRQSTATUS_RAW, align 4
  %25 = call i32 @hdmi_read_reg(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @HDMI_IRQ_VIDEO_FRAME_DONE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %37

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %16

35:                                               ; preds = %16
  %36 = call i32 @DSSERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
