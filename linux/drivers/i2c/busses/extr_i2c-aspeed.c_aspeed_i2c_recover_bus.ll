; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_recover_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_recover_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_i2c_bus = type { i32, i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ASPEED_I2C_CMD_REG = common dso_local global i64 0, align 8
@ASPEED_I2CD_SDA_LINE_STS = common dso_local global i32 0, align 4
@ASPEED_I2CD_SCL_LINE_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SCL hung (state %x), attempting recovery\0A\00", align 1
@ASPEED_I2CD_M_STOP_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"SDA hung (state %x), attempting recovery\0A\00", align 1
@ASPEED_I2CD_BUS_RECOVER_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_i2c_bus*)* @aspeed_i2c_recover_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_i2c_recover_bus(%struct.aspeed_i2c_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aspeed_i2c_bus*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aspeed_i2c_bus* %0, %struct.aspeed_i2c_bus** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %9 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %13 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ASPEED_I2C_CMD_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ASPEED_I2CD_SDA_LINE_STS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ASPEED_I2CD_SCL_LINE_STS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %137

28:                                               ; preds = %22
  %29 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %30 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %35 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %34, i32 0, i32 4
  %36 = call i32 @reinit_completion(i32* %35)
  %37 = load i32, i32* @ASPEED_I2CD_M_STOP_CMD, align 4
  %38 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %39 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ASPEED_I2C_CMD_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %45 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %44, i32 0, i32 0
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %49 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %48, i32 0, i32 4
  %50 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %51 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @wait_for_completion_timeout(i32* %49, i32 %53)
  store i64 %54, i64* %4, align 8
  %55 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %56 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %55, i32 0, i32 0
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %28
  br label %143

62:                                               ; preds = %28
  %63 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %64 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %143

68:                                               ; preds = %62
  %69 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %70 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ASPEED_I2C_CMD_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  %75 = load i32, i32* @ASPEED_I2CD_SCL_LINE_STS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %143

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  br label %136

82:                                               ; preds = %1
  %83 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %84 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %89 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %88, i32 0, i32 4
  %90 = call i32 @reinit_completion(i32* %89)
  %91 = load i32, i32* @ASPEED_I2CD_BUS_RECOVER_CMD, align 4
  %92 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %93 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ASPEED_I2C_CMD_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %99 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %98, i32 0, i32 0
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %103 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %102, i32 0, i32 4
  %104 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %105 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @wait_for_completion_timeout(i32* %103, i32 %107)
  store i64 %108, i64* %4, align 8
  %109 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %110 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %109, i32 0, i32 0
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load i64, i64* %4, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %82
  br label %143

116:                                              ; preds = %82
  %117 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %118 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %143

122:                                              ; preds = %116
  %123 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %124 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ASPEED_I2C_CMD_REG, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @readl(i64 %127)
  %129 = load i32, i32* @ASPEED_I2CD_SDA_LINE_STS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  br label %143

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %81
  br label %137

137:                                              ; preds = %136, %27
  %138 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %139 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %138, i32 0, i32 0
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %150

143:                                              ; preds = %132, %121, %115, %78, %67, %61
  %144 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %145 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %144, i32 0, i32 0
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  %148 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %149 = call i32 @aspeed_i2c_reset(%struct.aspeed_i2c_bus* %148)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %143, %137
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @aspeed_i2c_reset(%struct.aspeed_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
