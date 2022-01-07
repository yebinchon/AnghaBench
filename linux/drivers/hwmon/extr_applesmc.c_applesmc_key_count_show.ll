; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_key_count_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_key_count_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@KEY_COUNT_KEY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_key_count_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_key_count_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @KEY_COUNT_KEY, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %13 = call i32 @applesmc_read_key(i32 %11, i32* %12, i32 4)
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = shl i32 %15, 24
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 16
  %20 = add nsw i32 %16, %19
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 8
  %24 = add nsw i32 %20, %23
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @applesmc_read_key(i32, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
