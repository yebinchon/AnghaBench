; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_wait_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pnx.c_wait_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_pnx_algo_data = type { i64 }

@mstatus_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_pnx_algo_data*)* @wait_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_timeout(%struct.i2c_pnx_algo_data* %0) #0 {
  %2 = alloca %struct.i2c_pnx_algo_data*, align 8
  %3 = alloca i64, align 8
  store %struct.i2c_pnx_algo_data* %0, %struct.i2c_pnx_algo_data** %2, align 8
  %4 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %2, align 8
  %12 = call i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data* %11)
  %13 = call i32 @ioread32(i32 %12)
  %14 = load i32, i32* @mstatus_active, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi i1 [ false, %7 ], [ %16, %10 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = call i32 @mdelay(i32 1)
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %3, align 8
  br label %7

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  %25 = icmp sle i64 %24, 0
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
