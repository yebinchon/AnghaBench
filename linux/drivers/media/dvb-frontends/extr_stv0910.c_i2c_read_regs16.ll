; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_i2c_read_regs16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_i2c_read_regs16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"i2c read error ([%02x] %04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32, i32*, i32)* @i2c_read_regs16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read_regs16(%struct.i2c_adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %15 = load i32, i32* %9, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i32 2, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 1
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %31 = load i32*, i32** %10, align 8
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 3
  %35 = load i32, i32* @I2C_M_RD, align 4
  store i32 %35, i32* %34, align 4
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %37 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %38 = call i32 @i2c_transfer(%struct.i2c_adapter* %36, %struct.i2c_msg* %37, i32 2)
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %48

40:                                               ; preds = %5
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %49

48:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
