; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_i2c = type { i64, i64, i64, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SIRFSOC_I2C_STATUS = common dso_local global i64 0, align 8
@SIRFSOC_I2C_STAT_ERR = common dso_local global i32 0, align 4
@SIRFSOC_I2C_ERR_NOACK = common dso_local global i32 0, align 4
@SIRFSOC_I2C_STAT_NACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ACK not received\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"I2C error\0A\00", align 1
@SIRFSOC_I2C_CTRL = common dso_local global i64 0, align 8
@SIRFSOC_I2C_RESET = common dso_local global i32 0, align 4
@SIRFSOC_I2C_STAT_CMD_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i2c_sirfsoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_sirfsoc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sirfsoc_i2c*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sirfsoc_i2c*
  store %struct.sirfsoc_i2c* %8, %struct.sirfsoc_i2c** %5, align 8
  %9 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SIRFSOC_I2C_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SIRFSOC_I2C_STAT_ERR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %2
  %20 = load i32, i32* @SIRFSOC_I2C_ERR_NOACK, align 4
  %21 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @SIRFSOC_I2C_STAT_ERR, align 4
  %24 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SIRFSOC_I2C_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SIRFSOC_I2C_STAT_NACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %36 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %44

39:                                               ; preds = %19
  %40 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %41 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %46 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = load i32, i32* @SIRFSOC_I2C_RESET, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %54 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %69, %44
  %60 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %61 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SIRFSOC_I2C_CTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  %66 = load i32, i32* @SIRFSOC_I2C_RESET, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = call i32 (...) @cpu_relax()
  br label %59

71:                                               ; preds = %59
  %72 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %72, i32 0, i32 3
  %74 = call i32 @complete(i32* %73)
  br label %112

75:                                               ; preds = %2
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @SIRFSOC_I2C_STAT_CMD_DONE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %82 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %87 = call i32 @i2c_sirfsoc_read_data(%struct.sirfsoc_i2c* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %90 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %93 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %98 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %97, i32 0, i32 3
  %99 = call i32 @complete(i32* %98)
  br label %103

100:                                              ; preds = %88
  %101 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %102 = call i32 @i2c_sirfsoc_queue_cmd(%struct.sirfsoc_i2c* %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i32, i32* @SIRFSOC_I2C_STAT_CMD_DONE, align 4
  %105 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %5, align 8
  %106 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SIRFSOC_I2C_STATUS, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  br label %111

111:                                              ; preds = %103, %75
  br label %112

112:                                              ; preds = %111, %71
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %113
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @i2c_sirfsoc_read_data(%struct.sirfsoc_i2c*) #1

declare dso_local i32 @i2c_sirfsoc_queue_cmd(%struct.sirfsoc_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
