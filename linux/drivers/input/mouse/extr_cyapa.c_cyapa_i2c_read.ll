; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32, i64, i32*)* @cyapa_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_i2c_read(%struct.cyapa* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cyapa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %14 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  store i32* %7, i32** %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i64 1
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %29 = load i32*, i32** %9, align 8
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  %31 = load i32, i32* @I2C_M_RD, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 3
  %33 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %41 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %40)
  %42 = call i32 @i2c_transfer(i32 %38, %struct.i2c_msg* %39, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %44)
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
