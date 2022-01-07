; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_rx_tags_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_rx_tags_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i64, i32, i32 }

@QUP_OUT_FIFO_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_write_rx_tags_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_write_rx_tags_v2(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %4 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %4, i32 0, i32 1
  store %struct.qup_i2c_block* %5, %struct.qup_i2c_block** %3, align 8
  %6 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %7 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %8 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %7, i32 0, i32 3
  %9 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %10 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %9, i32 0, i32 2
  %11 = call i32 @qup_i2c_write_blk_data(%struct.qup_i2c_dev* %6, i32* %8, i32* %10)
  %12 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %18 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %21 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QUP_OUT_FIFO_BASE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  br label %26

26:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @qup_i2c_write_blk_data(%struct.qup_i2c_dev*, i32*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
