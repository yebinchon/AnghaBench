; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_i2c_pnx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_i2c_pnx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.i2c_pnx_algo_data = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.timer_list = type { i32 }

@mif = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [66 x i8] c"Master timed out. stat = %04x, cntrl = %04x. Resetting master...\0A\00", align 1
@mcntrl_afie = common dso_local global i32 0, align 4
@mcntrl_naie = common dso_local global i32 0, align 4
@mcntrl_rffie = common dso_local global i32 0, align 4
@mcntrl_drmie = common dso_local global i32 0, align 4
@mcntrl_reset = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@alg_data = common dso_local global %struct.i2c_pnx_algo_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @i2c_pnx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pnx_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.i2c_pnx_algo_data*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %6 = ptrtoint %struct.i2c_pnx_algo_data* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mif, i32 0, i32 0), align 4
  %9 = call %struct.i2c_pnx_algo_data* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.i2c_pnx_algo_data* %9, %struct.i2c_pnx_algo_data** %3, align 8
  %10 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %14 = call i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data* %13)
  %15 = call i32 @ioread32(i32 %14)
  %16 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %17 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %16)
  %18 = call i32 @ioread32(i32 %17)
  %19 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %21 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %20)
  %22 = call i32 @ioread32(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @mcntrl_afie, align 4
  %24 = load i32, i32* @mcntrl_naie, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @mcntrl_rffie, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @mcntrl_drmie, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %35 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %34)
  %36 = call i32 @iowrite32(i32 %33, i32 %35)
  %37 = load i32, i32* @mcntrl_reset, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %42 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %41)
  %43 = call i32 @iowrite32(i32 %40, i32 %42)
  %44 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %45 = call i32 @wait_reset(%struct.i2c_pnx_algo_data* %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  %48 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %49 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %52 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @complete(i32* %53)
  ret void
}

declare dso_local %struct.i2c_pnx_algo_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @wait_reset(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
