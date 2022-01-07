; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i64, i32* }

@DDC_ADDR = common dso_local global i64 0, align 8
@DDC_SEGMENT_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HDMI_EDID_FIFO_OFFSET = common dso_local global i32 0, align 4
@HDMI_EDID_WORD_ADDR = common dso_local global i32 0, align 4
@HDMI_EDID_SEGMENT_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*, %struct.i2c_msg*)* @inno_hdmi_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_i2c_write(%struct.inno_hdmi* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inno_hdmi*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DDC_ADDR, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DDC_SEGMENT_ADDR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %16, %10
  %26 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %27 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @reinit_completion(i32* %29)
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DDC_SEGMENT_ADDR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %43 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %25
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DDC_ADDR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %59 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %46
  %63 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %64 = load i32, i32* @HDMI_EDID_FIFO_OFFSET, align 4
  %65 = call i32 @hdmi_writeb(%struct.inno_hdmi* %63, i32 %64, i32 0)
  %66 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %67 = load i32, i32* @HDMI_EDID_WORD_ADDR, align 4
  %68 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %69 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @hdmi_writeb(%struct.inno_hdmi* %66, i32 %67, i32 %72)
  %74 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %75 = load i32, i32* @HDMI_EDID_SEGMENT_POINTER, align 4
  %76 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %77 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hdmi_writeb(%struct.inno_hdmi* %74, i32 %75, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %62, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @hdmi_writeb(%struct.inno_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
