; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_mode_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_mode_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i64, i64 }

@QUP_REPACK_EN = common dso_local global i32 0, align 4
@QUP_OUTPUT_BLK_MODE = common dso_local global i32 0, align 4
@QUP_MX_WRITE_CNT = common dso_local global i64 0, align 8
@QUP_MX_OUTPUT_CNT = common dso_local global i64 0, align 8
@QUP_INPUT_BLK_MODE = common dso_local global i32 0, align 4
@QUP_MX_READ_CNT = common dso_local global i64 0, align 8
@QUP_MX_INPUT_CNT = common dso_local global i64 0, align 8
@QUP_IO_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_conf_mode_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_conf_mode_v2(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  %4 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %5 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %5, i32 0, i32 1
  store %struct.qup_i2c_block* %6, %struct.qup_i2c_block** %3, align 8
  %7 = load i32, i32* @QUP_REPACK_EN, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %9 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @QUP_OUTPUT_BLK_MODE, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QUP_MX_WRITE_CNT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 0, i64 %20)
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %24 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QUP_MX_OUTPUT_CNT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  br label %29

29:                                               ; preds = %22, %12
  %30 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %31 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* @QUP_INPUT_BLK_MODE, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @QUP_MX_READ_CNT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 0, i64 %42)
  br label %51

44:                                               ; preds = %29
  %45 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %46 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @QUP_MX_INPUT_CNT, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  br label %51

51:                                               ; preds = %44, %34
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %54 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @QUP_IO_MODE, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
