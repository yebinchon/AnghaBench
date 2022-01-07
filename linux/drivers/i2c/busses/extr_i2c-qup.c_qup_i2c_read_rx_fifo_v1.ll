; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_read_rx_fifo_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_read_rx_fifo_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, i64, %struct.i2c_msg*, %struct.qup_i2c_block }
%struct.i2c_msg = type { i64, i32* }
%struct.qup_i2c_block = type { i32, i64 }

@QUP_IN_FIFO_BASE = common dso_local global i64 0, align 8
@QUP_MSW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_read_rx_fifo_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_read_rx_fifo_v1(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %7 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %7, i32 0, i32 3
  store %struct.qup_i2c_block* %8, %struct.qup_i2c_block** %3, align 8
  %9 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %9, i32 0, i32 2
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  store %struct.i2c_msg* %11, %struct.i2c_msg** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %60, %1
  %13 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %14 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br label %25

25:                                               ; preds = %17, %12
  %26 = phi i1 [ false, %12 ], [ %24, %17 ]
  br i1 %26, label %27, label %67

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %33 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QUP_IN_FIFO_BASE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %44 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %39, i32* %47, align 4
  br label %60

48:                                               ; preds = %27
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @QUP_MSW_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %56 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %59, align 4
  br label %60

60:                                               ; preds = %48, %31
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %64 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  br label %12

67:                                               ; preds = %25
  %68 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %69 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %77 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %67
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
