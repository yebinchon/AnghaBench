; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_offload_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_offload_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, i32, i32, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i64, i32, i32 }

@MV64XXX_I2C_BRIDGE_CONTROL_ENABLE = common dso_local global i64 0, align 8
@MV64XXX_I2C_BRIDGE_CONTROL_ADDR_SHIFT = common dso_local global i64 0, align 8
@I2C_M_TEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_BRIDGE_CONTROL_ADDR_EXT = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@MV64XXX_I2C_BRIDGE_CONTROL_WR = common dso_local global i64 0, align 8
@MV64XXX_I2C_BRIDGE_CONTROL_TX_SIZE_SHIFT = common dso_local global i64 0, align 8
@MV64XXX_I2C_BRIDGE_CONTROL_RD = common dso_local global i64 0, align 8
@MV64XXX_I2C_BRIDGE_CONTROL_RX_SIZE_SHIFT = common dso_local global i64 0, align 8
@MV64XXX_I2C_BRIDGE_CONTROL_REPEATED_START = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_BRIDGE_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv64xxx_i2c_data*)* @mv64xxx_i2c_offload_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64xxx_i2c_offload_xfer(%struct.mv64xxx_i2c_data* %0) #0 {
  %2 = alloca %struct.mv64xxx_i2c_data*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %2, align 8
  %11 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %12 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %11, i32 0, i32 5
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  store %struct.i2c_msg* %13, %struct.i2c_msg** %3, align 8
  %14 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %15 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %18 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %17, i32 0, i32 3
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_ENABLE, align 8
  %22 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_ADDR_SHIFT, align 8
  %27 = shl i64 %25, %26
  %28 = or i64 %21, %27
  store i64 %28, i64* %5, align 8
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I2C_M_TEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_ADDR_EXT, align 8
  %38 = load i64, i64* %5, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %36, %1
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 0
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @I2C_M_RD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %43
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 0
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_WR, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_TX_SIZE_SHIFT, align 8
  %61 = shl i64 %59, %60
  %62 = or i64 %58, %61
  %63 = load i64, i64* %5, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %5, align 8
  %65 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %66 = call i32 @mv64xxx_i2c_prepare_tx(%struct.mv64xxx_i2c_data* %65)
  br label %127

67:                                               ; preds = %43, %40
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i64 0
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @I2C_M_RD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 0
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_RD, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_RX_SIZE_SHIFT, align 8
  %88 = shl i64 %86, %87
  %89 = or i64 %85, %88
  %90 = load i64, i64* %5, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %5, align 8
  br label %126

92:                                               ; preds = %70, %67
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %125

95:                                               ; preds = %92
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i64 0
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %9, align 8
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i64 1
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_RD, align 8
  %109 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_WR, align 8
  %110 = or i64 %108, %109
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_TX_SIZE_SHIFT, align 8
  %113 = shl i64 %111, %112
  %114 = or i64 %110, %113
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_RX_SIZE_SHIFT, align 8
  %117 = shl i64 %115, %116
  %118 = or i64 %114, %117
  %119 = load i64, i64* @MV64XXX_I2C_BRIDGE_CONTROL_REPEATED_START, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* %5, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %5, align 8
  %123 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %124 = call i32 @mv64xxx_i2c_prepare_tx(%struct.mv64xxx_i2c_data* %123)
  br label %125

125:                                              ; preds = %95, %92
  br label %126

126:                                              ; preds = %125, %78
  br label %127

127:                                              ; preds = %126, %51
  %128 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %129 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  %130 = load i64, i64* %5, align 8
  %131 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %132 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_CONTROL, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i64 %130, i64 %135)
  %137 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %138 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %137, i32 0, i32 3
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  %141 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %142 = call i32 @mv64xxx_i2c_wait_for_completion(%struct.mv64xxx_i2c_data* %141)
  %143 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %144 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  ret i32 %145
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mv64xxx_i2c_prepare_tx(%struct.mv64xxx_i2c_data*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mv64xxx_i2c_wait_for_completion(%struct.mv64xxx_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
