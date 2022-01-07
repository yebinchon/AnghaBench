; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c___max730x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c___max730x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max7301 = type { i32*, i32, %struct.TYPE_5__, i32, i32 (%struct.device*, i32, i32)*, %struct.device* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32)*, i32, i32, %struct.device*, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.max7301_platform_data = type { i32, i32 }

@max7301_get = common dso_local global i32 0, align 4
@max7301_direction_output = common dso_local global i32 0, align 4
@max7301_set = common dso_local global i32 0, align 4
@PIN_NUMBER = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__max730x_probe(%struct.max7301* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max7301*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max7301_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max7301* %0, %struct.max7301** %3, align 8
  %10 = load %struct.max7301*, %struct.max7301** %3, align 8
  %11 = getelementptr inbounds %struct.max7301, %struct.max7301* %10, i32 0, i32 5
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.max7301_platform_data* @dev_get_platdata(%struct.device* %13)
  store %struct.max7301_platform_data* %14, %struct.max7301_platform_data** %5, align 8
  %15 = load %struct.max7301*, %struct.max7301** %3, align 8
  %16 = getelementptr inbounds %struct.max7301, %struct.max7301* %15, i32 0, i32 1
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.max7301*, %struct.max7301** %3, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %18, %struct.max7301* %19)
  %21 = load %struct.max7301*, %struct.max7301** %3, align 8
  %22 = getelementptr inbounds %struct.max7301, %struct.max7301* %21, i32 0, i32 4
  %23 = load i32 (%struct.device*, i32, i32)*, i32 (%struct.device*, i32, i32)** %22, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 %23(%struct.device* %24, i32 4, i32 1)
  %26 = load %struct.max7301_platform_data*, %struct.max7301_platform_data** %5, align 8
  %27 = icmp ne %struct.max7301_platform_data* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load %struct.max7301_platform_data*, %struct.max7301_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.max7301_platform_data, %struct.max7301_platform_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.max7301*, %struct.max7301** %3, align 8
  %33 = getelementptr inbounds %struct.max7301, %struct.max7301* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.max7301_platform_data*, %struct.max7301_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.max7301_platform_data, %struct.max7301_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.max7301*, %struct.max7301** %3, align 8
  %38 = getelementptr inbounds %struct.max7301, %struct.max7301* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.max7301*, %struct.max7301** %3, align 8
  %42 = getelementptr inbounds %struct.max7301, %struct.max7301* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %28
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.max7301*, %struct.max7301** %3, align 8
  %51 = getelementptr inbounds %struct.max7301, %struct.max7301* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 9
  store i32 %49, i32* %52, align 8
  %53 = load %struct.max7301*, %struct.max7301** %3, align 8
  %54 = getelementptr inbounds %struct.max7301, %struct.max7301* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 (%struct.TYPE_5__*, i32)* @max7301_direction_input, i32 (%struct.TYPE_5__*, i32)** %55, align 8
  %56 = load i32, i32* @max7301_get, align 4
  %57 = load %struct.max7301*, %struct.max7301** %3, align 8
  %58 = getelementptr inbounds %struct.max7301, %struct.max7301* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @max7301_direction_output, align 4
  %61 = load %struct.max7301*, %struct.max7301** %3, align 8
  %62 = getelementptr inbounds %struct.max7301, %struct.max7301* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 7
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @max7301_set, align 4
  %65 = load %struct.max7301*, %struct.max7301** %3, align 8
  %66 = getelementptr inbounds %struct.max7301, %struct.max7301* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @PIN_NUMBER, align 4
  %69 = load %struct.max7301*, %struct.max7301** %3, align 8
  %70 = getelementptr inbounds %struct.max7301, %struct.max7301* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 8
  %72 = load %struct.max7301*, %struct.max7301** %3, align 8
  %73 = getelementptr inbounds %struct.max7301, %struct.max7301* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.max7301*, %struct.max7301** %3, align 8
  %77 = getelementptr inbounds %struct.max7301, %struct.max7301* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store %struct.device* %75, %struct.device** %78, align 8
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = load %struct.max7301*, %struct.max7301** %3, align 8
  %81 = getelementptr inbounds %struct.max7301, %struct.max7301* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.max7301*, %struct.max7301** %3, align 8
  %84 = getelementptr inbounds %struct.max7301, %struct.max7301* %83, i32 0, i32 2
  %85 = load %struct.max7301*, %struct.max7301** %3, align 8
  %86 = call i32 @gpiochip_add_data(%struct.TYPE_5__* %84, %struct.max7301* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %44
  br label %127

90:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %125

94:                                               ; preds = %91
  %95 = load %struct.max7301*, %struct.max7301** %3, align 8
  %96 = getelementptr inbounds %struct.max7301, %struct.max7301* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 170, i32* %100, align 4
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %118, %94
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = mul nsw i32 %106, 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %9, align 4
  %110 = load %struct.max7301*, %struct.max7301** %3, align 8
  %111 = getelementptr inbounds %struct.max7301, %struct.max7301* %110, i32 0, i32 2
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @max7301_direction_input(%struct.TYPE_5__* %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %127

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %101

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %91

125:                                              ; preds = %91
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %132

127:                                              ; preds = %116, %89
  %128 = load %struct.max7301*, %struct.max7301** %3, align 8
  %129 = getelementptr inbounds %struct.max7301, %struct.max7301* %128, i32 0, i32 1
  %130 = call i32 @mutex_destroy(i32* %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %127, %125
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.max7301_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.max7301*) #1

declare dso_local i32 @max7301_direction_input(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_5__*, %struct.max7301*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
