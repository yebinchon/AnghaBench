; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"i2c read error\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"reading i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib3000_state*, i32)* @dib3000_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000_read_reg(%struct.dib3000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib3000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dib3000_state* %0, %struct.dib3000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  %11 = or i32 %10, 128
  %12 = and i32 %11, 255
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds i32, i32* %8, i64 1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  store i32 2, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 3
  %22 = load %struct.dib3000_state*, %struct.dib3000_state** %3, align 8
  %23 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %21, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i64 1
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 1
  store i32 2, i32* %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 2
  %31 = load i32, i32* @I2C_M_RD, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 3
  %33 = load %struct.dib3000_state*, %struct.dib3000_state** %3, align 8
  %34 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %32, align 8
  %37 = load %struct.dib3000_state*, %struct.dib3000_state** %3, align 8
  %38 = getelementptr inbounds %struct.dib3000_state, %struct.dib3000_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %41 = call i32 @i2c_transfer(i32 %39, %struct.i2c_msg* %40, i32 2)
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %2
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %50, %52
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %56, %58
  %60 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %53, i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %63, %65
  ret i32 %66
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @deb_i2c(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
