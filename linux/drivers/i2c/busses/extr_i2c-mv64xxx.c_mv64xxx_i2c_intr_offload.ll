; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_intr_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_intr_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_BRIDGE_STATUS = common dso_local global i64 0, align 8
@MV64XXX_I2C_BRIDGE_STATUS_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_BRIDGE_CONTROL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv64xxx_i2c_data*)* @mv64xxx_i2c_intr_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64xxx_i2c_intr_offload(%struct.mv64xxx_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv64xxx_i2c_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %3, align 8
  %6 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %7 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %2, align 4
  br label %124

16:                                               ; preds = %1
  %17 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %18 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_STATUS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MV64XXX_I2C_BRIDGE_STATUS_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %31 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  br label %105

32:                                               ; preds = %16
  %33 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %34 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %33, i32 0, i32 5
  store i32 0, i32* %34, align 8
  %35 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %36 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %41 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I2C_M_RD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %51 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %52 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i32 @mv64xxx_i2c_read_offload_rx_data(%struct.mv64xxx_i2c_data* %50, %struct.TYPE_2__* %53)
  %55 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %56 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 1
  store %struct.TYPE_2__* %58, %struct.TYPE_2__** %56, align 8
  %59 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %60 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  br label %104

63:                                               ; preds = %39, %32
  %64 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %65 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %103

68:                                               ; preds = %63
  %69 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %70 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %69, i32 0, i32 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I2C_M_RD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %68
  %79 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %80 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @I2C_M_RD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %78
  %89 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %90 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %91 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 1
  %94 = call i32 @mv64xxx_i2c_read_offload_rx_data(%struct.mv64xxx_i2c_data* %89, %struct.TYPE_2__* %93)
  %95 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %96 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 2
  store %struct.TYPE_2__* %98, %struct.TYPE_2__** %96, align 8
  %99 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %100 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 2
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %88, %78, %68, %63
  br label %104

104:                                              ; preds = %103, %49
  br label %105

105:                                              ; preds = %104, %27
  %106 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %107 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_CONTROL, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 0, i64 %110)
  %112 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %113 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 0, i64 %116)
  %118 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %119 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %121 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %120, i32 0, i32 1
  %122 = call i32 @wake_up(i32* %121)
  %123 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %105, %14
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mv64xxx_i2c_read_offload_rx_data(%struct.mv64xxx_i2c_data*, %struct.TYPE_2__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
