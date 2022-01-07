; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i32, i32, i64 }

@MPC_I2C_SR = common dso_local global i64 0, align 8
@CSR_MIF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mpc_i2c*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mpc_i2c*
  store %struct.mpc_i2c* %8, %struct.mpc_i2c** %6, align 8
  %9 = load %struct.mpc_i2c*, %struct.mpc_i2c** %6, align 8
  %10 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MPC_I2C_SR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readb(i64 %13)
  %15 = load i32, i32* @CSR_MIF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.mpc_i2c*, %struct.mpc_i2c** %6, align 8
  %20 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MPC_I2C_SR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readb(i64 %23)
  %25 = load %struct.mpc_i2c*, %struct.mpc_i2c** %6, align 8
  %26 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mpc_i2c*, %struct.mpc_i2c** %6, align 8
  %28 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MPC_I2C_SR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i32 0, i64 %31)
  %33 = load %struct.mpc_i2c*, %struct.mpc_i2c** %6, align 8
  %34 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %33, i32 0, i32 1
  %35 = call i32 @wake_up(i32* %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
