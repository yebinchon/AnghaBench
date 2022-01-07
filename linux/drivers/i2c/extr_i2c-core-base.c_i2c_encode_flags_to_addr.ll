; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_encode_flags_to_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_encode_flags_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i16, i32 }

@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@I2C_ADDR_OFFSET_TEN_BIT = common dso_local global i16 0, align 2
@I2C_CLIENT_SLAVE = common dso_local global i32 0, align 4
@I2C_ADDR_OFFSET_SLAVE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.i2c_client*)* @i2c_encode_flags_to_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @i2c_encode_flags_to_addr(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i16, align 2
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 4
  store i16 %6, i16* %3, align 2
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i16, i16* @I2C_ADDR_OFFSET_TEN_BIT, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %3, align 2
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I2C_CLIENT_SLAVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i16, i16* @I2C_ADDR_OFFSET_SLAVE, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %3, align 2
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i16, i16* %3, align 2
  ret i16 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
