; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_init_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_init_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { %struct.TYPE_2__*, %struct.anx78xx_platform_data }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.anx78xx_platform_data = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"dvdd10\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DVDD10 regulator not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_init_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_init_pdata(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca %struct.anx78xx_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %6 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %7 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %6, i32 0, i32 1
  store %struct.anx78xx_platform_data* %7, %struct.anx78xx_platform_data** %4, align 8
  %8 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %9 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i8* @devm_regulator_get(%struct.device* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %24 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  store i32 %26, i32* %2, align 4
  br label %69

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i32, i32* @GPIOD_IN, align 4
  %30 = call i8* @devm_gpiod_get(%struct.device* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %40 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %27
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %46 = call i8* @devm_gpiod_get(%struct.device* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %48 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %2, align 4
  br label %69

59:                                               ; preds = %43
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %62 = call i8* @devm_gpiod_get(%struct.device* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR_OR_ZERO(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %59, %54, %38, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
