; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_msg_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_msg_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_i2c = type { i32, i32 }
%struct.mrq_i2c_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mrq_i2c_response = type { i32 }
%struct.tegra_bpmp_message = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, %struct.mrq_i2c_response* }
%struct.TYPE_5__ = type { i32, %struct.mrq_i2c_request* }

@CMD_I2C_XFER = common dso_local global i32 0, align 4
@MRQ_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_i2c*, %struct.mrq_i2c_request*, %struct.mrq_i2c_response*, i32)* @tegra_bpmp_i2c_msg_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_i2c_msg_xfer(%struct.tegra_bpmp_i2c* %0, %struct.mrq_i2c_request* %1, %struct.mrq_i2c_response* %2, i32 %3) #0 {
  %5 = alloca %struct.tegra_bpmp_i2c*, align 8
  %6 = alloca %struct.mrq_i2c_request*, align 8
  %7 = alloca %struct.mrq_i2c_response*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_bpmp_message, align 8
  %10 = alloca i32, align 4
  store %struct.tegra_bpmp_i2c* %0, %struct.tegra_bpmp_i2c** %5, align 8
  store %struct.mrq_i2c_request* %1, %struct.mrq_i2c_request** %6, align 8
  store %struct.mrq_i2c_response* %2, %struct.mrq_i2c_response** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @CMD_I2C_XFER, align 4
  %12 = load %struct.mrq_i2c_request*, %struct.mrq_i2c_request** %6, align 8
  %13 = getelementptr inbounds %struct.mrq_i2c_request, %struct.mrq_i2c_request* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mrq_i2c_request*, %struct.mrq_i2c_request** %6, align 8
  %18 = getelementptr inbounds %struct.mrq_i2c_request, %struct.mrq_i2c_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = call i32 @memset(%struct.tegra_bpmp_message* %9, i32 0, i32 40)
  %21 = load i32, i32* @MRQ_I2C, align 4
  %22 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.mrq_i2c_request*, %struct.mrq_i2c_request** %6, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.mrq_i2c_request* %23, %struct.mrq_i2c_request** %25, align 8
  %26 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 8, i32* %27, align 8
  %28 = load %struct.mrq_i2c_response*, %struct.mrq_i2c_response** %7, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.mrq_i2c_response* %28, %struct.mrq_i2c_response** %30, align 8
  %31 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @tegra_bpmp_transfer_atomic(i32 %38, %struct.tegra_bpmp_message* %9)
  store i32 %39, i32* %10, align 4
  br label %45

40:                                               ; preds = %4
  %41 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tegra_bpmp_transfer(i32 %43, %struct.tegra_bpmp_message* %9)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer_atomic(i32, %struct.tegra_bpmp_message*) #1

declare dso_local i32 @tegra_bpmp_transfer(i32, %struct.tegra_bpmp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
