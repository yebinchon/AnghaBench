; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_dev = type { %struct.amd_i2c_common }
%struct.amd_i2c_common = type { %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@i2c_read = common dso_local global i32 0, align 4
@i2c_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_i2c_dev*, %struct.i2c_msg*)* @i2c_amd_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_amd_xfer_msg(%struct.amd_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.amd_i2c_common*, align 8
  store %struct.amd_i2c_dev* %0, %struct.amd_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %7 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %4, align 8
  %8 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %7, i32 0, i32 0
  store %struct.amd_i2c_common* %8, %struct.amd_i2c_common** %6, align 8
  %9 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %4, align 8
  %10 = call i32 @i2c_amd_start_cmd(%struct.amd_i2c_dev* %9)
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %6, align 8
  %13 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %12, i32 0, i32 0
  store %struct.i2c_msg* %11, %struct.i2c_msg** %13, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 32
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %6, align 8
  %20 = call i64 @i2c_amd_dma_map(%struct.amd_i2c_common* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %6, align 8
  %35 = load i32, i32* @i2c_read, align 4
  %36 = call i32 @amd_mp2_rw(%struct.amd_i2c_common* %34, i32 %35)
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %6, align 8
  %39 = load i32, i32* @i2c_write, align 4
  %40 = call i32 @amd_mp2_rw(%struct.amd_i2c_common* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %4, align 8
  %43 = call i32 @i2c_amd_check_cmd_completion(%struct.amd_i2c_dev* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @i2c_amd_start_cmd(%struct.amd_i2c_dev*) #1

declare dso_local i64 @i2c_amd_dma_map(%struct.amd_i2c_common*) #1

declare dso_local i32 @amd_mp2_rw(%struct.amd_i2c_common*, i32) #1

declare dso_local i32 @i2c_amd_check_cmd_completion(%struct.amd_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
