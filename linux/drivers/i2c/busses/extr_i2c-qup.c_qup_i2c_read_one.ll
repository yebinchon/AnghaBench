; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_read_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_read_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { %struct.TYPE_2__*, i64, %struct.qup_i2c_block }
%struct.TYPE_2__ = type { i32 }
%struct.qup_i2c_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*)* @qup_i2c_read_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_read_one(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %4 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %4, i32 0, i32 2
  store %struct.qup_i2c_block* %5, %struct.qup_i2c_block** %3, align 8
  %6 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %9 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %8, i32 0, i32 0
  store i32 2, i32* %9, align 4
  %10 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %16 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %18 = call i32 @qup_i2c_conf_xfer_v1(%struct.qup_i2c_dev* %17, i32 1)
  ret i32 %18
}

declare dso_local i32 @qup_i2c_conf_xfer_v1(%struct.qup_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
