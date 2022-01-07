; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_firmware_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.MXL_HYDRA_SKU_COMMAND_T = type { i32 }

@HYDRA_RESET_TRANSPORT_FIFO_REG = common dso_local global i32 0, align 4
@HYDRA_RESET_TRANSPORT_FIFO_DATA = common dso_local global i32 0, align 4
@HYDRA_RESET_BBAND_REG = common dso_local global i32 0, align 4
@HYDRA_RESET_BBAND_DATA = common dso_local global i32 0, align 4
@HYDRA_RESET_XBAR_REG = common dso_local global i32 0, align 4
@HYDRA_RESET_XBAR_DATA = common dso_local global i32 0, align 4
@HYDRA_MODULES_CLK_2_REG = common dso_local global i32 0, align 4
@HYDRA_DISABLE_CLK_2 = common dso_local global i32 0, align 4
@HYDRA_PRCM_ROOT_CLK_REG = common dso_local global i32 0, align 4
@MXL_HYDRA_DEVICE_568 = common dso_local global i64 0, align 8
@XPT_DMD0_BASEADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Hydra FW alive. Hail!\0A\00", align 1
@MXL_HYDRA_DEV_CFG_SKU_CMD = common dso_local global i32 0, align 4
@MXL_CMD_WRITE = common dso_local global i32 0, align 4
@MXL_HYDRA_CMD_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i32*, i32)* @firmware_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_download(%struct.mxl* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.MXL_HYDRA_SKU_COMMAND_T, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  store %struct.mxl* %0, %struct.mxl** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 4, i32* %11, align 4
  %13 = load %struct.mxl*, %struct.mxl** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @check_fw(%struct.mxl* %13, i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %151

19:                                               ; preds = %3
  %20 = load %struct.mxl*, %struct.mxl** %5, align 8
  %21 = call i32 @update_by_mnemonic(%struct.mxl* %20, i32 -2147286980, i32 0, i32 1, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %151

26:                                               ; preds = %19
  %27 = call i32 @usleep_range(i32 1000, i32 2000)
  %28 = load %struct.mxl*, %struct.mxl** %5, align 8
  %29 = load i32, i32* @HYDRA_RESET_TRANSPORT_FIFO_REG, align 4
  %30 = load i32, i32* @HYDRA_RESET_TRANSPORT_FIFO_DATA, align 4
  %31 = call i32 @write_register(%struct.mxl* %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %151

36:                                               ; preds = %26
  %37 = load %struct.mxl*, %struct.mxl** %5, align 8
  %38 = load i32, i32* @HYDRA_RESET_BBAND_REG, align 4
  %39 = load i32, i32* @HYDRA_RESET_BBAND_DATA, align 4
  %40 = call i32 @write_register(%struct.mxl* %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %151

45:                                               ; preds = %36
  %46 = load %struct.mxl*, %struct.mxl** %5, align 8
  %47 = load i32, i32* @HYDRA_RESET_XBAR_REG, align 4
  %48 = load i32, i32* @HYDRA_RESET_XBAR_DATA, align 4
  %49 = call i32 @write_register(%struct.mxl* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %151

54:                                               ; preds = %45
  %55 = load %struct.mxl*, %struct.mxl** %5, align 8
  %56 = load i32, i32* @HYDRA_MODULES_CLK_2_REG, align 4
  %57 = load i32, i32* @HYDRA_DISABLE_CLK_2, align 4
  %58 = call i32 @write_register(%struct.mxl* %55, i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %151

63:                                               ; preds = %54
  %64 = load %struct.mxl*, %struct.mxl** %5, align 8
  %65 = load i32, i32* @HYDRA_PRCM_ROOT_CLK_REG, align 4
  %66 = call i32 @read_register(%struct.mxl* %64, i32 %65, i32* %9)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %151

71:                                               ; preds = %63
  %72 = load %struct.mxl*, %struct.mxl** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @do_firmware_download(%struct.mxl* %72, i32* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %151

80:                                               ; preds = %71
  %81 = load %struct.mxl*, %struct.mxl** %5, align 8
  %82 = getelementptr inbounds %struct.mxl, %struct.mxl* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MXL_HYDRA_DEVICE_568, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %80
  %89 = call i32 @usleep_range(i32 10000, i32 11000)
  %90 = load %struct.mxl*, %struct.mxl** %5, align 8
  %91 = call i32 @write_register(%struct.mxl* %90, i32 -1871577088, i32 1)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %151

96:                                               ; preds = %88
  %97 = call i32 @msleep(i32 500)
  %98 = load %struct.mxl*, %struct.mxl** %5, align 8
  %99 = call i32 @write_register(%struct.mxl* %98, i32 -1871268592, i32 1)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %151

104:                                              ; preds = %96
  br label %114

105:                                              ; preds = %80
  %106 = load %struct.mxl*, %struct.mxl** %5, align 8
  %107 = call i32 @update_by_mnemonic(%struct.mxl* %106, i32 -2147286980, i32 0, i32 1, i32 1)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %151

112:                                              ; preds = %105
  %113 = call i32 @msleep(i32 150)
  br label %114

114:                                              ; preds = %112, %104
  %115 = load %struct.mxl*, %struct.mxl** %5, align 8
  %116 = load i32, i32* @XPT_DMD0_BASEADDR, align 4
  %117 = call i32 @write_register(%struct.mxl* %115, i32 %116, i32 1985229328)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %151

122:                                              ; preds = %114
  %123 = load %struct.mxl*, %struct.mxl** %5, align 8
  %124 = call i32 @firmware_is_alive(%struct.mxl* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  br label %151

127:                                              ; preds = %122
  %128 = load %struct.mxl*, %struct.mxl** %5, align 8
  %129 = getelementptr inbounds %struct.mxl, %struct.mxl* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_info(i32 %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %132 = call i32 @msleep(i32 50)
  %133 = load %struct.mxl*, %struct.mxl** %5, align 8
  %134 = getelementptr inbounds %struct.mxl, %struct.mxl* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.MXL_HYDRA_SKU_COMMAND_T, %struct.MXL_HYDRA_SKU_COMMAND_T* %10, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* @MXL_HYDRA_DEV_CFG_SKU_CMD, align 4
  %140 = load i32, i32* @MXL_CMD_WRITE, align 4
  %141 = load i32, i32* %11, align 4
  %142 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %143 = call i32 @BUILD_HYDRA_CMD(i32 %139, i32 %140, i32 %141, %struct.MXL_HYDRA_SKU_COMMAND_T* %10, i32* %142)
  %144 = load %struct.mxl*, %struct.mxl** %5, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @MXL_HYDRA_CMD_HEADER_SIZE, align 4
  %147 = add nsw i32 %145, %146
  %148 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %149 = call i32 @send_command(%struct.mxl* %144, i32 %147, i32* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %127, %126, %120, %110, %102, %94, %78, %69, %61, %52, %43, %34, %24, %18
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @check_fw(%struct.mxl*, i32*, i32) #1

declare dso_local i32 @update_by_mnemonic(%struct.mxl*, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @write_register(%struct.mxl*, i32, i32) #1

declare dso_local i32 @read_register(%struct.mxl*, i32, i32*) #1

declare dso_local i32 @do_firmware_download(%struct.mxl*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @firmware_is_alive(%struct.mxl*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @BUILD_HYDRA_CMD(i32, i32, i32, %struct.MXL_HYDRA_SKU_COMMAND_T*, i32*) #1

declare dso_local i32 @send_command(%struct.mxl*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
