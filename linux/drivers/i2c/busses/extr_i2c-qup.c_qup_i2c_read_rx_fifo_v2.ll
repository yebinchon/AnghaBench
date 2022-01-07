; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_read_rx_fifo_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_read_rx_fifo_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_read_rx_fifo_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_read_rx_fifo_v2(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %4 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %4, i32 0, i32 0
  store %struct.qup_i2c_block* %5, %struct.qup_i2c_block** %3, align 8
  %6 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %7 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %12 = call i32 @qup_i2c_recv_tags(%struct.qup_i2c_dev* %11)
  %13 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %14 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %17 = call i32 @qup_i2c_recv_data(%struct.qup_i2c_dev* %16)
  %18 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %19 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %24 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %15
  ret void
}

declare dso_local i32 @qup_i2c_recv_tags(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_recv_data(%struct.qup_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
