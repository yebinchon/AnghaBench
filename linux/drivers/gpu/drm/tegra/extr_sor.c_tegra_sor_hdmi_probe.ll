; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"avdd-io\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot get AVDD I/O supply: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to enable AVDD I/O supply: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"vdd-pll\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot get VDD PLL supply: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to enable VDD PLL supply: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"cannot get HDMI supply: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to enable HDMI supply: %d\0A\00", align 1
@tegra_sor_hdmi_scdc_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*)* @tegra_sor_hdmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_hdmi_probe(%struct.tegra_sor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_sor*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %3, align 8
  %5 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @devm_regulator_get(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %9, i32 0, i32 4
  store i8* %8, i8** %10, align 8
  %11 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %11, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  %24 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @PTR_ERR(i8* %27)
  store i32 %28, i32* %2, align 4
  br label %126

29:                                               ; preds = %1
  %30 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @regulator_enable(i8* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %126

43:                                               ; preds = %29
  %44 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @devm_regulator_get(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %49 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  %56 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %60 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  %63 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %2, align 4
  br label %126

68:                                               ; preds = %43
  %69 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @regulator_enable(i8* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %77 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %126

82:                                               ; preds = %68
  %83 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %84 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @devm_regulator_get(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %82
  %95 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %96 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %99 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  %102 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %104 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %2, align 4
  br label %126

107:                                              ; preds = %82
  %108 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %109 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @regulator_enable(i8* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %116 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %126

121:                                              ; preds = %107
  %122 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %123 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %122, i32 0, i32 0
  %124 = load i32, i32* @tegra_sor_hdmi_scdc_work, align 4
  %125 = call i32 @INIT_DELAYED_WORK(i32* %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %114, %94, %75, %55, %36, %16
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i8* @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
