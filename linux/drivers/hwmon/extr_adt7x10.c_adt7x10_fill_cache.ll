; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_fill_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7x10_data = type { i32*, i32 }

@ADT7X10_REG_TEMP = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to read value: reg %d, error %d\0A\00", align 1
@ADT7X10_T_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @adt7x10_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7x10_fill_cache(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.adt7x10_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.adt7x10_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.adt7x10_data* %8, %struct.adt7x10_data** %4, align 8
  store i32 1, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.adt7x10_data*, %struct.adt7x10_data** %4, align 8
  %12 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %9
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32*, i32** @ADT7X10_REG_TEMP, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @adt7x10_read_word(%struct.device* %17, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32*, i32** @ADT7X10_REG_TEMP, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %16
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.adt7x10_data*, %struct.adt7x10_data** %4, align 8
  %39 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %9

47:                                               ; preds = %9
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load i32, i32* @ADT7X10_T_HYST, align 4
  %50 = call i32 @adt7x10_read_byte(%struct.device* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = load i32, i32* @ADT7X10_T_HYST, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %47
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.adt7x10_data*, %struct.adt7x10_data** %4, align 8
  %62 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %53, %26
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.adt7x10_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @adt7x10_read_word(%struct.device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @adt7x10_read_byte(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
