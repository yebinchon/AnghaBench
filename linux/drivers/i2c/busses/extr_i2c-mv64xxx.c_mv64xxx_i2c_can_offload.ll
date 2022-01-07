; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_can_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_can_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv64xxx_i2c_data*)* @mv64xxx_i2c_can_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64xxx_i2c_can_offload(%struct.mv64xxx_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv64xxx_i2c_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %3, align 8
  %6 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %7 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %6, i32 0, i32 2
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  store %struct.i2c_msg* %8, %struct.i2c_msg** %4, align 8
  %9 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %10 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %13 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %22 = call i64 @mv64xxx_i2c_valid_offload_sz(%struct.i2c_msg* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %55

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %30 = call i64 @mv64xxx_i2c_valid_offload_sz(%struct.i2c_msg* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 1
  %35 = call i64 @mv64xxx_i2c_valid_offload_sz(%struct.i2c_msg* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I2C_M_RD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %37
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 1
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I2C_M_RD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %45, %37, %32, %28, %25
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %24, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @mv64xxx_i2c_valid_offload_sz(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
