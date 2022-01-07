; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_load_i2c_mcr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_load_i2c_mcr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_i2c_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@I2C_MCR_A7 = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@I2C_MCR_AM = common dso_local global i32 0, align 4
@I2C_MCR_EA10 = common dso_local global i32 0, align 4
@I2C_MCR_SB = common dso_local global i32 0, align 4
@I2C_WRITE = common dso_local global i32 0, align 4
@I2C_MCR_OP = common dso_local global i32 0, align 4
@I2C_READ = common dso_local global i32 0, align 4
@I2C_MCR_STOP = common dso_local global i32 0, align 4
@I2C_MCR_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmk_i2c_dev*, i32)* @load_i2c_mcr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_i2c_mcr_reg(%struct.nmk_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nmk_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.nmk_i2c_dev* %0, %struct.nmk_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @I2C_MCR_A7, align 4
  %12 = call i32 @GEN_MASK(i32 %10, i32 %11, i32 1)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @I2C_M_TEN, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @I2C_MCR_AM, align 4
  %22 = call i32 @GEN_MASK(i32 2, i32 %21, i32 12)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 7
  %30 = and i32 %29, 7
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %6, align 2
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = load i32, i32* @I2C_MCR_EA10, align 4
  %35 = call i32 @GEN_MASK(i32 %33, i32 %34, i32 8)
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %43

38:                                               ; preds = %2
  %39 = load i32, i32* @I2C_MCR_AM, align 4
  %40 = call i32 @GEN_MASK(i32 1, i32 %39, i32 12)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %20
  %44 = load i32, i32* @I2C_MCR_SB, align 4
  %45 = call i32 @GEN_MASK(i32 0, i32 %44, i32 11)
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %49 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I2C_WRITE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i32, i32* @I2C_WRITE, align 4
  %56 = load i32, i32* @I2C_MCR_OP, align 4
  %57 = call i32 @GEN_MASK(i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %66

60:                                               ; preds = %43
  %61 = load i32, i32* @I2C_READ, align 4
  %62 = load i32, i32* @I2C_MCR_OP, align 4
  %63 = call i32 @GEN_MASK(i32 %61, i32 %62, i32 0)
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %68 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @I2C_MCR_STOP, align 4
  %73 = call i32 @GEN_MASK(i32 1, i32 %72, i32 14)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %82

76:                                               ; preds = %66
  %77 = load i32, i32* @I2C_MCR_STOP, align 4
  %78 = call i32 @GEN_MASK(i32 1, i32 %77, i32 14)
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %84 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @I2C_MCR_LENGTH, align 4
  %88 = call i32 @GEN_MASK(i32 %86, i32 %87, i32 15)
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @GEN_MASK(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
