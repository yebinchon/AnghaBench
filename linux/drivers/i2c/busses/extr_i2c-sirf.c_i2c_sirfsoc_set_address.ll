; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_i2c = type { i32, i64, i64 }
%struct.i2c_msg = type { i64, i32 }

@SIRFSOC_I2C_START = common dso_local global i8 0, align 1
@SIRFSOC_I2C_WRITE = common dso_local global i8 0, align 1
@SIRFSOC_I2C_STOP = common dso_local global i8 0, align 1
@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_i2c*, %struct.i2c_msg*)* @i2c_sirfsoc_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_sirfsoc_set_address(%struct.sirfsoc_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.sirfsoc_i2c*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.sirfsoc_i2c* %0, %struct.sirfsoc_i2c** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = load i8, i8* @SIRFSOC_I2C_START, align 1
  %8 = zext i8 %7 to i32
  %9 = call zeroext i8 @SIRFSOC_I2C_CMD_RP(i32 0)
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = load i8, i8* @SIRFSOC_I2C_WRITE, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %6, align 1
  %16 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i8, i8* @SIRFSOC_I2C_STOP, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  br label %32

32:                                               ; preds = %25, %20, %2
  %33 = load i8, i8* %6, align 1
  %34 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %35 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = call i64 @SIRFSOC_I2C_CMD(i32 %39)
  %42 = add nsw i64 %36, %41
  %43 = call i32 @writel(i8 zeroext %33, i64 %42)
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %45 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %44)
  store i8 %45, i8* %5, align 1
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %32
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %5, align 1
  br label %57

57:                                               ; preds = %52, %32
  %58 = load i8, i8* %5, align 1
  %59 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %60 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %3, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = call i64 @SIRFSOC_I2C_CMD(i32 %64)
  %67 = add nsw i64 %61, %66
  %68 = call i32 @writel(i8 zeroext %58, i64 %67)
  ret void
}

declare dso_local zeroext i8 @SIRFSOC_I2C_CMD_RP(i32) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i64 @SIRFSOC_I2C_CMD(i32) #1

declare dso_local zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
