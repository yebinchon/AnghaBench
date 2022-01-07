; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_recv_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_recv_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i32, i32, i32 }

@QUP_IN_FIFO_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_recv_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_recv_tags(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %4 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %4, i32 0, i32 1
  store %struct.qup_i2c_block* %5, %struct.qup_i2c_block** %3, align 8
  %6 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QUP_IN_FIFO_BASE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  %12 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %15 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 8
  %18 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %19 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %23 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %26 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %28 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %31 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
