; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i32, i64 }

@CCR_MSTA = common dso_local global i32 0, align 4
@CCR_MTX = common dso_local global i32 0, align 4
@CCR_MEN = common dso_local global i32 0, align 4
@MPC_I2C_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc_i2c*)* @mpc_i2c_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_i2c_fixup(%struct.mpc_i2c* %0) #0 {
  %2 = alloca %struct.mpc_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mpc_i2c* %0, %struct.mpc_i2c** %2, align 8
  %5 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sdiv i32 1000000, %7
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %1
  store i32 9, i32* %3, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %19 = call i32 @writeccr(%struct.mpc_i2c* %18, i32 0)
  %20 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %21 = load i32, i32* @CCR_MSTA, align 4
  %22 = load i32, i32* @CCR_MTX, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CCR_MEN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @writeccr(%struct.mpc_i2c* %20, i32 %25)
  %27 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %28 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MPC_I2C_DR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readb(i64 %31)
  %33 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %34 = load i32, i32* @CCR_MEN, align 4
  %35 = call i32 @writeccr(%struct.mpc_i2c* %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 1
  %38 = call i32 @udelay(i32 %37)
  br label %39

39:                                               ; preds = %17
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %3, align 4
  br label %14

42:                                               ; preds = %14
  ret void
}

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
