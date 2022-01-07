; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_get_temphyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_get_temphyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm90_data = type { i64, i32, i32* }

@adt7461 = common dso_local global i64 0, align 8
@tmp451 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@lm99 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm90_data*, i32)* @lm90_get_temphyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_get_temphyst(%struct.lm90_data* %0, i32 %1) #0 {
  %3 = alloca %struct.lm90_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm90_data* %0, %struct.lm90_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %7 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @adt7461, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %13 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @tmp451, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11, %2
  %18 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %19 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %20 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @temp_from_u8_adt7461(%struct.lm90_data* %18, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %52

27:                                               ; preds = %11
  %28 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %29 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @max6646, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %35 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @temp_from_u8(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %27
  %43 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %44 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @temp_from_s8(i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %33
  br label %52

52:                                               ; preds = %51, %17
  %53 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %54 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @lm99, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 16000
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %58, %52
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %67 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @temp_from_s8(i32 %68)
  %70 = sub nsw i32 %65, %69
  ret i32 %70
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
