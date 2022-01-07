; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_itd1000.c_itd1000_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_itd1000.c_itd1000_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itd1000_state = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"itd1000 I2C read failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.itd1000_state*, i32)* @itd1000_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itd1000_read_reg(%struct.itd1000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.itd1000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.itd1000_state* %0, %struct.itd1000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32* %5, i32** %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %13 = load %struct.itd1000_state*, %struct.itd1000_state** %4, align 8
  %14 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i64 1
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  store i32* %6, i32** %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  %22 = load i32, i32* @I2C_M_RD, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  %24 = load %struct.itd1000_state*, %struct.itd1000_state** %4, align 8
  %25 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %23, align 8
  %29 = load %struct.itd1000_state*, %struct.itd1000_state** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %31, 255
  %33 = load %struct.itd1000_state*, %struct.itd1000_state** %4, align 8
  %34 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, 255
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = call i32 @itd1000_write_regs(%struct.itd1000_state* %29, i32 %32, i32* %40, i32 1)
  %42 = load %struct.itd1000_state*, %struct.itd1000_state** %4, align 8
  %43 = getelementptr inbounds %struct.itd1000_state, %struct.itd1000_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %46 = call i32 @i2c_transfer(i32 %44, %struct.i2c_msg* %45, i32 2)
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = call i32 @itd_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EREMOTEIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %2
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @itd1000_write_regs(%struct.itd1000_state*, i32, i32*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @itd_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
