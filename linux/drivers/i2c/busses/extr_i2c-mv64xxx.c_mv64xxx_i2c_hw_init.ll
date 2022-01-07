; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, %struct.TYPE_2__, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@MV64XXX_I2C_REG_BRIDGE_CONTROL = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_BRIDGE_TIMING = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_BRIDGE_INTR_MASK = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_CONTROL_TWSIEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_STOP = common dso_local global i32 0, align 4
@MV64XXX_I2C_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*)* @mv64xxx_i2c_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_hw_init(%struct.mv64xxx_i2c_data* %0) #0 {
  %2 = alloca %struct.mv64xxx_i2c_data*, align 8
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %2, align 8
  %3 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %4 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %9 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_CONTROL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 0, i64 %12)
  %14 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %15 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_TIMING, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %21 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %27 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_INTR_MASK, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  br label %32

32:                                               ; preds = %7, %1
  %33 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %34 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %37 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = call i32 @writel(i32 0, i64 %40)
  %42 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %43 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MV64XXX_I2C_BAUD_DIV_M(i32 %44)
  %46 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %47 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @MV64XXX_I2C_BAUD_DIV_N(i32 %48)
  %50 = or i32 %45, %49
  %51 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %52 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %55 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %53, %57
  %59 = call i32 @writel(i32 %50, i64 %58)
  %60 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %61 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %64 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %62, %66
  %68 = call i32 @writel(i32 0, i64 %67)
  %69 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %70 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %73 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %71, %75
  %77 = call i32 @writel(i32 0, i64 %76)
  %78 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_TWSIEN, align 4
  %79 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_STOP, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %82 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %85 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %83, %87
  %89 = call i32 @writel(i32 %80, i64 %88)
  %90 = load i32, i32* @MV64XXX_I2C_STATE_IDLE, align 4
  %91 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %92 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MV64XXX_I2C_BAUD_DIV_M(i32) #1

declare dso_local i32 @MV64XXX_I2C_BAUD_DIV_N(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
