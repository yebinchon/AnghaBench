; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.sh_mobile_i2c_data = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@I2C_M_STOP = common dso_local global i32 0, align 4
@OP_START = common dso_local global i32 0, align 4
@ICSR_TACK = common dso_local global i32 0, align 4
@SW_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Transfer request timed out\0A\00", align 1
@DMA_NONE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@ICCR = common dso_local global i32 0, align 4
@ICCR_SCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @sh_mobile_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_mobile_i2c_data*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = call %struct.sh_mobile_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.sh_mobile_i2c_data* %14, %struct.sh_mobile_i2c_data** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %126, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %129

23:                                               ; preds = %19
  %24 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %25 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i1 [ true, %23 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %37
  store %struct.i2c_msg* %38, %struct.i2c_msg** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %32
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I2C_M_STOP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %43, %32
  %51 = phi i1 [ true, %32 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %54 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %56 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @start_ch(%struct.sh_mobile_i2c_data* %57, %struct.i2c_msg* %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %65 = load i32, i32* @OP_START, align 4
  %66 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %50
  %68 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %69 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %72 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ICSR_TACK, align 4
  %75 = load i32, i32* @SW_DONE, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @wait_event_timeout(i32 %70, i32 %77, i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %83 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %86 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %89 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @i2c_put_dma_safe_msg_buf(i32 %84, i32 %87, i32 %90)
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %67
  %95 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %96 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %100 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DMA_NONE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %106 = call i32 @sh_mobile_i2c_cleanup_dma(%struct.sh_mobile_i2c_data* %105)
  br label %107

107:                                              ; preds = %104, %94
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %129

110:                                              ; preds = %67
  %111 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %112 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %117 = call i32 @poll_busy(%struct.sh_mobile_i2c_data* %116)
  store i32 %117, i32* %9, align 4
  br label %121

118:                                              ; preds = %110
  %119 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %120 = call i32 @poll_dte(%struct.sh_mobile_i2c_data* %119)
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %129

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %19

129:                                              ; preds = %124, %107, %19
  %130 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %131 = load i32, i32* @ICCR, align 4
  %132 = load i32, i32* @ICCR_SCP, align 4
  %133 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %130, i32 %131, i32 %132)
  %134 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %135 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @pm_runtime_put_sync(i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %143

141:                                              ; preds = %129
  %142 = load i32, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i32 [ %138, %140 ], [ %142, %141 ]
  ret i32 %144
}

declare dso_local %struct.sh_mobile_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @start_ch(%struct.sh_mobile_i2c_data*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @i2c_op(%struct.sh_mobile_i2c_data*, i32) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @i2c_put_dma_safe_msg_buf(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sh_mobile_i2c_cleanup_dma(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @poll_busy(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @poll_dte(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @iic_wr(%struct.sh_mobile_i2c_data*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
