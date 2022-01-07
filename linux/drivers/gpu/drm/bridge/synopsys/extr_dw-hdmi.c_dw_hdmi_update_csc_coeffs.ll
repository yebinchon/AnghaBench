; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_update_csc_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_update_csc_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@csc_coeff_default = common dso_local global i32** null, align 8
@V4L2_YCBCR_ENC_601 = common dso_local global i64 0, align 8
@csc_coeff_rgb_out_eitu601 = common dso_local global i32** null, align 8
@csc_coeff_rgb_out_eitu709 = common dso_local global i32** null, align 8
@csc_coeff_rgb_in_eitu601 = common dso_local global i32** null, align 8
@csc_coeff_rgb_in_eitu709 = common dso_local global i32** null, align 8
@HDMI_CSC_COEF_A1_LSB = common dso_local global i64 0, align 8
@HDMI_CSC_COEF_A1_MSB = common dso_local global i64 0, align 8
@HDMI_CSC_COEF_B1_LSB = common dso_local global i64 0, align 8
@HDMI_CSC_COEF_B1_MSB = common dso_local global i64 0, align 8
@HDMI_CSC_COEF_C1_LSB = common dso_local global i64 0, align 8
@HDMI_CSC_COEF_C1_MSB = common dso_local global i64 0, align 8
@HDMI_CSC_SCALE_CSCSCALE_MASK = common dso_local global i32 0, align 4
@HDMI_CSC_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_update_csc_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_update_csc_coeffs(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca [3 x [4 x i32]]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  store [3 x [4 x i32]]* bitcast (i32*** @csc_coeff_default to [3 x [4 x i32]]*), [3 x [4 x i32]]** %3, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %10 = call i64 @is_color_space_conversion(%struct.dw_hdmi* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %14 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @hdmi_bus_fmt_is_rgb(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %21 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_YCBCR_ENC_601, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store [3 x [4 x i32]]* bitcast (i32*** @csc_coeff_rgb_out_eitu601 to [3 x [4 x i32]]*), [3 x [4 x i32]]** %3, align 8
  br label %28

27:                                               ; preds = %19
  store [3 x [4 x i32]]* bitcast (i32*** @csc_coeff_rgb_out_eitu709 to [3 x [4 x i32]]*), [3 x [4 x i32]]** %3, align 8
  br label %28

28:                                               ; preds = %27, %26
  br label %47

29:                                               ; preds = %12
  %30 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %31 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @hdmi_bus_fmt_is_rgb(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %38 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_YCBCR_ENC_601, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store [3 x [4 x i32]]* bitcast (i32*** @csc_coeff_rgb_in_eitu601 to [3 x [4 x i32]]*), [3 x [4 x i32]]** %3, align 8
  br label %45

44:                                               ; preds = %36
  store [3 x [4 x i32]]* bitcast (i32*** @csc_coeff_rgb_in_eitu709 to [3 x [4 x i32]]*), [3 x [4 x i32]]** %3, align 8
  br label %45

45:                                               ; preds = %44, %43
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %1
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %129, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32**, i32*** @csc_coeff_default, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %56, label %132

56:                                               ; preds = %49
  %57 = load [3 x [4 x i32]]*, [3 x [4 x i32]]** %3, align 8
  %58 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %57, i64 0, i64 0
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load [3 x [4 x i32]]*, [3 x [4 x i32]]** %3, align 8
  %64 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %63, i64 0, i64 1
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load [3 x [4 x i32]]*, [3 x [4 x i32]]** %3, align 8
  %70 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %69, i64 0, i64 2
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 255
  %78 = load i64, i64* @HDMI_CSC_COEF_A1_LSB, align 8
  %79 = load i32, i32* %4, align 4
  %80 = mul i32 %79, 2
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = call i32 @hdmi_writeb(%struct.dw_hdmi* %75, i32 %77, i64 %82)
  %84 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %85 = load i32, i32* %6, align 4
  %86 = ashr i32 %85, 8
  %87 = load i64, i64* @HDMI_CSC_COEF_A1_MSB, align 8
  %88 = load i32, i32* %4, align 4
  %89 = mul i32 %88, 2
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = call i32 @hdmi_writeb(%struct.dw_hdmi* %84, i32 %86, i64 %91)
  %93 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 255
  %96 = load i64, i64* @HDMI_CSC_COEF_B1_LSB, align 8
  %97 = load i32, i32* %4, align 4
  %98 = mul i32 %97, 2
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = call i32 @hdmi_writeb(%struct.dw_hdmi* %93, i32 %95, i64 %100)
  %102 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %103 = load i32, i32* %7, align 4
  %104 = ashr i32 %103, 8
  %105 = load i64, i64* @HDMI_CSC_COEF_B1_MSB, align 8
  %106 = load i32, i32* %4, align 4
  %107 = mul i32 %106, 2
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = call i32 @hdmi_writeb(%struct.dw_hdmi* %102, i32 %104, i64 %109)
  %111 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, 255
  %114 = load i64, i64* @HDMI_CSC_COEF_C1_LSB, align 8
  %115 = load i32, i32* %4, align 4
  %116 = mul i32 %115, 2
  %117 = zext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i32 @hdmi_writeb(%struct.dw_hdmi* %111, i32 %113, i64 %118)
  %120 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %121 = load i32, i32* %8, align 4
  %122 = ashr i32 %121, 8
  %123 = load i64, i64* @HDMI_CSC_COEF_C1_MSB, align 8
  %124 = load i32, i32* %4, align 4
  %125 = mul i32 %124, 2
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %123, %126
  %128 = call i32 @hdmi_writeb(%struct.dw_hdmi* %120, i32 %122, i64 %127)
  br label %129

129:                                              ; preds = %56
  %130 = load i32, i32* %4, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %49

132:                                              ; preds = %49
  %133 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @HDMI_CSC_SCALE_CSCSCALE_MASK, align 4
  %136 = load i32, i32* @HDMI_CSC_SCALE, align 4
  %137 = call i32 @hdmi_modb(%struct.dw_hdmi* %133, i32 %134, i32 %135, i32 %136)
  ret void
}

declare dso_local i64 @is_color_space_conversion(%struct.dw_hdmi*) #1

declare dso_local i64 @hdmi_bus_fmt_is_rgb(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i64) #1

declare dso_local i32 @hdmi_modb(%struct.dw_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
