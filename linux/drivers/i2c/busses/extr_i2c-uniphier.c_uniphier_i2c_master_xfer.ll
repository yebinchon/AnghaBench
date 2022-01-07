; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }

@I2C_M_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @uniphier_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 %14
  store %struct.i2c_msg* %15, %struct.i2c_msg** %9, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = call i32 @uniphier_i2c_check_bus_busy(%struct.i2c_adapter* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %23, %struct.i2c_msg** %8, align 8
  br label %24

24:                                               ; preds = %52, %22
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %27 = icmp ult %struct.i2c_msg* %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 1
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %32 = icmp eq %struct.i2c_msg* %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I2C_M_STOP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %33, %28
  %41 = phi i1 [ true, %28 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @uniphier_i2c_master_xfer_one(%struct.i2c_adapter* %43, %struct.i2c_msg* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %57

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 1
  store %struct.i2c_msg* %54, %struct.i2c_msg** %8, align 8
  br label %24

55:                                               ; preds = %24
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %49, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @uniphier_i2c_check_bus_busy(%struct.i2c_adapter*) #1

declare dso_local i32 @uniphier_i2c_master_xfer_one(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
