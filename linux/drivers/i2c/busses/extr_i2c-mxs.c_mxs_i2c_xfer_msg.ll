; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }
%struct.mxs_i2c_dev = type { i32, i64, i32, i64, i32 }

@MXS_I2C_CTRL0_POST_SEND_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_CLR_GOT_A_NAK = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_SET = common dso_local global i64 0, align 8
@MXS_I2C_V1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Done with err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mxs_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_i2c_xfer_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxs_i2c_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.mxs_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.mxs_i2c_dev* %14, %struct.mxs_i2c_dev** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MXS_I2C_CTRL0_POST_SEND_STOP, align 4
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %10, align 4
  %22 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %23 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I2C_M_RD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %20
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %42, %20
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I2C_M_RD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 7
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %55, %48
  %62 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %63 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @mxs_i2c_pio_setup_xfer(%struct.i2c_adapter* %67, %struct.i2c_msg* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %80 = call i32 @mxs_i2c_reset(%struct.mxs_i2c_dev* %79)
  br label %81

81:                                               ; preds = %78, %73, %66
  br label %106

82:                                               ; preds = %61
  %83 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %84 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %83, i32 0, i32 4
  %85 = call i32 @reinit_completion(i32* %84)
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @mxs_i2c_dma_setup_xfer(%struct.i2c_adapter* %86, %struct.i2c_msg* %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %151

94:                                               ; preds = %82
  %95 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %96 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %95, i32 0, i32 4
  %97 = call i32 @msecs_to_jiffies(i32 1000)
  %98 = call i64 @wait_for_completion_timeout(i32* %96, i32 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %135

102:                                              ; preds = %94
  %103 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %104 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %81
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @ENXIO, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32, i32* @MXS_I2C_CTRL1_CLR_GOT_A_NAK, align 4
  %113 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %114 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MXS_I2C_CTRL1_SET, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  br label %119

119:                                              ; preds = %111, %106
  %120 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %121 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MXS_I2C_V1, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %127 = call i32 @mxs_i2c_reset(%struct.mxs_i2c_dev* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %130 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 (i32, i8*, ...) @dev_dbg(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %4, align 4
  br label %151

135:                                              ; preds = %101
  %136 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %137 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %141 = call i32 @mxs_i2c_dma_finish(%struct.mxs_i2c_dev* %140)
  %142 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %8, align 8
  %143 = call i32 @mxs_i2c_reset(%struct.mxs_i2c_dev* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %151

148:                                              ; preds = %135
  %149 = load i32, i32* @ETIMEDOUT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %148, %146, %128, %92
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.mxs_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mxs_i2c_pio_setup_xfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mxs_i2c_reset(%struct.mxs_i2c_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mxs_i2c_dma_setup_xfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mxs_i2c_dma_finish(%struct.mxs_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
