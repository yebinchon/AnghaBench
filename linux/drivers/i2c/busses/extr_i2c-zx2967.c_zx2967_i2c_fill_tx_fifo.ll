; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"residue is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FIFO_MAX = common dso_local global i64 0, align 8
@REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx2967_i2c*)* @zx2967_i2c_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_i2c_fill_tx_fifo(%struct.zx2967_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zx2967_i2c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %3, align 8
  %6 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %10 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %16 = call i32 @DEV(%struct.zx2967_i2c* %15)
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @I2C_FIFO_MAX, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @REG_DATA, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @zx2967_i2c_writesb(%struct.zx2967_i2c* %27, i32* %28, i32 %29, i64 %30)
  %32 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %33 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %35 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  br label %52

36:                                               ; preds = %22
  %37 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @REG_DATA, align 4
  %40 = load i64, i64* @I2C_FIFO_MAX, align 8
  %41 = call i32 @zx2967_i2c_writesb(%struct.zx2967_i2c* %37, i32* %38, i32 %39, i64 %40)
  %42 = load i64, i64* @I2C_FIFO_MAX, align 8
  %43 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %44 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* @I2C_FIFO_MAX, align 8
  %48 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %49 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %47
  store i32* %51, i32** %49, align 8
  br label %52

52:                                               ; preds = %36, %26
  %53 = call i32 (...) @barrier()
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DEV(%struct.zx2967_i2c*) #1

declare dso_local i32 @zx2967_i2c_writesb(%struct.zx2967_i2c*, i32*, i32, i64) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
