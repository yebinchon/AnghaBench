; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"get clock failed %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"clock rate = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"get bus_clock failed %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bus_clock rate = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panfrost_device*)* @panfrost_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_clk_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %6 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %7 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @devm_clk_get(i32 %8, i32* null)
  %10 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %11 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %13 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @IS_ERR(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %19 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %22 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @PTR_ERR(i64 %23)
  %25 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %27 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @PTR_ERR(i64 %28)
  store i32 %29, i32* %2, align 4
  br label %103

30:                                               ; preds = %1
  %31 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %32 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @clk_get_rate(i64 %33)
  store i64 %34, i64* %5, align 8
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %36 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %41 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @clk_prepare_enable(i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %103

48:                                               ; preds = %30
  %49 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %50 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @devm_clk_get_optional(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %54 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %56 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @IS_ERR(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %48
  %61 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %62 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %65 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @PTR_ERR(i64 %66)
  %68 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %70 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @PTR_ERR(i64 %71)
  store i32 %72, i32* %2, align 4
  br label %103

73:                                               ; preds = %48
  %74 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %75 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %80 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @clk_get_rate(i64 %81)
  store i64 %82, i64* %5, align 8
  %83 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %84 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @dev_info(i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %89 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @clk_prepare_enable(i64 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %97

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %73
  store i32 0, i32* %2, align 4
  br label %103

97:                                               ; preds = %94
  %98 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %99 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @clk_disable_unprepare(i64 %100)
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %96, %60, %46, %17
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @devm_clk_get(i32, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i64 @devm_clk_get_optional(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
