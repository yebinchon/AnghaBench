; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_get_temp8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_get_temp8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm90_data = type { i64, i32* }

@adt7461 = common dso_local global i64 0, align 8
@tmp451 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@lm99 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm90_data*, i32)* @lm90_get_temp8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_get_temp8(%struct.lm90_data* %0, i32 %1) #0 {
  %3 = alloca %struct.lm90_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lm90_data* %0, %struct.lm90_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %8 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %15 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @adt7461, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %21 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @tmp451, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %2
  %26 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @temp_from_u8_adt7461(%struct.lm90_data* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %42

29:                                               ; preds = %19
  %30 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %31 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @max6646, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @temp_from_u8(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @temp_from_s8(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %44 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @lm99, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 16000
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %48, %42
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @temp_from_u8_adt7461(%struct.lm90_data*, i32) #1

declare dso_local i32 @temp_from_u8(i32) #1

declare dso_local i32 @temp_from_s8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
