; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_ppmu = type { i32, %struct.TYPE_2__, %struct.devfreq_event_dev**, %struct.devfreq_event_desc*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.devfreq_event_dev = type { i32 }
%struct.devfreq_event_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to parse devicetree for resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to add devfreq-event device\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"exynos-ppmu: new PPMU device registered %s (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to prepare ppmu clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_ppmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ppmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_ppmu*, align 8
  %5 = alloca %struct.devfreq_event_dev**, align 8
  %6 = alloca %struct.devfreq_event_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(i32* %11, i32 32, i32 %12)
  %14 = bitcast i8* %13 to %struct.exynos_ppmu*
  store %struct.exynos_ppmu* %14, %struct.exynos_ppmu** %4, align 8
  %15 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %16 = icmp ne %struct.exynos_ppmu* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %136

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %27 = call i32 @exynos_ppmu_parse_dt(%struct.platform_device* %25, %struct.exynos_ppmu* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %136

35:                                               ; preds = %20
  %36 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %37 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %36, i32 0, i32 3
  %38 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %37, align 8
  store %struct.devfreq_event_desc* %38, %struct.devfreq_event_desc** %6, align 8
  %39 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @devm_kzalloc(i32* %46, i32 %47, i32 %48)
  %50 = bitcast i8* %49 to %struct.devfreq_event_dev**
  %51 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %52 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %51, i32 0, i32 2
  store %struct.devfreq_event_dev** %50, %struct.devfreq_event_dev*** %52, align 8
  %53 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %54 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %53, i32 0, i32 2
  %55 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %54, align 8
  %56 = icmp ne %struct.devfreq_event_dev** %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %35
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %136

60:                                               ; preds = %35
  %61 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %62 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %61, i32 0, i32 2
  %63 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %62, align 8
  store %struct.devfreq_event_dev** %63, %struct.devfreq_event_dev*** %5, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %66 = call i32 @platform_set_drvdata(%struct.platform_device* %64, %struct.exynos_ppmu* %65)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %119, %60
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %70 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.devfreq_event_desc, %struct.devfreq_event_desc* %76, i64 %78
  %80 = call %struct.devfreq_event_dev* @devm_devfreq_event_add_edev(i32* %75, %struct.devfreq_event_desc* %79)
  %81 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %81, i64 %83
  store %struct.devfreq_event_dev* %80, %struct.devfreq_event_dev** %84, align 8
  %85 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %85, i64 %87
  %89 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %88, align 8
  %90 = call i64 @IS_ERR(%struct.devfreq_event_dev* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %73
  %93 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %93, i64 %95
  %97 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %96, align 8
  %98 = call i32 @PTR_ERR(%struct.devfreq_event_dev* %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %102, i64 %104
  %106 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.devfreq_event_dev* %106)
  store i32 %107, i32* %2, align 4
  br label %136

108:                                              ; preds = %73
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_name(i32* %110)
  %112 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.devfreq_event_desc, %struct.devfreq_event_desc* %112, i64 %114
  %116 = getelementptr inbounds %struct.devfreq_event_desc, %struct.devfreq_event_desc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %67

122:                                              ; preds = %67
  %123 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %124 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @clk_prepare_enable(i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %130, %92, %57, %30, %17
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @exynos_ppmu_parse_dt(%struct.platform_device*, %struct.exynos_ppmu*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_ppmu*) #1

declare dso_local %struct.devfreq_event_dev* @devm_devfreq_event_add_edev(i32*, %struct.devfreq_event_desc*) #1

declare dso_local i64 @IS_ERR(%struct.devfreq_event_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.devfreq_event_dev*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
