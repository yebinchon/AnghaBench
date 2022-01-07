; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.geni_i2c_dev = type { i64, %struct.i2c_msg*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"error turning SE resources:%d\0A\00", align 1
@STOP_STRETCH = common dso_local global i32 0, align 4
@SLV_ADDR_SHFT = common dso_local global i32 0, align 4
@SLV_ADDR_MSK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @geni_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.geni_i2c_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.geni_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.geni_i2c_dev* %13, %struct.geni_i2c_dev** %8, align 8
  %14 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %15 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %17 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %16, i32 0, i32 3
  %18 = call i32 @reinit_completion(i32* %17)
  %19 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %20 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %3
  %27 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %28 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %34 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pm_runtime_put_noidle(i32 %36)
  %38 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %39 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pm_runtime_set_suspended(i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %133

44:                                               ; preds = %3
  %45 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %46 = call i32 @qcom_geni_i2c_conf(%struct.geni_i2c_dev* %45)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %109, %44
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @STOP_STRETCH, align 4
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  store i32 %60, i32* %11, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SLV_ADDR_SHFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @SLV_ADDR_MSK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 %75
  %77 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %78 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %77, i32 0, i32 1
  store %struct.i2c_msg* %76, %struct.i2c_msg** %78, align 8
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @I2C_M_RD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %59
  %89 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i64 %92
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @geni_i2c_rx_one_msg(%struct.geni_i2c_dev* %89, %struct.i2c_msg* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  br label %104

96:                                               ; preds = %59
  %97 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i64 %100
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @geni_i2c_tx_one_msg(%struct.geni_i2c_dev* %97, %struct.i2c_msg* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %96, %88
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %112

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %47

112:                                              ; preds = %107, %47
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %115, %112
  %118 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %119 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @pm_runtime_mark_last_busy(i32 %121)
  %123 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %124 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @pm_runtime_put_autosuspend(i32 %126)
  %128 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %129 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %128, i32 0, i32 1
  store %struct.i2c_msg* null, %struct.i2c_msg** %129, align 8
  %130 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %8, align 8
  %131 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %117, %26
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.geni_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(i32) #1

declare dso_local i32 @qcom_geni_i2c_conf(%struct.geni_i2c_dev*) #1

declare dso_local i32 @geni_i2c_rx_one_msg(%struct.geni_i2c_dev*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @geni_i2c_tx_one_msg(%struct.geni_i2c_dev*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
