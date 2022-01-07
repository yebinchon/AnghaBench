; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_service_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_service_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32, i32, %struct.hw_gpio_pin*, i32, %struct.gpio_service* }
%struct.hw_gpio_pin = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.hw_gpio_pin*, i32)* }
%struct.gpio_service = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hw_gpio_pin*, i32)*, %struct.hw_gpio_pin* (%struct.gpio*)*, i32 (%struct.hw_gpio_pin*, i32)*, %struct.hw_gpio_pin* (%struct.gpio*)*, i32 (%struct.hw_gpio_pin*, i32)*, %struct.hw_gpio_pin* (%struct.gpio*)* }

@GPIO_RESULT_OPEN_FAILED = common dso_local global i32 0, align 4
@GPIO_RESULT_DEVICE_BUSY = common dso_local global i32 0, align 4
@GPIO_RESULT_NON_SPECIFIC_ERROR = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_gpio_service_open(%struct.gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio*, align 8
  %4 = alloca %struct.gpio_service*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hw_gpio_pin**, align 8
  store %struct.gpio* %0, %struct.gpio** %3, align 8
  %9 = load %struct.gpio*, %struct.gpio** %3, align 8
  %10 = getelementptr inbounds %struct.gpio, %struct.gpio* %9, i32 0, i32 4
  %11 = load %struct.gpio_service*, %struct.gpio_service** %10, align 8
  store %struct.gpio_service* %11, %struct.gpio_service** %4, align 8
  %12 = load %struct.gpio*, %struct.gpio** %3, align 8
  %13 = getelementptr inbounds %struct.gpio, %struct.gpio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.gpio*, %struct.gpio** %3, align 8
  %16 = getelementptr inbounds %struct.gpio, %struct.gpio* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.gpio*, %struct.gpio** %3, align 8
  %19 = getelementptr inbounds %struct.gpio, %struct.gpio* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.gpio*, %struct.gpio** %3, align 8
  %22 = getelementptr inbounds %struct.gpio, %struct.gpio* %21, i32 0, i32 2
  store %struct.hw_gpio_pin** %22, %struct.hw_gpio_pin*** %8, align 8
  %23 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = call i32 @ASSERT_CRITICAL(i32 0)
  %33 = load i32, i32* @GPIO_RESULT_OPEN_FAILED, align 4
  store i32 %33, i32* %2, align 4
  br label %160

34:                                               ; preds = %1
  %35 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @is_pin_busy(%struct.gpio_service* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @ASSERT_CRITICAL(i32 0)
  %42 = load i32, i32* @GPIO_RESULT_DEVICE_BUSY, align 4
  store i32 %42, i32* %2, align 4
  br label %160

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %126 [
    i32 132, label %45
    i32 133, label %65
    i32 131, label %85
    i32 129, label %105
    i32 128, label %125
    i32 130, label %125
  ]

45:                                               ; preds = %43
  %46 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %47 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load %struct.hw_gpio_pin* (%struct.gpio*)*, %struct.hw_gpio_pin* (%struct.gpio*)** %50, align 8
  %52 = load %struct.gpio*, %struct.gpio** %3, align 8
  %53 = call %struct.hw_gpio_pin* %51(%struct.gpio* %52)
  %54 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  store %struct.hw_gpio_pin* %53, %struct.hw_gpio_pin** %54, align 8
  %55 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %56 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32 (%struct.hw_gpio_pin*, i32)*, i32 (%struct.hw_gpio_pin*, i32)** %59, align 8
  %61 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %62 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %60(%struct.hw_gpio_pin* %62, i32 %63)
  br label %129

65:                                               ; preds = %43
  %66 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %67 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load %struct.hw_gpio_pin* (%struct.gpio*)*, %struct.hw_gpio_pin* (%struct.gpio*)** %70, align 8
  %72 = load %struct.gpio*, %struct.gpio** %3, align 8
  %73 = call %struct.hw_gpio_pin* %71(%struct.gpio* %72)
  %74 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  store %struct.hw_gpio_pin* %73, %struct.hw_gpio_pin** %74, align 8
  %75 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %76 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32 (%struct.hw_gpio_pin*, i32)*, i32 (%struct.hw_gpio_pin*, i32)** %79, align 8
  %81 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %82 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 %80(%struct.hw_gpio_pin* %82, i32 %83)
  br label %129

85:                                               ; preds = %43
  %86 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %87 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load %struct.hw_gpio_pin* (%struct.gpio*)*, %struct.hw_gpio_pin* (%struct.gpio*)** %90, align 8
  %92 = load %struct.gpio*, %struct.gpio** %3, align 8
  %93 = call %struct.hw_gpio_pin* %91(%struct.gpio* %92)
  %94 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  store %struct.hw_gpio_pin* %93, %struct.hw_gpio_pin** %94, align 8
  %95 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %96 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32 (%struct.hw_gpio_pin*, i32)*, i32 (%struct.hw_gpio_pin*, i32)** %99, align 8
  %101 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %102 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 %100(%struct.hw_gpio_pin* %102, i32 %103)
  br label %129

105:                                              ; preds = %43
  %106 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %107 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.hw_gpio_pin* (%struct.gpio*)*, %struct.hw_gpio_pin* (%struct.gpio*)** %110, align 8
  %112 = load %struct.gpio*, %struct.gpio** %3, align 8
  %113 = call %struct.hw_gpio_pin* %111(%struct.gpio* %112)
  %114 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  store %struct.hw_gpio_pin* %113, %struct.hw_gpio_pin** %114, align 8
  %115 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %116 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32 (%struct.hw_gpio_pin*, i32)*, i32 (%struct.hw_gpio_pin*, i32)** %119, align 8
  %121 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %122 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 %120(%struct.hw_gpio_pin* %122, i32 %123)
  br label %129

125:                                              ; preds = %43, %43
  br label %129

126:                                              ; preds = %43
  %127 = call i32 @ASSERT_CRITICAL(i32 0)
  %128 = load i32, i32* @GPIO_RESULT_NON_SPECIFIC_ERROR, align 4
  store i32 %128, i32* %2, align 4
  br label %160

129:                                              ; preds = %125, %105, %85, %65, %45
  %130 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %131 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %130, align 8
  %132 = icmp ne %struct.hw_gpio_pin* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = call i32 @ASSERT_CRITICAL(i32 0)
  %135 = load i32, i32* @GPIO_RESULT_NON_SPECIFIC_ERROR, align 4
  store i32 %135, i32* %2, align 4
  br label %160

136:                                              ; preds = %129
  %137 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %138 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %137, align 8
  %139 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32 (%struct.hw_gpio_pin*, i32)*, i32 (%struct.hw_gpio_pin*, i32)** %141, align 8
  %143 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %144 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 %142(%struct.hw_gpio_pin* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %136
  %149 = call i32 @ASSERT_CRITICAL(i32 0)
  %150 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %151 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %8, align 8
  %152 = call i32 @dal_gpio_service_close(%struct.gpio_service* %150, %struct.hw_gpio_pin** %151)
  %153 = load i32, i32* @GPIO_RESULT_OPEN_FAILED, align 4
  store i32 %153, i32* %2, align 4
  br label %160

154:                                              ; preds = %136
  %155 = load %struct.gpio_service*, %struct.gpio_service** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @set_pin_busy(%struct.gpio_service* %155, i32 %156, i32 %157)
  %159 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %154, %148, %133, %126, %40, %31
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i64 @is_pin_busy(%struct.gpio_service*, i32, i32) #1

declare dso_local i32 @dal_gpio_service_close(%struct.gpio_service*, %struct.hw_gpio_pin**) #1

declare dso_local i32 @set_pin_busy(%struct.gpio_service*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
