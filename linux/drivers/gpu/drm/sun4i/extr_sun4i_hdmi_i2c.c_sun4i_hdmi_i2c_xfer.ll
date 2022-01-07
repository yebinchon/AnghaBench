; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_i2c.c_sun4i_hdmi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_i2c.c_sun4i_hdmi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64 }
%struct.sun4i_hdmi = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SUN4I_HDMI_DDC_BYTE_COUNT_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @sun4i_hdmi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_hdmi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun4i_hdmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.sun4i_hdmi* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.sun4i_hdmi* %14, %struct.sun4i_hdmi** %8, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %44, %3
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i64 %23
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %115

31:                                               ; preds = %20
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SUN4I_HDMI_DDC_BYTE_COUNT_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %115

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %49 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_prepare_enable(i32 %50)
  %52 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %53 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_set_rate(i32 %54, i32 100000)
  %56 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %57 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regmap_field_write(i32 %58, i32 1)
  %60 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %61 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regmap_field_write(i32 %62, i32 1)
  %64 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %65 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @regmap_field_read_poll_timeout(i32 %66, i32 %67, i32 %71, i32 100, i32 2000)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %47
  %75 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %76 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clk_disable_unprepare(i32 %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %115

81:                                               ; preds = %47
  %82 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %83 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @regmap_field_write(i32 %84, i32 1)
  %86 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %87 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @regmap_field_write(i32 %88, i32 1)
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %106, %81
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i64 %98
  %100 = call i32 @xfer_msg(%struct.sun4i_hdmi* %95, %struct.i2c_msg* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %12, align 4
  br label %109

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %90

109:                                              ; preds = %103, %90
  %110 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %8, align 8
  %111 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @clk_disable_unprepare(i32 %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %74, %40, %28
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.sun4i_hdmi* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i64 @regmap_field_read_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @xfer_msg(%struct.sun4i_hdmi*, %struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
