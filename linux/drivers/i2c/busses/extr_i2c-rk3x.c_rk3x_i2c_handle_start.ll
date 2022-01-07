; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_handle_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_handle_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i64, i32, i32 }

@REG_INT_START = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unexpected irq in START: 0x%x\0A\00", align 1
@REG_IPD = common dso_local global i32 0, align 4
@REG_CON = common dso_local global i32 0, align 4
@REG_CON_START = common dso_local global i32 0, align 4
@REG_CON_MOD_TX = common dso_local global i64 0, align 8
@REG_INT_MBTF = common dso_local global i32 0, align 4
@REG_INT_NAKRCV = common dso_local global i32 0, align 4
@REG_IEN = common dso_local global i32 0, align 4
@STATE_WRITE = common dso_local global i32 0, align 4
@REG_INT_MBRF = common dso_local global i32 0, align 4
@STATE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*, i32)* @rk3x_i2c_handle_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_handle_start(%struct.rk3x_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.rk3x_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @REG_INT_START, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @rk3x_i2c_stop(%struct.rk3x_i2c* %10, i32 %12)
  %14 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %20 = call i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c* %19)
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %23 = load i32, i32* @REG_INT_START, align 4
  %24 = load i32, i32* @REG_IPD, align 4
  %25 = call i32 @i2c_writel(%struct.rk3x_i2c* %22, i32 %23, i32 %24)
  %26 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %27 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %28 = load i32, i32* @REG_CON, align 4
  %29 = call i32 @i2c_readl(%struct.rk3x_i2c* %27, i32 %28)
  %30 = load i32, i32* @REG_CON_START, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @REG_CON, align 4
  %34 = call i32 @i2c_writel(%struct.rk3x_i2c* %26, i32 %32, i32 %33)
  %35 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %36 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_CON_MOD_TX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %21
  %41 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %42 = load i32, i32* @REG_INT_MBTF, align 4
  %43 = load i32, i32* @REG_INT_NAKRCV, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @REG_IEN, align 4
  %46 = call i32 @i2c_writel(%struct.rk3x_i2c* %41, i32 %44, i32 %45)
  %47 = load i32, i32* @STATE_WRITE, align 4
  %48 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %49 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %51 = call i32 @rk3x_i2c_fill_transmit_buf(%struct.rk3x_i2c* %50)
  br label %64

52:                                               ; preds = %21
  %53 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %54 = load i32, i32* @REG_INT_MBRF, align 4
  %55 = load i32, i32* @REG_INT_NAKRCV, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @REG_IEN, align 4
  %58 = call i32 @i2c_writel(%struct.rk3x_i2c* %53, i32 %56, i32 %57)
  %59 = load i32, i32* @STATE_READ, align 4
  %60 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %61 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %63 = call i32 @rk3x_i2c_prepare_read(%struct.rk3x_i2c* %62)
  br label %64

64:                                               ; preds = %9, %52, %40
  ret void
}

declare dso_local i32 @rk3x_i2c_stop(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c*) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @rk3x_i2c_fill_transmit_buf(%struct.rk3x_i2c*) #1

declare dso_local i32 @rk3x_i2c_prepare_read(%struct.rk3x_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
