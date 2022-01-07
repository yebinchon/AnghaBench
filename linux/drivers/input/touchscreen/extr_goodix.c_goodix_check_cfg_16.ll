; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_check_cfg_16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_check_cfg_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [45 x i8] c"The checksum of the config fw is not correct\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Config fw must have Config_Fresh register set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goodix_ts_data*, %struct.firmware*)* @goodix_check_cfg_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_check_cfg_16(%struct.goodix_ts_data* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.goodix_ts_data*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.firmware*, %struct.firmware** %5, align 8
  %10 = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 3
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.firmware*, %struct.firmware** %5, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @get_unaligned_be16(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %6, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.firmware*, %struct.firmware** %5, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @get_unaligned_be16(i32* %40)
  %42 = icmp ne i32 %34, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %45 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %70

51:                                               ; preds = %30
  %52 = load %struct.firmware*, %struct.firmware** %5, align 8
  %53 = getelementptr inbounds %struct.firmware, %struct.firmware* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %63 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %61, %43
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
