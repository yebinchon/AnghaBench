; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.dw_hdmi_i2c* }
%struct.dw_hdmi_i2c = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HDMI_IH_I2CM_STAT0_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*)* @dw_hdmi_i2c_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_i2c_wait(%struct.dw_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.dw_hdmi_i2c*, align 8
  %5 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  %6 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %6, i32 0, i32 0
  %8 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %7, align 8
  store %struct.dw_hdmi_i2c* %8, %struct.dw_hdmi_i2c** %4, align 8
  %9 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %4, align 8
  %10 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %9, i32 0, i32 1
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 10
  %13 = call i32 @wait_for_completion_timeout(i32* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %1
  %17 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %18 = call i32 @dw_hdmi_i2c_unwedge(%struct.dw_hdmi* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %16
  %24 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %4, align 8
  %25 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %24, i32 0, i32 1
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 10
  %28 = call i32 @wait_for_completion_timeout(i32* %25, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %4, align 8
  %37 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HDMI_IH_I2CM_STAT0_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42, %31, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dw_hdmi_i2c_unwedge(%struct.dw_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
