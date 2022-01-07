; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_i2c_dev = type { i32, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32, i32, i32 }

@BCM2835_I2C_C_ST = common dso_local global i32 0, align 4
@BCM2835_I2C_C_I2CEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@BCM2835_I2C_C_READ = common dso_local global i32 0, align 4
@BCM2835_I2C_C_INTR = common dso_local global i32 0, align 4
@BCM2835_I2C_C_INTT = common dso_local global i32 0, align 4
@BCM2835_I2C_C_INTD = common dso_local global i32 0, align 4
@BCM2835_I2C_A = common dso_local global i32 0, align 4
@BCM2835_I2C_DLEN = common dso_local global i32 0, align 4
@BCM2835_I2C_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_i2c_dev*)* @bcm2835_i2c_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_i2c_start_transfer(%struct.bcm2835_i2c_dev* %0) #0 {
  %2 = alloca %struct.bcm2835_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.bcm2835_i2c_dev* %0, %struct.bcm2835_i2c_dev** %2, align 8
  %6 = load i32, i32* @BCM2835_I2C_C_ST, align 4
  %7 = load i32, i32* @BCM2835_I2C_C_I2CEN, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %9, i32 0, i32 3
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  store %struct.i2c_msg* %11, %struct.i2c_msg** %4, align 8
  %12 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %18 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %77

22:                                               ; preds = %1
  %23 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %24 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %31 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %36 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %22
  %44 = load i32, i32* @BCM2835_I2C_C_READ, align 4
  %45 = load i32, i32* @BCM2835_I2C_C_INTR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %22
  %50 = load i32, i32* @BCM2835_I2C_C_INTT, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @BCM2835_I2C_C_INTD, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %62 = load i32, i32* @BCM2835_I2C_A, align 4
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev* %61, i32 %62, i32 %65)
  %67 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %68 = load i32, i32* @BCM2835_I2C_DLEN, align 4
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev* %67, i32 %68, i32 %71)
  %73 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %74 = load i32, i32* @BCM2835_I2C_C, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %60, %21
  ret void
}

declare dso_local i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
