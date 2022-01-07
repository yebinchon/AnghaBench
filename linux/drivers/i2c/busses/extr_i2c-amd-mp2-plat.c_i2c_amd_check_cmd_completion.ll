; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_check_cmd_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_check_cmd_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_dev = type { %struct.TYPE_4__, i32, %struct.amd_i2c_common }
%struct.TYPE_4__ = type { i32 }
%struct.amd_i2c_common = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@i2c_read = common dso_local global i64 0, align 8
@i2c_write = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_i2c_dev*)* @i2c_amd_check_cmd_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_amd_check_cmd_completion(%struct.amd_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_i2c_dev*, align 8
  %4 = alloca %struct.amd_i2c_common*, align 8
  %5 = alloca i64, align 8
  store %struct.amd_i2c_dev* %0, %struct.amd_i2c_dev** %3, align 8
  %6 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %6, i32 0, i32 2
  store %struct.amd_i2c_common* %7, %struct.amd_i2c_common** %4, align 8
  %8 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %3, align 8
  %9 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %8, i32 0, i32 1
  %10 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %3, align 8
  %11 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @wait_for_completion_timeout(i32* %9, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %4, align 8
  %16 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @i2c_read, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %4, align 8
  %22 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @i2c_write, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20, %1
  %27 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %4, align 8
  %28 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 32
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %4, align 8
  %35 = call i32 @i2c_amd_dma_unmap(%struct.amd_i2c_common* %34)
  br label %36

36:                                               ; preds = %33, %26, %20
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %4, align 8
  %41 = call i32 @amd_mp2_rw_timeout(%struct.amd_i2c_common* %40)
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %36
  %45 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %4, align 8
  %46 = call i32 @amd_mp2_process_event(%struct.amd_i2c_common* %45)
  %47 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %4, align 8
  %48 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51, %39
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @i2c_amd_dma_unmap(%struct.amd_i2c_common*) #1

declare dso_local i32 @amd_mp2_rw_timeout(%struct.amd_i2c_common*) #1

declare dso_local i32 @amd_mp2_process_event(%struct.amd_i2c_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
