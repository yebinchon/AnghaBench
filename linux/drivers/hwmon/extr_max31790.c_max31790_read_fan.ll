; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_read_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_read_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max31790_data = type { i32, i32*, i32*, i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @max31790_read_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31790_read_fan(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.max31790_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.max31790_data* @max31790_update_device(%struct.device* %13)
  store %struct.max31790_data* %14, %struct.max31790_data** %10, align 8
  %15 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %16 = call i64 @IS_ERR(%struct.max31790_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.max31790_data* %19)
  store i32 %20, i32* %5, align 4
  br label %81

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %78 [
    i32 129, label %23
    i32 128, label %44
    i32 130, label %65
  ]

23:                                               ; preds = %21
  %24 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %25 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_tach_period(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %33 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @RPM_FROM_REG(i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %5, align 4
  br label %81

44:                                               ; preds = %21
  %45 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %46 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @get_tach_period(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %54 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @RPM_FROM_REG(i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %5, align 4
  br label %81

65:                                               ; preds = %21
  %66 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %67 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %5, align 4
  br label %81

78:                                               ; preds = %21
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %65, %44, %23, %18
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.max31790_data* @max31790_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.max31790_data*) #1

declare dso_local i32 @PTR_ERR(%struct.max31790_data*) #1

declare dso_local i32 @get_tach_period(i32) #1

declare dso_local i32 @RPM_FROM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
