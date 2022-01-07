; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_IPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"irq in STATE_IDLE, ipd = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"IRQ: state %d, ipd: %x\0A\00", align 1
@REG_INT_BRF = common dso_local global i32 0, align 4
@REG_INT_BTF = common dso_local global i32 0, align 4
@REG_INT_NAKRCV = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@REG_INT_ALL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rk3x_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3x_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rk3x_i2c*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.rk3x_i2c*
  store %struct.rk3x_i2c* %8, %struct.rk3x_i2c** %5, align 8
  %9 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %10 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %13 = load i32, i32* @REG_IPD, align 4
  %14 = call i32 @i2c_readl(%struct.rk3x_i2c* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %16 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 132
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %21 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %26 = call i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c* %25)
  br label %97

27:                                               ; preds = %2
  %28 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %29 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %32 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @REG_INT_BRF, align 4
  %37 = load i32, i32* @REG_INT_BTF, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @REG_INT_NAKRCV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %27
  %47 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %48 = load i32, i32* @REG_INT_NAKRCV, align 4
  %49 = load i32, i32* @REG_IPD, align 4
  %50 = call i32 @i2c_writel(%struct.rk3x_i2c* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @REG_INT_NAKRCV, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %56 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %46
  %64 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @rk3x_i2c_stop(%struct.rk3x_i2c* %64, i32 %66)
  br label %68

68:                                               ; preds = %63, %46
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @REG_INT_ALL, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %97

75:                                               ; preds = %69
  %76 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %77 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %96 [
    i32 130, label %79
    i32 128, label %83
    i32 131, label %87
    i32 129, label %91
    i32 132, label %95
  ]

79:                                               ; preds = %75
  %80 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @rk3x_i2c_handle_start(%struct.rk3x_i2c* %80, i32 %81)
  br label %96

83:                                               ; preds = %75
  %84 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @rk3x_i2c_handle_write(%struct.rk3x_i2c* %84, i32 %85)
  br label %96

87:                                               ; preds = %75
  %88 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @rk3x_i2c_handle_read(%struct.rk3x_i2c* %88, i32 %89)
  br label %96

91:                                               ; preds = %75
  %92 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @rk3x_i2c_handle_stop(%struct.rk3x_i2c* %92, i32 %93)
  br label %96

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %75, %95, %91, %87, %83, %79
  br label %97

97:                                               ; preds = %96, %74, %19
  %98 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %5, align 8
  %99 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %98, i32 0, i32 1
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @rk3x_i2c_stop(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @rk3x_i2c_handle_start(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @rk3x_i2c_handle_write(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @rk3x_i2c_handle_read(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @rk3x_i2c_handle_stop(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
