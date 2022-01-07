; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_i2c_priv = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@I2C_ARBITRATE_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ARB bus loss\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@HIX5I2C_STAT_RW_ERR = common dso_local global i64 0, align 8
@I2C_ACK_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No ACK from device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@I2C_OVER_INTR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@HIX5I2C_STAT_RW_SUCCESS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hix5hd2_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hix5hd2_i2c_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hix5hd2_i2c_priv*
  store %struct.hix5hd2_i2c_priv* %9, %struct.hix5hd2_i2c_priv** %5, align 8
  %10 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %11 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %10, i32 0, i32 4
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %14 = call i32 @hix5hd2_i2c_clr_pend_irq(%struct.hix5hd2_i2c_priv* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @I2C_ARBITRATE_INTR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %21 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %27 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @HIX5I2C_STAT_RW_ERR, align 8
  %29 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %30 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %92

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @I2C_ACK_INTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %38 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  %43 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %44 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @HIX5I2C_STAT_RW_ERR, align 8
  %46 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %47 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %92

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @I2C_OVER_INTR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %56 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %54
  %60 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %61 = call i32 @hix5hd2_rw_preprocess(%struct.hix5hd2_i2c_priv* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %67 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* @HIX5I2C_STAT_RW_ERR, align 8
  %69 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %70 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %92

71:                                               ; preds = %59
  %72 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %73 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %72, i32 0, i32 6
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @I2C_M_RD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %82 = call i32 @hix5hd2_read_handle(%struct.hix5hd2_i2c_priv* %81)
  br label %86

83:                                               ; preds = %71
  %84 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %85 = call i32 @hix5hd2_write_handle(%struct.hix5hd2_i2c_priv* %84)
  br label %86

86:                                               ; preds = %83, %80
  br label %90

87:                                               ; preds = %54
  %88 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %89 = call i32 @hix5hd2_rw_over(%struct.hix5hd2_i2c_priv* %88)
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90, %49
  br label %92

92:                                               ; preds = %91, %64, %36, %19
  %93 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %94 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @HIX5I2C_STAT_RW_SUCCESS, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %100 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %99, i32 0, i32 6
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %105 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %98, %92
  %109 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %110 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HIX5I2C_STAT_RW_ERR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108, %98
  %115 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %116 = call i32 @hix5hd2_i2c_disable_irq(%struct.hix5hd2_i2c_priv* %115)
  %117 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %118 = call i32 @hix5hd2_i2c_clr_pend_irq(%struct.hix5hd2_i2c_priv* %117)
  %119 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %120 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %119, i32 0, i32 5
  %121 = call i32 @complete(i32* %120)
  br label %122

122:                                              ; preds = %114, %108
  %123 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %124 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %123, i32 0, i32 4
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hix5hd2_i2c_clr_pend_irq(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @hix5hd2_rw_preprocess(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @hix5hd2_read_handle(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @hix5hd2_write_handle(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @hix5hd2_rw_over(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @hix5hd2_i2c_disable_irq(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
