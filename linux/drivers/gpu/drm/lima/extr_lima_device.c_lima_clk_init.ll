; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"get bus clk failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"get core clk failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"get reset controller failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"reset controller deassert failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_device*)* @lima_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_clk_init(%struct.lima_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  %5 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %6 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @devm_clk_get(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %11 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %13 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %19 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %28 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %17
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %141

34:                                               ; preds = %1
  %35 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %36 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @devm_clk_get(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %41 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %43 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @IS_ERR(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %34
  %48 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %49 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %58 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %47
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %141

64:                                               ; preds = %34
  %65 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %66 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @clk_prepare_enable(i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %141

73:                                               ; preds = %64
  %74 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %75 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @clk_prepare_enable(i32* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %135

81:                                               ; preds = %73
  %82 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %83 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32* @devm_reset_control_get_optional(i32 %84, i32* null)
  %86 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %87 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %86, i32 0, i32 3
  store i32* %85, i32** %87, align 8
  %88 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %89 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @IS_ERR(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %81
  %94 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %95 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @EPROBE_DEFER, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %104 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %102, %93
  br label %130

109:                                              ; preds = %81
  %110 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %111 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %116 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @reset_control_deassert(i32* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %123 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %130

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %109
  br label %129

129:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %141

130:                                              ; preds = %121, %108
  %131 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %132 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @clk_disable_unprepare(i32* %133)
  br label %135

135:                                              ; preds = %130, %80
  %136 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %137 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @clk_disable_unprepare(i32* %138)
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %135, %129, %71, %62, %32
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32* @devm_reset_control_get_optional(i32, i32*) #1

declare dso_local i32 @reset_control_deassert(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
