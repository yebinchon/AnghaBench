; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_iop3xx_data* }
%struct.i2c_algo_iop3xx_data = type { i32 }
%struct.i2c_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @iop3xx_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 0
  %14 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %13, align 8
  store %struct.i2c_algo_iop3xx_data* %14, %struct.i2c_algo_iop3xx_data** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %16 = call i32 @iop3xx_i2c_wait_idle(%struct.i2c_algo_iop3xx_data* %15, i32* %11)
  %17 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %18 = call i32 @iop3xx_i2c_reset(%struct.i2c_algo_iop3xx_data* %17)
  %19 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %20 = call i32 @iop3xx_i2c_enable(%struct.i2c_algo_iop3xx_data* %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = call i32 @iop3xx_i2c_handle_msg(%struct.i2c_adapter* %31, %struct.i2c_msg* %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %21

40:                                               ; preds = %28
  %41 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %42 = call i32 @iop3xx_i2c_transaction_cleanup(%struct.i2c_algo_iop3xx_data* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @iop3xx_i2c_wait_idle(%struct.i2c_algo_iop3xx_data*, i32*) #1

declare dso_local i32 @iop3xx_i2c_reset(%struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @iop3xx_i2c_enable(%struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @iop3xx_i2c_handle_msg(%struct.i2c_adapter*, %struct.i2c_msg*) #1

declare dso_local i32 @iop3xx_i2c_transaction_cleanup(%struct.i2c_algo_iop3xx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
