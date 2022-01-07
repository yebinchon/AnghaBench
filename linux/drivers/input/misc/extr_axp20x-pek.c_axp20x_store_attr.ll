; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_store_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_store_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.axp20x_time = type { i32, i64 }
%struct.axp20x_pek = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@AXP20X_PEK_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.axp20x_time*, i32, i8*, i64)* @axp20x_store_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_store_attr(%struct.device* %0, %struct.axp20x_time* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.axp20x_time*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.axp20x_pek*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.axp20x_time* %1, %struct.axp20x_time** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call %struct.axp20x_pek* @dev_get_drvdata(%struct.device* %21)
  store %struct.axp20x_pek* %22, %struct.axp20x_pek** %12, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* @UINT_MAX, align 4
  store i32 %23, i32* %19, align 4
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 19
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strncpy(i8* %25, i8* %26, i32 19)
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %5
  %33 = load i64, i64* %14, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i64, i64* %14, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %39, %32, %5
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %45 = call i32 @kstrtouint(i8* %44, i32 10, i32* %17)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %6, align 4
  br label %107

50:                                               ; preds = %43
  store i32 3, i32* %16, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %16, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  %55 = load %struct.axp20x_time*, %struct.axp20x_time** %8, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %55, i64 %57
  %59 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = zext i32 %61 to i64
  %63 = sub nsw i64 %60, %62
  %64 = call i32 @abs(i64 %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %19, align 4
  %70 = load %struct.axp20x_time*, %struct.axp20x_time** %8, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %70, i64 %72
  %74 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %68, %54
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %84

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %16, align 4
  br label %51

84:                                               ; preds = %79, %51
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ffs(i32 %85)
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %18, align 4
  %89 = shl i32 %88, %87
  store i32 %89, i32* %18, align 4
  %90 = load %struct.axp20x_pek*, %struct.axp20x_pek** %12, align 8
  %91 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AXP20X_PEK_KEY, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %84
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %107

104:                                              ; preds = %84
  %105 = load i64, i64* %11, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %101, %48
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.axp20x_pek* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
