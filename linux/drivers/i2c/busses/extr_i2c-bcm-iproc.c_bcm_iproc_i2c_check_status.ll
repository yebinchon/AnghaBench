; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_iproc_i2c_dev = type { i32 }
%struct.i2c_msg = type { i32 }

@M_CMD_OFFSET = common dso_local global i32 0, align 4
@M_CMD_STATUS_SHIFT = common dso_local global i32 0, align 4
@M_CMD_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"lost bus arbitration\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"NAK addr:0x%02x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"NAK data\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bus timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"FIFO under-run\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"RX FIFO full\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"unknown error code=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_iproc_i2c_dev*, %struct.i2c_msg*)* @bcm_iproc_i2c_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_iproc_i2c_check_status(%struct.bcm_iproc_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_iproc_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_iproc_i2c_dev* %0, %struct.bcm_iproc_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %7 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %8 = load i32, i32* @M_CMD_OFFSET, align 4
  %9 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @M_CMD_STATUS_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = load i32, i32* @M_CMD_STATUS_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %62 [
    i32 129, label %16
    i32 133, label %17
    i32 132, label %24
    i32 131, label %34
    i32 128, label %41
    i32 134, label %48
    i32 130, label %55
  ]

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %19 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %26 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %2
  %35 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %2
  %42 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %43 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %76

48:                                               ; preds = %2
  %49 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %50 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %2
  %56 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %57 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %76

62:                                               ; preds = %2
  %63 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  %68 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %69 = call i32 @bcm_iproc_i2c_enable_disable(%struct.bcm_iproc_i2c_dev* %68, i32 0)
  %70 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %71 = call i32 @bcm_iproc_i2c_init(%struct.bcm_iproc_i2c_dev* %70)
  %72 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %4, align 8
  %73 = call i32 @bcm_iproc_i2c_enable_disable(%struct.bcm_iproc_i2c_dev* %72, i32 1)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %62, %55, %48, %41, %34, %24, %17, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @bcm_iproc_i2c_enable_disable(%struct.bcm_iproc_i2c_dev*, i32) #1

declare dso_local i32 @bcm_iproc_i2c_init(%struct.bcm_iproc_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
