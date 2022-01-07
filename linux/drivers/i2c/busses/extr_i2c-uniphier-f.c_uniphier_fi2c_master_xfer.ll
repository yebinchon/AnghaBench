; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }

@I2C_M_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @uniphier_fi2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_fi2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 %15
  store %struct.i2c_msg* %16, %struct.i2c_msg** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = call i32 @uniphier_fi2c_check_bus_busy(%struct.i2c_adapter* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %24, %struct.i2c_msg** %8, align 8
  br label %25

25:                                               ; preds = %58, %23
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %28 = icmp ult %struct.i2c_msg* %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 1
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %33 = icmp eq %struct.i2c_msg* %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I2C_M_STOP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i1 [ true, %29 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @uniphier_fi2c_master_xfer_one(%struct.i2c_adapter* %44, %struct.i2c_msg* %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %63

53:                                               ; preds = %41
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 1
  store %struct.i2c_msg* %60, %struct.i2c_msg** %8, align 8
  br label %25

61:                                               ; preds = %25
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %51, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @uniphier_fi2c_check_bus_busy(%struct.i2c_adapter*) #1

declare dso_local i32 @uniphier_fi2c_master_xfer_one(%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
