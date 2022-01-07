; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_tx_fifo_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_tx_fifo_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i64, %struct.i2c_msg*, %struct.qup_i2c_block }
%struct.i2c_msg = type { i32, i32* }
%struct.qup_i2c_block = type { i64 }

@QUP_TAG_START = common dso_local global i32 0, align 4
@QUP_TAG_STOP = common dso_local global i32 0, align 4
@QUP_TAG_DATA = common dso_local global i32 0, align 4
@QUP_MSW_SHIFT = common dso_local global i32 0, align 4
@QUP_OUT_FIFO_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_write_tx_fifo_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_write_tx_fifo_v1(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %9 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %9, i32 0, i32 3
  store %struct.qup_i2c_block* %10, %struct.qup_i2c_block** %3, align 8
  %11 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %11, i32 0, i32 2
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  store %struct.i2c_msg* %13, %struct.i2c_msg** %4, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %15 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @QUP_TAG_START, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  store i32 1, i32* %7, align 4
  %24 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %25 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %20
  br label %30

30:                                               ; preds = %111, %29
  %31 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %32 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %37 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br label %43

43:                                               ; preds = %35, %30
  %44 = phi i1 [ false, %30 ], [ %42, %35 ]
  br i1 %44, label %45, label %122

45:                                               ; preds = %43
  %46 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %47 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @QUP_TAG_STOP, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @QUP_TAG_DATA, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %68 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %63, %72
  %74 = load i32, i32* @QUP_MSW_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %90

78:                                               ; preds = %58
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %84 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %79, %88
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %78, %62
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %96 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = icmp eq i32 %97, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %94, %90
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %106 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @QUP_OUT_FIFO_BASE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  br label %111

111:                                              ; preds = %103, %94
  %112 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %113 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %119 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %119, align 8
  br label %30

122:                                              ; preds = %43
  ret void
}

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
