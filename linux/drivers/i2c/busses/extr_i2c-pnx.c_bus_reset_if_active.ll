; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_bus_reset_if_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_bus_reset_if_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_pnx_algo_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@mstatus_active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Bus is still active after xfer. Reset it...\0A\00", align 1
@mcntrl_reset = common dso_local global i32 0, align 4
@mstatus_rfe = common dso_local global i32 0, align 4
@mstatus_tfe = common dso_local global i32 0, align 4
@mstatus_nai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_pnx_algo_data*)* @bus_reset_if_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bus_reset_if_active(%struct.i2c_pnx_algo_data* %0) #0 {
  %2 = alloca %struct.i2c_pnx_algo_data*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_pnx_algo_data* %0, %struct.i2c_pnx_algo_data** %2, align 8
  %4 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %5 = call i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data* %4)
  %6 = call i32 @ioread32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @mstatus_active, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %20 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %19)
  %21 = call i32 @ioread32(i32 %20)
  %22 = load i32, i32* @mcntrl_reset, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %25 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %24)
  %26 = call i32 @iowrite32(i32 %23, i32 %25)
  %27 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %28 = call i32 @wait_reset(%struct.i2c_pnx_algo_data* %27)
  br label %68

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @mstatus_rfe, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @mstatus_tfe, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %41 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %40)
  %42 = call i32 @ioread32(i32 %41)
  %43 = load i32, i32* @mcntrl_reset, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %46 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %45)
  %47 = call i32 @iowrite32(i32 %44, i32 %46)
  %48 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %49 = call i32 @wait_reset(%struct.i2c_pnx_algo_data* %48)
  br label %67

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @mstatus_nai, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %57 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %56)
  %58 = call i32 @ioread32(i32 %57)
  %59 = load i32, i32* @mcntrl_reset, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %62 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %61)
  %63 = call i32 @iowrite32(i32 %60, i32 %62)
  %64 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %65 = call i32 @wait_reset(%struct.i2c_pnx_algo_data* %64)
  br label %66

66:                                               ; preds = %55, %50
  br label %67

67:                                               ; preds = %66, %39
  br label %68

68:                                               ; preds = %67, %10
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @wait_reset(%struct.i2c_pnx_algo_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
