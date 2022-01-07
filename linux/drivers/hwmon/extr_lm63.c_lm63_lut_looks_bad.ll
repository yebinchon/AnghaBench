; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_lut_looks_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_lut_looks_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm63_data = type { i32, i64*, i64*, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Lookup table doesn't look sane (check entries %d and %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.lm63_data*)* @lm63_lut_looks_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm63_lut_looks_bad(%struct.device* %0, %struct.lm63_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.lm63_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.lm63_data* %1, %struct.lm63_data** %4, align 8
  %6 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %7 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %6, i32 0, i32 3
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %10 = call i32 @lm63_update_lut(%struct.lm63_data* %9)
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %62, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %14 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %11
  %18 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %19 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %28 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %26, %34
  br i1 %35, label %55, label %36

36:                                               ; preds = %17
  %37 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %38 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 3, %40
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %47 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 3, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %45, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %36, %17
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59)
  br label %65

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %11

65:                                               ; preds = %55, %11
  %66 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %67 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %66, i32 0, i32 3
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %71 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 1
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm63_update_lut(%struct.lm63_data*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
