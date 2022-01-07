; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_smbus_xfer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_smbus_xfer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i32 }
%union.i2c_smbus_data = type { i32 }

@REG_RDCONF = common dso_local global i32 0, align 4
@I2C_RFIFO_RESET = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@I2C_RW_READ = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx2967_i2c*, i32, i8, i32, i32, %union.i2c_smbus_data*)* @zx2967_smbus_xfer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx2967_smbus_xfer_prepare(%struct.zx2967_i2c* %0, i32 %1, i8 signext %2, i32 %3, i32 %4, %union.i2c_smbus_data* %5) #0 {
  %7 = alloca %struct.zx2967_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.i2c_smbus_data*, align 8
  %13 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %union.i2c_smbus_data* %5, %union.i2c_smbus_data** %12, align 8
  %14 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %15 = load i32, i32* @REG_RDCONF, align 4
  %16 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @I2C_RFIFO_RESET, align 4
  %18 = load i32, i32* %13, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %13, align 4
  %20 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @REG_RDCONF, align 4
  %23 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %20, i32 %21, i32 %22)
  %24 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @zx2967_set_addr(%struct.zx2967_i2c* %24, i32 %25)
  %27 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %28 = load i32, i32* @REG_CMD, align 4
  %29 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @I2C_RW_READ, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @REG_CMD, align 4
  %37 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %88 [
    i32 130, label %39
    i32 129, label %44
    i32 128, label %62
  ]

39:                                               ; preds = %6
  %40 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @REG_DATA, align 4
  %43 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %40, i32 %41, i32 %42)
  br label %88

44:                                               ; preds = %6
  %45 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @REG_DATA, align 4
  %48 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %45, i32 %46, i32 %47)
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %56 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %12, align 8
  %57 = bitcast %union.i2c_smbus_data* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @REG_DATA, align 4
  %60 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %44
  br label %88

62:                                               ; preds = %6
  %63 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @REG_DATA, align 4
  %66 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %63, i32 %64, i32 %65)
  %67 = load i8, i8* %9, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %62
  %73 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %74 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %12, align 8
  %75 = bitcast %union.i2c_smbus_data* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = load i32, i32* @REG_DATA, align 4
  %79 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %73, i32 %77, i32 %78)
  %80 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %7, align 8
  %81 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %12, align 8
  %82 = bitcast %union.i2c_smbus_data* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 255
  %85 = load i32, i32* @REG_DATA, align 4
  %86 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %80, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %72, %62
  br label %88

88:                                               ; preds = %6, %87, %61, %39
  ret void
}

declare dso_local i32 @zx2967_i2c_readl(%struct.zx2967_i2c*, i32) #1

declare dso_local i32 @zx2967_i2c_writel(%struct.zx2967_i2c*, i32, i32) #1

declare dso_local i32 @zx2967_set_addr(%struct.zx2967_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
