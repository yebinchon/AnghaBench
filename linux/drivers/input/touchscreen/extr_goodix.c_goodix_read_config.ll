; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GOODIX_CONFIG_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error reading config: %d\0A\00", align 1
@GOODIX_INT_TRIGGER = common dso_local global i32 0, align 4
@GOODIX_MAX_CONTACTS = common dso_local global i32 0, align 4
@TRIGGER_LOC = common dso_local global i64 0, align 8
@MAX_CONTACTS_LOC = common dso_local global i64 0, align 8
@RESOLUTION_LOC = common dso_local global i64 0, align 8
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goodix_ts_data*)* @goodix_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodix_read_config(%struct.goodix_ts_data* %0) #0 {
  %2 = alloca %struct.goodix_ts_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %2, align 8
  %9 = load i32, i32* @GOODIX_CONFIG_MAX_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %14 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %17 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %22 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @goodix_i2c_read(%struct.TYPE_4__* %15, i32 %20, i32* %12, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %1
  %30 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %31 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @GOODIX_INT_TRIGGER, align 4
  %37 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %38 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @GOODIX_MAX_CONTACTS, align 4
  %40 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %41 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 1, i32* %8, align 4
  br label %83

42:                                               ; preds = %1
  %43 = load i64, i64* @TRIGGER_LOC, align 8
  %44 = getelementptr inbounds i32, i32* %12, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 3
  %47 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %48 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* @MAX_CONTACTS_LOC, align 8
  %50 = getelementptr inbounds i32, i32* %12, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %54 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* @RESOLUTION_LOC, align 8
  %56 = getelementptr inbounds i32, i32* %12, i64 %55
  %57 = call i32 @get_unaligned_le16(i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i64, i64* @RESOLUTION_LOC, align 8
  %59 = add i64 %58, 2
  %60 = getelementptr inbounds i32, i32* %12, i64 %59
  %61 = call i32 @get_unaligned_le16(i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %42
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %69 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @input_abs_set_max(i32 %70, i32 %71, i32 %73)
  %75 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %76 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @input_abs_set_max(i32 %77, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %67, %64, %42
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %29
  %84 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %8, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @goodix_i2c_read(%struct.TYPE_4__*, i32, i32*, i32) #2

declare dso_local i32 @dev_warn(i32*, i8*, i32) #2

declare dso_local i32 @get_unaligned_le16(i32*) #2

declare dso_local i32 @input_abs_set_max(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
