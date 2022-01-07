; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, %struct.qup_i2c_block, %struct.i2c_msg* }
%struct.qup_i2c_block = type { i64, i64 }
%struct.i2c_msg = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*)* @qup_i2c_write_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_write_one(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca %struct.qup_i2c_block*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %5 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %5, i32 0, i32 2
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %7, %struct.i2c_msg** %3, align 8
  %8 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %8, i32 0, i32 1
  store %struct.qup_i2c_block* %9, %struct.qup_i2c_block** %4, align 8
  %10 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %4, align 8
  %17 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %4, align 8
  %19 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %21 = call i32 @qup_i2c_conf_xfer_v1(%struct.qup_i2c_dev* %20, i32 0)
  ret i32 %21
}

declare dso_local i32 @qup_i2c_conf_xfer_v1(%struct.qup_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
