; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32* }

@HZ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HDMI_EDID_FIFO_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*, %struct.i2c_msg*)* @inno_hdmi_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_i2c_read(%struct.inno_hdmi* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inno_hdmi*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %16 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %19, 10
  %21 = call i32 @wait_for_completion_timeout(i32* %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %34 = load i32, i32* @HDMI_EDID_FIFO_ADDR, align 4
  %35 = call i32 @hdmi_readb(%struct.inno_hdmi* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %28

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @hdmi_readb(%struct.inno_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
