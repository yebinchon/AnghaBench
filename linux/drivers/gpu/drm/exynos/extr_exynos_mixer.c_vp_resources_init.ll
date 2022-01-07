; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_vp_resources_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_vp_resources_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32*, %struct.TYPE_2__*, i64, i8*, i8*, i32, i8* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"vp\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get clock 'vp'\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MXR_BIT_HAS_SCLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"sclk_mixer\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to get clock 'sclk_mixer'\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"mout_mixer\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to get clock 'mout_mixer'\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"get memory resource failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"register mapping failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_context*)* @vp_resources_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp_resources_init(%struct.mixer_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.mixer_context* %0, %struct.mixer_context** %3, align 8
  %6 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %7 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i8* @devm_clk_get(%struct.device* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %13 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %15 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %14, i32 0, i32 6
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %1
  %25 = load i32, i32* @MXR_BIT_HAS_SCLK, align 4
  %26 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %27 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %26, i32 0, i32 5
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i8* @devm_clk_get(%struct.device* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %34 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %36 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %112

45:                                               ; preds = %30
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i8* @devm_clk_get(%struct.device* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %48 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %49 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %51 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %112

60:                                               ; preds = %45
  %61 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %62 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %67 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %72 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %75 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @clk_set_parent(i8* %73, i64 %76)
  br label %78

78:                                               ; preds = %70, %65, %60
  br label %79

79:                                               ; preds = %78, %24
  %80 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %81 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* @IORESOURCE_MEM, align 4
  %84 = call %struct.resource* @platform_get_resource(%struct.TYPE_2__* %82, i32 %83, i32 1)
  store %struct.resource* %84, %struct.resource** %5, align 8
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = icmp eq %struct.resource* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %112

92:                                               ; preds = %79
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load %struct.resource*, %struct.resource** %5, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.resource*, %struct.resource** %5, align 8
  %98 = call i32 @resource_size(%struct.resource* %97)
  %99 = call i32* @devm_ioremap(%struct.device* %93, i32 %96, i32 %98)
  %100 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %101 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %103 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %92
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %109 = load i32, i32* @ENXIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %112

111:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %106, %87, %55, %40, %19
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clk_set_parent(i8*, i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
