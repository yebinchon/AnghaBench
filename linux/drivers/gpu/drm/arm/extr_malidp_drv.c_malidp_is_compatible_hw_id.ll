; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_is_compatible_hw_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_is_compatible_hw_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32 }
%struct.of_device_id = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"arm,mali-dp500\00", align 1
@MALIDP500_DC_BASE = common dso_local global i64 0, align 8
@MALIDP_DE_CORE_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Device-tree expects %s, but hardware %s DP500.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"is not\00", align 1
@MALIDP550_DC_BASE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"arm,mali-dp%X\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Device-tree expects %s, but hardware is DP%03X.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_hw_device*, %struct.of_device_id*)* @malidp_is_compatible_hw_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_is_compatible_hw_id(%struct.malidp_hw_device* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.malidp_hw_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %4, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %13 = load i64, i64* @MALIDP500_DC_BASE, align 8
  %14 = load i64, i64* @MALIDP_DE_CORE_ID, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %12, i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MALIDP_PRODUCT_ID(i32 %17)
  %19 = icmp eq i32 %18, 1280
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @strnstr(i32 %23, i8* %24, i32 4)
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %39 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %38)
  store i32 0, i32* %3, align 4
  br label %69

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %45 = load i64, i64* @MALIDP550_DC_BASE, align 8
  %46 = load i64, i64* @MALIDP_DE_CORE_ID, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %44, i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @MALIDP_PRODUCT_ID(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @snprintf(i8* %51, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %58 = call i32* @strnstr(i32 %56, i8* %57, i32 4)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %43
  %61 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %69

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %40
  br label %68

68:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %60, %31
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @malidp_hw_read(%struct.malidp_hw_device*, i64) #1

declare dso_local i32 @MALIDP_PRODUCT_ID(i32) #1

declare dso_local i32* @strnstr(i32, i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
