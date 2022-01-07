; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_i2c_readbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_i2c_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.or51211_state = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error (addr %02x, err == %i)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.or51211_state*, i32, i32*, i32)* @i2c_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_readbytes(%struct.or51211_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.or51211_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.or51211_state* %0, %struct.or51211_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @I2C_M_RD, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %21 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i2c_transfer(i32 %22, %struct.i2c_msg* %11, i32 1)
  store i32 %23, i32* %10, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EREMOTEIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
