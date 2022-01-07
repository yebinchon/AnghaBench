; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_master_xfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_master_xfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.uniphier_fi2c_priv = type { i32, i32, i64, i32, i64, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_INT_FAULTS = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_STOP = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_RST_TBRST = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_RST_RBRST = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_RST = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_CR_MST = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR_STA = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"transaction timeout.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_DEFER_STOP_COMP = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_SR = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_SR_STS = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_SR_BB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"stop condition was not completed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32)* @uniphier_fi2c_master_xfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_fi2c_master_xfer_one(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uniphier_fi2c_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = call %struct.uniphier_fi2c_priv* @i2c_get_adapdata(%struct.i2c_adapter* %16)
  store %struct.uniphier_fi2c_priv* %17, %struct.uniphier_fi2c_priv** %10, align 8
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I2C_M_RD, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %27 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %32 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @UNIPHIER_FI2C_INT_FAULTS, align 8
  %34 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %35 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %37 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %39 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %4
  %43 = load i32, i32* @UNIPHIER_FI2C_STOP, align 4
  %44 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %45 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %4
  %49 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %50 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %49, i32 0, i32 5
  %51 = call i32 @reinit_completion(i32* %50)
  %52 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %53 = load i32, i32* @U32_MAX, align 4
  %54 = call i32 @uniphier_fi2c_clear_irqs(%struct.uniphier_fi2c_priv* %52, i32 %53)
  %55 = load i32, i32* @UNIPHIER_FI2C_RST_TBRST, align 4
  %56 = load i32, i32* @UNIPHIER_FI2C_RST_RBRST, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %59 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UNIPHIER_FI2C_RST, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %65 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %64, i32 0, i32 3
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %48
  %71 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @uniphier_fi2c_rx_init(%struct.uniphier_fi2c_priv* %71, i32 %74)
  br label %83

76:                                               ; preds = %48
  %77 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @uniphier_fi2c_tx_init(%struct.uniphier_fi2c_priv* %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %70
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @UNIPHIER_FI2C_CR_MST, align 4
  %88 = load i32, i32* @UNIPHIER_FI2C_CR_STA, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %91 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @UNIPHIER_FI2C_CR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  br label %96

96:                                               ; preds = %86, %83
  %97 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %98 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %97, i32 0, i32 3
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %102 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %101, i32 0, i32 5
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @wait_for_completion_timeout(i32* %102, i32 %105)
  store i64 %106, i64* %12, align 8
  %107 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %108 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %107, i32 0, i32 3
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  %111 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %112 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %114 = call i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv* %113)
  %115 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %116 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %115, i32 0, i32 3
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %96
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %126 = call i32 @uniphier_fi2c_recover(%struct.uniphier_fi2c_priv* %125)
  %127 = load i32, i32* @ETIMEDOUT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %172

129:                                              ; preds = %96
  %130 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %131 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UNIPHIER_FI2C_DEFER_STOP_COMP, align 4
  %134 = and i32 %132, %133
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %129
  %138 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %139 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @UNIPHIER_FI2C_SR, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @UNIPHIER_FI2C_SR_STS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %137
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @UNIPHIER_FI2C_SR_BB, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %148, %137
  %155 = phi i1 [ false, %137 ], [ %153, %148 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @readl_poll_timeout(i64 %142, i32 %143, i32 %156, i32 1, i32 20)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %162 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %161, i32 0, i32 0
  %163 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %164 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %165 = call i32 @uniphier_fi2c_recover(%struct.uniphier_fi2c_priv* %164)
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %5, align 4
  br label %172

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %129
  %169 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %10, align 8
  %170 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %168, %160, %121
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.uniphier_fi2c_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @uniphier_fi2c_clear_irqs(%struct.uniphier_fi2c_priv*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uniphier_fi2c_rx_init(%struct.uniphier_fi2c_priv*, i32) #1

declare dso_local i32 @uniphier_fi2c_tx_init(%struct.uniphier_fi2c_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @uniphier_fi2c_recover(%struct.uniphier_fi2c_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
