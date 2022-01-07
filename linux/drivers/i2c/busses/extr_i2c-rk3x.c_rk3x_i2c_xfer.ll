; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64 }
%struct.i2c_msg = type { i32 }
%struct.rk3x_i2c = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"rk3x_i2c_setup() failed\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"timeout, ipd: 0x%02x, state: %d\0A\00", align 1
@REG_IPD = common dso_local global i32 0, align 4
@REG_IEN = common dso_local global i32 0, align 4
@REG_CON = common dso_local global i32 0, align 4
@REG_CON_TUNING_MASK = common dso_local global i32 0, align 4
@REG_CON_EN = common dso_local global i32 0, align 4
@REG_CON_STOP = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @rk3x_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3x_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk3x_i2c*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rk3x_i2c*
  store %struct.rk3x_i2c* %16, %struct.rk3x_i2c** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %18 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %17, i32 0, i32 2
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %22 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_enable(i32 %23)
  %25 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %26 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_enable(i32 %27)
  %29 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %30 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %129, %3
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %133

35:                                               ; preds = %31
  %36 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @rk3x_i2c_setup(%struct.rk3x_i2c* %36, %struct.i2c_msg* %40, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %49 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %133

52:                                               ; preds = %35
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %60 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %63 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %62, i32 0, i32 2
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %67 = call i32 @rk3x_i2c_start(%struct.rk3x_i2c* %66)
  %68 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %69 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %72 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @WAIT_TIMEOUT, align 4
  %78 = call i32 @msecs_to_jiffies(i32 %77)
  %79 = call i64 @wait_event_timeout(i32 %70, i32 %76, i32 %78)
  store i64 %79, i64* %8, align 8
  %80 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %81 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %80, i32 0, i32 2
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %61
  %87 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %88 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %91 = load i32, i32* @REG_IPD, align 4
  %92 = call i32 @i2c_readl(%struct.rk3x_i2c* %90, i32 %91)
  %93 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %94 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %98 = load i32, i32* @REG_IEN, align 4
  %99 = call i32 @i2c_writel(%struct.rk3x_i2c* %97, i32 0, i32 %98)
  %100 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %101 = load i32, i32* @REG_CON, align 4
  %102 = call i32 @i2c_readl(%struct.rk3x_i2c* %100, i32 %101)
  %103 = load i32, i32* @REG_CON_TUNING_MASK, align 4
  %104 = and i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* @REG_CON_EN, align 4
  %106 = load i32, i32* @REG_CON_STOP, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @REG_CON, align 4
  %113 = call i32 @i2c_writel(%struct.rk3x_i2c* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @STATE_IDLE, align 4
  %115 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %116 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %11, align 4
  br label %133

119:                                              ; preds = %61
  %120 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %121 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %126 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  br label %133

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %12, align 4
  br label %31

133:                                              ; preds = %124, %86, %47, %31
  %134 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %135 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @clk_disable(i32 %136)
  %138 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %139 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @clk_disable(i32 %140)
  %142 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %7, align 8
  %143 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %142, i32 0, i32 2
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %133
  %149 = load i32, i32* %11, align 4
  br label %152

150:                                              ; preds = %133
  %151 = load i32, i32* %6, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  ret i32 %153
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @rk3x_i2c_setup(%struct.rk3x_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rk3x_i2c_start(%struct.rk3x_i2c*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
