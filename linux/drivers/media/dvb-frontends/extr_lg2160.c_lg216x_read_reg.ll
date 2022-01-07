; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"reg: 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"error (addr %02x reg %04x error (ret == %i)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*, i32, i32*)* @lg216x_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_read_reg(%struct.lg216x_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lg216x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.lg216x_state* %0, %struct.lg216x_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds i32, i32* %11, i64 1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 3
  %23 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %24 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %22, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 1
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %29, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  %33 = load i32, i32* @I2C_M_RD, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  %35 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %36 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %34, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @lg_reg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %43 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %46 = call i32 @i2c_transfer(i32 %44, %struct.i2c_msg* %45, i32 2)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %65

49:                                               ; preds = %3
  %50 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %51 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @lg_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %66

62:                                               ; preds = %49
  %63 = load i32, i32* @EREMOTEIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62, %60
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @lg_reg(i8*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @lg_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
