; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.qup_i2c_dev = type { i32, %struct.i2c_msg*, i64, i64, i64 }

@QUP_SW_RESET = common dso_local global i64 0, align 8
@QUP_RESET_STATE = common dso_local global i32 0, align 4
@I2C_MINI_CORE = common dso_local global i32 0, align 4
@I2C_N_VAL = common dso_local global i32 0, align 4
@QUP_CONFIG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @qup_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qup_i2c_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = call %struct.qup_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.qup_i2c_dev* %11, %struct.qup_i2c_dev** %7, align 8
  %12 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %110

19:                                               ; preds = %3
  %20 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %21 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %23 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %25 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QUP_SW_RESET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 1, i64 %28)
  %30 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %31 = load i32, i32* @QUP_RESET_STATE, align 4
  %32 = call i32 @qup_i2c_poll_state(%struct.qup_i2c_dev* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %110

36:                                               ; preds = %19
  %37 = load i32, i32* @I2C_MINI_CORE, align 4
  %38 = load i32, i32* @I2C_N_VAL, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %41 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @QUP_CONFIG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %101, %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %104

50:                                               ; preds = %46
  %51 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %52 = call i64 @qup_i2c_poll_state_i2c_master(%struct.qup_i2c_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %110

57:                                               ; preds = %50
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i64 %60
  %62 = call i64 @qup_i2c_check_msg_len(%struct.i2c_msg* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %110

67:                                               ; preds = %57
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  %72 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %73 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %72, i32 0, i32 1
  store %struct.i2c_msg* %71, %struct.i2c_msg** %73, align 8
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i64 %76
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @I2C_M_RD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %85 = call i32 @qup_i2c_read_one(%struct.qup_i2c_dev* %84)
  store i32 %85, i32* %8, align 4
  br label %89

86:                                               ; preds = %67
  %87 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %88 = call i32 @qup_i2c_write_one(%struct.qup_i2c_dev* %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %104

93:                                               ; preds = %89
  %94 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %95 = load i32, i32* @QUP_RESET_STATE, align 4
  %96 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %104

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %46

104:                                              ; preds = %99, %92, %46
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %104
  br label %110

110:                                              ; preds = %109, %64, %54, %35, %18
  %111 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %112 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @pm_runtime_mark_last_busy(i32 %113)
  %115 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %116 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @pm_runtime_put_autosuspend(i32 %117)
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.qup_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @qup_i2c_poll_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i64 @qup_i2c_poll_state_i2c_master(%struct.qup_i2c_dev*) #1

declare dso_local i64 @qup_i2c_check_msg_len(%struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_read_one(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_write_one(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_change_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
