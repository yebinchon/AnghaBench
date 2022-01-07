; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_handle_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_handle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { %struct.st_i2c_client }
%struct.st_i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_i2c_dev*)* @st_i2c_handle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_i2c_handle_write(%struct.st_i2c_dev* %0) #0 {
  %2 = alloca %struct.st_i2c_dev*, align 8
  %3 = alloca %struct.st_i2c_client*, align 8
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %2, align 8
  %4 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %4, i32 0, i32 0
  store %struct.st_i2c_client* %5, %struct.st_i2c_client** %3, align 8
  %6 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %7 = call i32 @st_i2c_flush_rx_fifo(%struct.st_i2c_dev* %6)
  %8 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %14 = call i32 @st_i2c_terminate_xfer(%struct.st_i2c_dev* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %17 = call i32 @st_i2c_wr_fill_tx_fifo(%struct.st_i2c_dev* %16)
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @st_i2c_flush_rx_fifo(%struct.st_i2c_dev*) #1

declare dso_local i32 @st_i2c_terminate_xfer(%struct.st_i2c_dev*) #1

declare dso_local i32 @st_i2c_wr_fill_tx_fifo(%struct.st_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
