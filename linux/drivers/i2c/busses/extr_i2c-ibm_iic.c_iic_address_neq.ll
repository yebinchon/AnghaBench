; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_address_neq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_address_neq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i64, i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_msg*, %struct.i2c_msg*)* @iic_address_neq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_address_neq(%struct.i2c_msg* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_msg* %0, %struct.i2c_msg** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I2C_M_TEN, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @I2C_M_TEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %17, %22
  br label %24

24:                                               ; preds = %12, %2
  %25 = phi i1 [ true, %2 ], [ %23, %12 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
