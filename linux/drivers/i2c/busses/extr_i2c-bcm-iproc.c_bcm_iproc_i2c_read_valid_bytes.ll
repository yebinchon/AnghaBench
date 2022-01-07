; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_read_valid_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_read_valid_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_iproc_i2c_dev = type { i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i64, i32* }

@M_RX_OFFSET = common dso_local global i32 0, align 4
@M_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@M_RX_STATUS_MASK = common dso_local global i32 0, align 4
@M_RX_DATA_SHIFT = common dso_local global i32 0, align 4
@M_RX_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_iproc_i2c_dev*)* @bcm_iproc_i2c_read_valid_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_iproc_i2c_read_valid_bytes(%struct.bcm_iproc_i2c_dev* %0) #0 {
  %2 = alloca %struct.bcm_iproc_i2c_dev*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm_iproc_i2c_dev* %0, %struct.bcm_iproc_i2c_dev** %2, align 8
  %5 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %5, i32 0, i32 1
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %7, %struct.i2c_msg** %3, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %2, align 8
  %18 = load i32, i32* @M_RX_OFFSET, align 4
  %19 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @M_RX_STATUS_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @M_RX_STATUS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %44

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @M_RX_DATA_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @M_RX_DATA_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %2, align 8
  %37 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %32, i32* %39, align 4
  %40 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %2, align 8
  %41 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %8

44:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
