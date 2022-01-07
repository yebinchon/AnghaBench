; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i64, i64 }
%struct.oaktrail_hdmi_dev = type { %struct.hdmi_i2c_dev* }
%struct.hdmi_i2c_dev = type { i32 }

@HDMI_ICRH = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @oaktrail_hdmi_i2c_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_hdmi_i2c_access(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %8 = alloca %struct.hdmi_i2c_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = call %struct.oaktrail_hdmi_dev* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.oaktrail_hdmi_dev* %11, %struct.oaktrail_hdmi_dev** %7, align 8
  %12 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %7, align 8
  %13 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %12, i32 0, i32 0
  %14 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %13, align 8
  store %struct.hdmi_i2c_dev* %14, %struct.hdmi_i2c_dev** %8, align 8
  %15 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %8, align 8
  %16 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @HDMI_ICRH, align 4
  %19 = call i32 @HDMI_WRITE(i32 %18, i32 34656)
  %20 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %7, align 8
  %21 = call i32 @hdmi_i2c_irq_enable(%struct.oaktrail_hdmi_dev* %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %55, %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %46 = call i32 @xfer_read(%struct.i2c_adapter* %44, %struct.i2c_msg* %45)
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %50 = call i32 @xfer_write(%struct.i2c_adapter* %48, %struct.i2c_msg* %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %31, %26
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 1
  store %struct.i2c_msg* %54, %struct.i2c_msg** %5, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %7, align 8
  %60 = call i32 @hdmi_i2c_irq_disable(%struct.oaktrail_hdmi_dev* %59)
  %61 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %8, align 8
  %62 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.oaktrail_hdmi_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @hdmi_i2c_irq_enable(%struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @xfer_read(%struct.i2c_adapter*, %struct.i2c_msg*) #1

declare dso_local i32 @xfer_write(%struct.i2c_adapter*, %struct.i2c_msg*) #1

declare dso_local i32 @hdmi_i2c_irq_disable(%struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
