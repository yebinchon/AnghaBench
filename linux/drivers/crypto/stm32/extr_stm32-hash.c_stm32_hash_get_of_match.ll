; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_get_of_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_get_of_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no compatible OF match\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-maxburst\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dma-maxburst not specified, using 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*, %struct.device*)* @stm32_hash_get_of_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_get_of_match(%struct.stm32_hash_dev* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_hash_dev*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %6 = load %struct.device*, %struct.device** %5, align 8
  %7 = call i32 @of_device_get_match_data(%struct.device* %6)
  %8 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %23, i32 0, i32 0
  %25 = call i64 @of_property_read_u32(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_info(%struct.device* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %19
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
