; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_temp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_temp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm90_data = type { i32 }

@lm90_temp_min_index = common dso_local global i32* null, align 8
@lm90_temp_max_index = common dso_local global i32* null, align 8
@lm90_temp_crit_index = common dso_local global i32* null, align 8
@lm90_temp_emerg_index = common dso_local global i32* null, align 8
@REMOTE_OFFSET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @lm90_temp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_temp_write(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.lm90_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.lm90_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.lm90_data* %12, %struct.lm90_data** %9, align 8
  %13 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %14 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @lm90_update_device(%struct.device* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %98

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %94 [
    i32 129, label %23
    i32 130, label %45
    i32 133, label %67
    i32 132, label %76
    i32 131, label %80
    i32 128, label %89
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %28 = load i32*, i32** @lm90_temp_min_index, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @lm90_set_temp8(%struct.lm90_data* %27, i32 %32, i64 %33)
  store i32 %34, i32* %10, align 4
  br label %44

35:                                               ; preds = %23
  %36 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %37 = load i32*, i32** @lm90_temp_min_index, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @lm90_set_temp11(%struct.lm90_data* %36, i32 %41, i64 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %35, %26
  br label %97

45:                                               ; preds = %21
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %50 = load i32*, i32** @lm90_temp_max_index, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @lm90_set_temp8(%struct.lm90_data* %49, i32 %54, i64 %55)
  store i32 %56, i32* %10, align 4
  br label %66

57:                                               ; preds = %45
  %58 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %59 = load i32*, i32** @lm90_temp_max_index, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @lm90_set_temp11(%struct.lm90_data* %58, i32 %63, i64 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %57, %48
  br label %97

67:                                               ; preds = %21
  %68 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %69 = load i32*, i32** @lm90_temp_crit_index, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @lm90_set_temp8(%struct.lm90_data* %68, i32 %73, i64 %74)
  store i32 %75, i32* %10, align 4
  br label %97

76:                                               ; preds = %21
  %77 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @lm90_set_temphyst(%struct.lm90_data* %77, i64 %78)
  store i32 %79, i32* %10, align 4
  br label %97

80:                                               ; preds = %21
  %81 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %82 = load i32*, i32** @lm90_temp_emerg_index, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @lm90_set_temp8(%struct.lm90_data* %81, i32 %86, i64 %87)
  store i32 %88, i32* %10, align 4
  br label %97

89:                                               ; preds = %21
  %90 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %91 = load i32, i32* @REMOTE_OFFSET, align 4
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @lm90_set_temp11(%struct.lm90_data* %90, i32 %91, i64 %92)
  store i32 %93, i32* %10, align 4
  br label %97

94:                                               ; preds = %21
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %89, %80, %76, %67, %66, %44
  br label %98

98:                                               ; preds = %97, %20
  %99 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %100 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local %struct.lm90_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm90_update_device(%struct.device*) #1

declare dso_local i32 @lm90_set_temp8(%struct.lm90_data*, i32, i64) #1

declare dso_local i32 @lm90_set_temp11(%struct.lm90_data*, i32, i64) #1

declare dso_local i32 @lm90_set_temphyst(%struct.lm90_data*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
