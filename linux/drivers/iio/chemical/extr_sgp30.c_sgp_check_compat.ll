; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_check_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_check_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgp_version = type { i64, i64 }
%struct.sgp_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"incompatible product generation %d != 0\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"sensor reports a different product: 0x%04hx\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"reserved bit is set\0A\00", align 1
@supported_versions_sgp30 = common dso_local global %struct.sgp_version* null, align 8
@supported_versions_sgpc3 = common dso_local global %struct.sgp_version* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"unsupported sgp version: %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgp_data*, i32)* @sgp_check_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgp_check_compat(%struct.sgp_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sgp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sgp_version*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sgp_data* %0, %struct.sgp_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %14 = call i64 @SGP_VERS_GEN(%struct.sgp_data* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %19 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %112

26:                                               ; preds = %2
  %27 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %28 = call i64 @SGP_VERS_PRODUCT(%struct.sgp_data* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %35 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %112

42:                                               ; preds = %26
  %43 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %44 = call i64 @SGP_VERS_RESERVED(%struct.sgp_data* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %48 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %54 = call i64 @SGP_VERS_ENG_BIT(%struct.sgp_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %112

59:                                               ; preds = %52
  %60 = load i64, i64* %9, align 8
  switch i64 %60, label %69 [
    i64 129, label %61
    i64 128, label %65
  ]

61:                                               ; preds = %59
  %62 = load %struct.sgp_version*, %struct.sgp_version** @supported_versions_sgp30, align 8
  store %struct.sgp_version* %62, %struct.sgp_version** %6, align 8
  %63 = load %struct.sgp_version*, %struct.sgp_version** @supported_versions_sgp30, align 8
  %64 = call i64 @ARRAY_SIZE(%struct.sgp_version* %63)
  store i64 %64, i64* %8, align 8
  br label %72

65:                                               ; preds = %59
  %66 = load %struct.sgp_version*, %struct.sgp_version** @supported_versions_sgpc3, align 8
  store %struct.sgp_version* %66, %struct.sgp_version** %6, align 8
  %67 = load %struct.sgp_version*, %struct.sgp_version** @supported_versions_sgpc3, align 8
  %68 = call i64 @ARRAY_SIZE(%struct.sgp_version* %67)
  store i64 %68, i64* %8, align 8
  br label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %112

72:                                               ; preds = %65, %61
  %73 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %74 = call i64 @SGP_VERS_MAJOR(%struct.sgp_data* %73)
  store i64 %74, i64* %11, align 8
  %75 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %76 = call i64 @SGP_VERS_MINOR(%struct.sgp_data* %75)
  store i64 %76, i64* %12, align 8
  store i64 0, i64* %7, align 8
  br label %77

77:                                               ; preds = %99, %72
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.sgp_version*, %struct.sgp_version** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.sgp_version, %struct.sgp_version* %83, i64 %84
  %86 = getelementptr inbounds %struct.sgp_version, %struct.sgp_version* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %82, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.sgp_version*, %struct.sgp_version** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.sgp_version, %struct.sgp_version* %91, i64 %92
  %94 = getelementptr inbounds %struct.sgp_version, %struct.sgp_version* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %90, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %112

98:                                               ; preds = %89, %81
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %7, align 8
  br label %77

102:                                              ; preds = %77
  %103 = load %struct.sgp_data*, %struct.sgp_data** %4, align 8
  %104 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %107, i64 %108)
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %102, %97, %69, %56, %33, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @SGP_VERS_GEN(%struct.sgp_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i64 @SGP_VERS_PRODUCT(%struct.sgp_data*) #1

declare dso_local i64 @SGP_VERS_RESERVED(%struct.sgp_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @SGP_VERS_ENG_BIT(%struct.sgp_data*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.sgp_version*) #1

declare dso_local i64 @SGP_VERS_MAJOR(%struct.sgp_data*) #1

declare dso_local i64 @SGP_VERS_MINOR(%struct.sgp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
