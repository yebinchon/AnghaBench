; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32 }
%struct.ltr501_data = type { i32 }

@LTR501_STATUS_ALS_RDY = common dso_local global i32 0, align 4
@LTR501_STATUS_PS_RDY = common dso_local global i32 0, align 4
@LTR501_ALS_DATA1 = common dso_local global i32 0, align 4
@LTR501_PS_DATA = common dso_local global i32 0, align 4
@LTR501_PS_DATA_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ltr501_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_poll_func*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.ltr501_data*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %16, %struct.iio_poll_func** %6, align 8
  %17 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %18 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %17, i32 0, i32 0
  %19 = load %struct.iio_dev*, %struct.iio_dev** %18, align 8
  store %struct.iio_dev* %19, %struct.iio_dev** %7, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call %struct.ltr501_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.ltr501_data* %21, %struct.ltr501_data** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 32)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @test_bit(i32 0, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @test_bit(i32 1, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %2
  %36 = load i32, i32* @LTR501_STATUS_ALS_RDY, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @test_bit(i32 2, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @LTR501_STATUS_PS_RDY, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.ltr501_data*, %struct.ltr501_data** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @ltr501_drdy(%struct.ltr501_data* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %129

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @LTR501_STATUS_ALS_RDY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %56
  %62 = load %struct.ltr501_data*, %struct.ltr501_data** %8, align 8
  %63 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LTR501_ALS_DATA1, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %67 = call i32 @regmap_bulk_read(i32 %64, i32 %65, i32* %66, i32 8)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %3, align 4
  br label %135

72:                                               ; preds = %61
  %73 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @test_bit(i32 0, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %72
  %87 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @test_bit(i32 1, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %92, %86
  br label %101

101:                                              ; preds = %100, %56
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @LTR501_STATUS_PS_RDY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load %struct.ltr501_data*, %struct.ltr501_data** %8, align 8
  %108 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @LTR501_PS_DATA, align 4
  %111 = call i32 @regmap_bulk_read(i32 %109, i32 %110, i32* %14, i32 2)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %129

115:                                              ; preds = %106
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @LTR501_PS_DATA_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %115, %101
  %124 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %126 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %127 = call i32 @iio_get_time_ns(%struct.iio_dev* %126)
  %128 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %124, i32* %125, i32 %127)
  br label %129

129:                                              ; preds = %123, %114, %55
  %130 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @iio_trigger_notify_done(i32 %132)
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %129, %70
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.ltr501_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ltr501_drdy(%struct.ltr501_data*, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
