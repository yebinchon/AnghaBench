; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32, i32* }

@HZ = common dso_local global i32 0, align 4
@HDMI_INTR_EDID_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HDMI_DDC_READ_FIFO_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk3066_hdmi*, %struct.i2c_msg*)* @rk3066_hdmi_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3066_hdmi_i2c_read(%struct.rk3066_hdmi* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk3066_hdmi*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %4, align 8
  %16 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %19, 10
  %21 = call i32 @wait_for_completion_timeout(i32* %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %4, align 8
  %26 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HDMI_INTR_EDID_ERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24, %2
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %4, align 8
  %43 = load i32, i32* @HDMI_DDC_READ_FIFO_ADDR, align 4
  %44 = call i32 @hdmi_readb(%struct.rk3066_hdmi* %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %37

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @hdmi_readb(%struct.rk3066_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
