; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_xfer_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_xfer_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.qup_i2c_dev = type { i32, i32, i32, %struct.i2c_msg*, i32, i64, i64, i64 }

@QUP_SW_RESET = common dso_local global i64 0, align 8
@QUP_RESET_STATE = common dso_local global i32 0, align 4
@I2C_MINI_CORE = common dso_local global i32 0, align 4
@I2C_N_VAL_V2 = common dso_local global i32 0, align 4
@QUP_CONFIG = common dso_local global i64 0, align 8
@QUP_V2_TAGS_EN = common dso_local global i32 0, align 4
@QUP_I2C_MASTER_GEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ONE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @qup_i2c_xfer_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_xfer_v2(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
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
  store i32 0, i32* %9, align 4
  %12 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %15 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %17 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %149

23:                                               ; preds = %3
  %24 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @qup_i2c_determine_mode_v2(%struct.qup_i2c_dev* %24, %struct.i2c_msg* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %149

31:                                               ; preds = %23
  %32 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %33 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QUP_SW_RESET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 1, i64 %36)
  %38 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %39 = load i32, i32* @QUP_RESET_STATE, align 4
  %40 = call i32 @qup_i2c_poll_state(%struct.qup_i2c_dev* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %149

44:                                               ; preds = %31
  %45 = load i32, i32* @I2C_MINI_CORE, align 4
  %46 = load i32, i32* @I2C_N_VAL_V2, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %49 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @QUP_CONFIG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load i32, i32* @QUP_V2_TAGS_EN, align 4
  %55 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %56 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @QUP_I2C_MASTER_GEN, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %62 = call i64 @qup_i2c_poll_state_i2c_master(%struct.qup_i2c_dev* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %149

67:                                               ; preds = %44
  %68 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %69 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %74 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %73, i32 0, i32 4
  %75 = call i32 @reinit_completion(i32* %74)
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @qup_i2c_bam_xfer(%struct.i2c_adapter* %76, %struct.i2c_msg* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %82 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %129

83:                                               ; preds = %67
  %84 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %85 = call i32 @qup_i2c_conf_mode_v2(%struct.qup_i2c_dev* %84)
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %123, %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %86
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i64 %93
  %95 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %96 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %95, i32 0, i32 3
  store %struct.i2c_msg* %94, %struct.i2c_msg** %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %97, %99
  %101 = zext i1 %100 to i32
  %102 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %103 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i64 %108
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @I2C_M_RD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @qup_i2c_xfer_v2_msg(%struct.qup_i2c_dev* %104, i32 %105, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %90
  br label %126

122:                                              ; preds = %90
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %86

126:                                              ; preds = %121, %86
  %127 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %128 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %127, i32 0, i32 3
  store %struct.i2c_msg* null, %struct.i2c_msg** %128, align 8
  br label %129

129:                                              ; preds = %126, %72
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %134 = load i32, i32* @ONE_BYTE, align 4
  %135 = call i32 @qup_i2c_bus_active(%struct.qup_i2c_dev* %133, i32 %134)
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %141 = load i32, i32* @QUP_RESET_STATE, align 4
  %142 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %136
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %146, %143
  br label %149

149:                                              ; preds = %148, %64, %43, %30, %22
  %150 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %151 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @pm_runtime_mark_last_busy(i32 %152)
  %154 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %155 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @pm_runtime_put_autosuspend(i32 %156)
  %158 = load i32, i32* %8, align 4
  ret i32 %158
}

declare dso_local %struct.qup_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @qup_i2c_determine_mode_v2(%struct.qup_i2c_dev*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @qup_i2c_poll_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i64 @qup_i2c_poll_state_i2c_master(%struct.qup_i2c_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @qup_i2c_bam_xfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @qup_i2c_conf_mode_v2(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_xfer_v2_msg(%struct.qup_i2c_dev*, i32, i32) #1

declare dso_local i32 @qup_i2c_bus_active(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @qup_i2c_change_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
