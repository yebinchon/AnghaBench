; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_i2c = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32 }

@SIRFSOC_I2C_CTRL = common dso_local global i64 0, align 8
@SIRFSOC_I2C_CMD_DONE_EN = common dso_local global i32 0, align 4
@SIRFSOC_I2C_ERR_INT_EN = common dso_local global i32 0, align 4
@SIRFSOC_I2C_ERR_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Transfer timeout\0A\00", align 1
@SIRFSOC_I2C_CMD_START = common dso_local global i64 0, align 8
@SIRFSOC_I2C_RESET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sirfsoc_i2c*, %struct.i2c_msg*)* @i2c_sirfsoc_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_sirfsoc_xfer_msg(%struct.sirfsoc_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.sirfsoc_i2c*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sirfsoc_i2c* %0, %struct.sirfsoc_i2c** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %8 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = mul nsw i32 %16, 50
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %21 = call i32 @i2c_sirfsoc_set_address(%struct.sirfsoc_i2c* %19, %struct.i2c_msg* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SIRFSOC_I2C_CMD_DONE_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SIRFSOC_I2C_ERR_INT_EN, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %28 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %34 = call i32 @i2c_sirfsoc_queue_cmd(%struct.sirfsoc_i2c* %33)
  %35 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %36 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %35, i32 0, i32 3
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @wait_for_completion_timeout(i32* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %2
  %41 = load i64, i64* @SIRFSOC_I2C_ERR_TIMEOUT, align 8
  %42 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %43 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %45 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %40, %2
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SIRFSOC_I2C_CMD_DONE_EN, align 4
  %51 = load i32, i32* @SIRFSOC_I2C_ERR_INT_EN, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %56 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %62 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SIRFSOC_I2C_CMD_START, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 0, i64 %65)
  %67 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %68 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SIRFSOC_I2C_ERR_TIMEOUT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %48
  %73 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %74 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  %79 = load i32, i32* @SIRFSOC_I2C_RESET, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %82 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %97, %72
  %88 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %89 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @readl(i64 %92)
  %94 = load i32, i32* @SIRFSOC_I2C_RESET, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = call i32 (...) @cpu_relax()
  br label %87

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %48
  %101 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %102 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EAGAIN, align 4
  %107 = sub nsw i32 0, %106
  br label %109

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %105
  %110 = phi i32 [ %107, %105 ], [ 0, %108 ]
  ret i32 %110
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_sirfsoc_set_address(%struct.sirfsoc_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @i2c_sirfsoc_queue_cmd(%struct.sirfsoc_i2c*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
