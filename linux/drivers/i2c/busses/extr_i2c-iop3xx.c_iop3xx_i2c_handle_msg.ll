; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_handle_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_handle_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_iop3xx_data* }
%struct.i2c_algo_iop3xx_data = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @iop3xx_i2c_handle_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_handle_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 0
  %10 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %9, align 8
  store %struct.i2c_algo_iop3xx_data* %10, %struct.i2c_algo_iop3xx_data** %6, align 8
  %11 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %6, align 8
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %13 = call i32 @iop3xx_i2c_send_target_addr(%struct.i2c_algo_iop3xx_data* %11, %struct.i2c_msg* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I2C_M_RD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iop3xx_i2c_readbytes(%struct.i2c_adapter* %26, i32 %29, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %18
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iop3xx_i2c_writebytes(%struct.i2c_adapter* %35, i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %25, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @iop3xx_i2c_send_target_addr(%struct.i2c_algo_iop3xx_data*, %struct.i2c_msg*) #1

declare dso_local i32 @iop3xx_i2c_readbytes(%struct.i2c_adapter*, i32, i32) #1

declare dso_local i32 @iop3xx_i2c_writebytes(%struct.i2c_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
