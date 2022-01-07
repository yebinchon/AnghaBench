; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_convrate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_convrate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm73_data = type { i32, i32, i32 }

@lm73_convrates = common dso_local global i64* null, align 8
@LM73_CTRL_TO_MASK = common dso_local global i32 0, align 4
@LM73_CTRL_RES_SHIFT = common dso_local global i32 0, align 4
@LM73_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @convrate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convrate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm73_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.lm73_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm73_data* %15, %struct.lm73_data** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @kstrtoul(i8* %16, i32 10, i64* %11)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %12, align 8
  store i64 %21, i64* %5, align 8
  br label %75

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i64*, i64** @lm73_convrates, align 8
  %26 = call i32 @ARRAY_SIZE(i64* %25)
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i64, i64* %11, align 8
  %31 = load i64*, i64** @lm73_convrates, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %30, %35
  br label %37

37:                                               ; preds = %29, %23
  %38 = phi i1 [ false, %23 ], [ %36, %29 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %23

42:                                               ; preds = %37
  %43 = load %struct.lm73_data*, %struct.lm73_data** %10, align 8
  %44 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i32, i32* @LM73_CTRL_TO_MASK, align 4
  %47 = load %struct.lm73_data*, %struct.lm73_data** %10, align 8
  %48 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @LM73_CTRL_RES_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load %struct.lm73_data*, %struct.lm73_data** %10, align 8
  %55 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.lm73_data*, %struct.lm73_data** %10, align 8
  %59 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LM73_REG_CTRL, align 4
  %62 = load %struct.lm73_data*, %struct.lm73_data** %10, align 8
  %63 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @i2c_smbus_write_byte_data(i32 %60, i32 %61, i32 %64)
  store i64 %65, i64* %12, align 8
  %66 = load %struct.lm73_data*, %struct.lm73_data** %10, align 8
  %67 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i64, i64* %12, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %42
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %5, align 8
  br label %75

73:                                               ; preds = %42
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %73, %71, %20
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local %struct.lm73_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
