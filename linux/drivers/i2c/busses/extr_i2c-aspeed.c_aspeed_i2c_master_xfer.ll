; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.aspeed_i2c_bus = type { i32, i64, i32, i32, i64, i64, %struct.TYPE_2__, i32, i64, %struct.i2c_msg*, i64 }
%struct.TYPE_2__ = type { i32 }

@ASPEED_I2C_CMD_REG = common dso_local global i64 0, align 8
@ASPEED_I2CD_BUS_BUSY_STS = common dso_local global i32 0, align 4
@ASPEED_I2C_MASTER_PENDING = common dso_local global i64 0, align 8
@ASPEED_I2C_MASTER_INACTIVE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @aspeed_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aspeed_i2c_bus*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.aspeed_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.aspeed_i2c_bus* %13, %struct.aspeed_i2c_bus** %8, align 8
  %14 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %15 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %14, i32 0, i32 3
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %19 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %21 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %3
  %25 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %26 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ASPEED_I2C_CMD_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  %31 = load i32, i32* @ASPEED_I2CD_BUS_BUSY_STS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %36 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %35, i32 0, i32 3
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %40 = call i32 @aspeed_i2c_recover_bus(%struct.aspeed_i2c_bus* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %122

45:                                               ; preds = %34
  %46 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %47 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %46, i32 0, i32 3
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %24, %3
  %51 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %52 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %51, i32 0, i32 10
  store i64 0, i64* %52, align 8
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %54 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %55 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %54, i32 0, i32 9
  store %struct.i2c_msg* %53, %struct.i2c_msg** %55, align 8
  %56 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %57 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %60 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %62 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %61, i32 0, i32 7
  %63 = call i32 @reinit_completion(i32* %62)
  %64 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %65 = call i32 @aspeed_i2c_do_start(%struct.aspeed_i2c_bus* %64)
  %66 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %67 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %66, i32 0, i32 3
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %71 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %70, i32 0, i32 7
  %72 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %73 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @wait_for_completion_timeout(i32* %71, i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %118

79:                                               ; preds = %50
  %80 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %81 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %86 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ASPEED_I2C_CMD_REG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  %91 = load i32, i32* @ASPEED_I2CD_BUS_BUSY_STS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %96 = call i32 @aspeed_i2c_recover_bus(%struct.aspeed_i2c_bus* %95)
  br label %97

97:                                               ; preds = %94, %84, %79
  %98 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %99 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %98, i32 0, i32 3
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %103 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ASPEED_I2C_MASTER_PENDING, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i64, i64* @ASPEED_I2C_MASTER_INACTIVE, align 8
  %109 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %110 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %97
  %112 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %113 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %112, i32 0, i32 3
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load i32, i32* @ETIMEDOUT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %122

118:                                              ; preds = %50
  %119 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %8, align 8
  %120 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %111, %43
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.aspeed_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @aspeed_i2c_recover_bus(%struct.aspeed_i2c_bus*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @aspeed_i2c_do_start(%struct.aspeed_i2c_bus*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
