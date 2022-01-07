; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_tx_fifo_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_tx_fifo_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@QUP_OUT_FIFO_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_write_tx_fifo_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_write_tx_fifo_v2(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %4 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %4, i32 0, i32 1
  store %struct.qup_i2c_block* %5, %struct.qup_i2c_block** %3, align 8
  %6 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %7 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %12 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %12, i32 0, i32 8
  %14 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %15 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %14, i32 0, i32 7
  %16 = call i32 @qup_i2c_write_blk_data(%struct.qup_i2c_dev* %11, i32* %13, i32* %15)
  %17 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %18 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %21 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %19
  %26 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %27 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %28 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %27, i32 0, i32 6
  %29 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %30 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %29, i32 0, i32 5
  %31 = call i32 @qup_i2c_write_blk_data(%struct.qup_i2c_dev* %26, i32* %28, i32* %30)
  %32 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %33 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %25
  %37 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %38 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %62

42:                                               ; preds = %36
  %43 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %44 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %50 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %25
  br label %62

52:                                               ; preds = %47, %24
  %53 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %54 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %57 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QUP_OUT_FIFO_BASE, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  br label %62

62:                                               ; preds = %52, %51, %41
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
