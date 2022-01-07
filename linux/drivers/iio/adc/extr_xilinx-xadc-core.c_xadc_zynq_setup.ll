; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.xadc = type { i32, i32 }

@XADC_ZYNQ_IGAP_DEFAULT = common dso_local global i32 0, align 4
@XADC_ZYNQ_TCK_RATE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XADC_ZYNQ_PCAP_RATE_MAX = common dso_local global i64 0, align 8
@XADC_ZYNQ_CFG_TCKRATE_DIV2 = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_TCKRATE_DIV4 = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_TCKRATE_DIV8 = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_TCKRATE_DIV16 = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_CTL = common dso_local global i32 0, align 4
@XADC_ZYNQ_CTL_RESET = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_INTSTS = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_INTMSK = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_CFG = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_ENABLE = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_REDGE = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_WEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.iio_dev*, i32)* @xadc_zynq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_zynq_setup(%struct.platform_device* %0, %struct.iio_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xadc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.xadc* @iio_priv(%struct.iio_dev* %15)
  store %struct.xadc* %16, %struct.xadc** %8, align 8
  %17 = load i32, i32* @XADC_ZYNQ_IGAP_DEFAULT, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i64, i64* @XADC_ZYNQ_TCK_RATE_MAX, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load %struct.xadc*, %struct.xadc** %8, align 8
  %21 = getelementptr inbounds %struct.xadc, %struct.xadc* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  %22 = load %struct.xadc*, %struct.xadc** %8, align 8
  %23 = getelementptr inbounds %struct.xadc, %struct.xadc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @clk_get_rate(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %133

31:                                               ; preds = %3
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @XADC_ZYNQ_PCAP_RATE_MAX, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.xadc*, %struct.xadc** %8, align 8
  %37 = getelementptr inbounds %struct.xadc, %struct.xadc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @XADC_ZYNQ_PCAP_RATE_MAX, align 8
  %40 = call i32 @clk_set_rate(i32 %38, i64 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %4, align 4
  br label %133

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %9, align 8
  %50 = udiv i64 %49, 2
  %51 = icmp ugt i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 2, i32* %11, align 4
  br label %69

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = udiv i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = udiv i64 %59, %61
  %63 = load i64, i64* @XADC_ZYNQ_TCK_RATE_MAX, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %53
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %11, align 4
  %71 = icmp ule i32 %70, 3
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @XADC_ZYNQ_CFG_TCKRATE_DIV2, align 4
  store i32 %73, i32* %10, align 4
  br label %88

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = icmp ule i32 %75, 7
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @XADC_ZYNQ_CFG_TCKRATE_DIV4, align 4
  store i32 %78, i32* %10, align 4
  br label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = icmp ule i32 %80, 15
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @XADC_ZYNQ_CFG_TCKRATE_DIV8, align 4
  store i32 %83, i32* %10, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @XADC_ZYNQ_CFG_TCKRATE_DIV16, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %77
  br label %88

88:                                               ; preds = %87, %72
  %89 = load %struct.xadc*, %struct.xadc** %8, align 8
  %90 = load i32, i32* @XADC_ZYNQ_REG_CTL, align 4
  %91 = load i32, i32* @XADC_ZYNQ_CTL_RESET, align 4
  %92 = call i32 @xadc_write_reg(%struct.xadc* %89, i32 %90, i32 %91)
  %93 = load %struct.xadc*, %struct.xadc** %8, align 8
  %94 = load i32, i32* @XADC_ZYNQ_REG_CTL, align 4
  %95 = call i32 @xadc_write_reg(%struct.xadc* %93, i32 %94, i32 0)
  %96 = load %struct.xadc*, %struct.xadc** %8, align 8
  %97 = load i32, i32* @XADC_ZYNQ_REG_INTSTS, align 4
  %98 = call i32 @xadc_write_reg(%struct.xadc* %96, i32 %97, i32 -1)
  %99 = load %struct.xadc*, %struct.xadc** %8, align 8
  %100 = load i32, i32* @XADC_ZYNQ_REG_INTMSK, align 4
  %101 = load %struct.xadc*, %struct.xadc** %8, align 8
  %102 = getelementptr inbounds %struct.xadc, %struct.xadc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @xadc_write_reg(%struct.xadc* %99, i32 %100, i32 %103)
  %105 = load %struct.xadc*, %struct.xadc** %8, align 8
  %106 = load i32, i32* @XADC_ZYNQ_REG_CFG, align 4
  %107 = load i32, i32* @XADC_ZYNQ_CFG_ENABLE, align 4
  %108 = load i32, i32* @XADC_ZYNQ_CFG_REDGE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @XADC_ZYNQ_CFG_WEDGE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @XADC_ZYNQ_CFG_IGAP(i32 %114)
  %116 = or i32 %113, %115
  %117 = call i32 @xadc_write_reg(%struct.xadc* %105, i32 %106, i32 %116)
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @XADC_ZYNQ_PCAP_RATE_MAX, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %88
  %122 = load %struct.xadc*, %struct.xadc** %8, align 8
  %123 = getelementptr inbounds %struct.xadc, %struct.xadc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @clk_set_rate(i32 %124, i64 %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %4, align 4
  br label %133

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %88
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %129, %43, %28
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @xadc_write_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @XADC_ZYNQ_CFG_IGAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
