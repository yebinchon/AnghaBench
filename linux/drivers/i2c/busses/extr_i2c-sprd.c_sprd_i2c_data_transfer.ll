; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_data_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_data_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_i2c = type { i64, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@I2C_FIFO_DEEP = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_FIFO_FULL_THLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_i2c*)* @sprd_i2c_data_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_i2c_data_transfer(%struct.sprd_i2c* %0) #0 {
  %2 = alloca %struct.sprd_i2c*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  store %struct.sprd_i2c* %0, %struct.sprd_i2c** %2, align 8
  %6 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @I2C_FIFO_DEEP, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  br label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @I2C_FIFO_DEEP, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %4, align 8
  %18 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %19 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %18, i32 0, i32 2
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %19, align 8
  store %struct.i2c_msg* %20, %struct.i2c_msg** %5, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I2C_M_RD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %16
  %28 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %29 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* @I2C_FIFO_FULL_THLD, align 8
  %33 = call i32 @sprd_i2c_read_bytes(%struct.sprd_i2c* %28, i32 %31, i64 %32)
  %34 = load i64, i64* @I2C_FIFO_FULL_THLD, align 8
  %35 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %36 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* @I2C_FIFO_FULL_THLD, align 8
  %40 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %41 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %47 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @I2C_FIFO_FULL_THLD, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %53 = call i32 @sprd_i2c_set_fifo_full_int(%struct.sprd_i2c* %52, i32 1)
  br label %54

54:                                               ; preds = %51, %27
  br label %81

55:                                               ; preds = %16
  %56 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %57 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %58 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @sprd_i2c_write_bytes(%struct.sprd_i2c* %56, i32 %59, i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %64 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %71 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @I2C_FIFO_DEEP, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %55
  %78 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %79 = call i32 @sprd_i2c_set_fifo_empty_int(%struct.sprd_i2c* %78, i32 1)
  br label %80

80:                                               ; preds = %77, %55
  br label %81

81:                                               ; preds = %80, %54
  ret void
}

declare dso_local i32 @sprd_i2c_read_bytes(%struct.sprd_i2c*, i32, i64) #1

declare dso_local i32 @sprd_i2c_set_fifo_full_int(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_write_bytes(%struct.sprd_i2c*, i32, i64) #1

declare dso_local i32 @sprd_i2c_set_fifo_empty_int(%struct.sprd_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
