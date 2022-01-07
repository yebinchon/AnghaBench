; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32, i32, i32*, %struct.TYPE_6__, %struct.gpio_service*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.gpio_service = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GPIO_MODE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio* @dal_gpio_create(%struct.gpio_service* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gpio*, align 8
  %6 = alloca %struct.gpio_service*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio*, align 8
  store %struct.gpio_service* %0, %struct.gpio_service** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gpio* @kzalloc(i32 48, i32 %11)
  store %struct.gpio* %12, %struct.gpio** %10, align 8
  %13 = load %struct.gpio*, %struct.gpio** %10, align 8
  %14 = icmp ne %struct.gpio* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i32 @ASSERT_CRITICAL(i32 0)
  store %struct.gpio* null, %struct.gpio** %5, align 8
  br label %118

17:                                               ; preds = %4
  %18 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %19 = load %struct.gpio*, %struct.gpio** %10, align 8
  %20 = getelementptr inbounds %struct.gpio, %struct.gpio* %19, i32 0, i32 4
  store %struct.gpio_service* %18, %struct.gpio_service** %20, align 8
  %21 = load %struct.gpio*, %struct.gpio** %10, align 8
  %22 = getelementptr inbounds %struct.gpio, %struct.gpio* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.gpio*, %struct.gpio** %10, align 8
  %25 = getelementptr inbounds %struct.gpio, %struct.gpio* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.gpio*, %struct.gpio** %10, align 8
  %28 = getelementptr inbounds %struct.gpio, %struct.gpio* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @GPIO_MODE_UNKNOWN, align 4
  %30 = load %struct.gpio*, %struct.gpio** %10, align 8
  %31 = getelementptr inbounds %struct.gpio, %struct.gpio* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.gpio*, %struct.gpio** %10, align 8
  %34 = getelementptr inbounds %struct.gpio, %struct.gpio* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.gpio*, %struct.gpio** %10, align 8
  %36 = getelementptr inbounds %struct.gpio, %struct.gpio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %112 [
    i32 132, label %38
    i32 133, label %56
    i32 131, label %74
    i32 129, label %92
    i32 128, label %110
    i32 130, label %111
  ]

38:                                               ; preds = %17
  %39 = load %struct.gpio*, %struct.gpio** %10, align 8
  %40 = getelementptr inbounds %struct.gpio, %struct.gpio* %39, i32 0, i32 4
  %41 = load %struct.gpio_service*, %struct.gpio_service** %40, align 8
  %42 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %45, align 8
  %47 = load %struct.gpio*, %struct.gpio** %10, align 8
  %48 = getelementptr inbounds %struct.gpio, %struct.gpio* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %51 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 %46(i32* %49, i32 %52, i32 %53, i32 %54)
  br label %116

56:                                               ; preds = %17
  %57 = load %struct.gpio*, %struct.gpio** %10, align 8
  %58 = getelementptr inbounds %struct.gpio, %struct.gpio* %57, i32 0, i32 4
  %59 = load %struct.gpio_service*, %struct.gpio_service** %58, align 8
  %60 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %63, align 8
  %65 = load %struct.gpio*, %struct.gpio** %10, align 8
  %66 = getelementptr inbounds %struct.gpio, %struct.gpio* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %69 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 %64(i32* %67, i32 %70, i32 %71, i32 %72)
  br label %116

74:                                               ; preds = %17
  %75 = load %struct.gpio*, %struct.gpio** %10, align 8
  %76 = getelementptr inbounds %struct.gpio, %struct.gpio* %75, i32 0, i32 4
  %77 = load %struct.gpio_service*, %struct.gpio_service** %76, align 8
  %78 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %81, align 8
  %83 = load %struct.gpio*, %struct.gpio** %10, align 8
  %84 = getelementptr inbounds %struct.gpio, %struct.gpio* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %87 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 %82(i32* %85, i32 %88, i32 %89, i32 %90)
  br label %116

92:                                               ; preds = %17
  %93 = load %struct.gpio*, %struct.gpio** %10, align 8
  %94 = getelementptr inbounds %struct.gpio, %struct.gpio* %93, i32 0, i32 4
  %95 = load %struct.gpio_service*, %struct.gpio_service** %94, align 8
  %96 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %99, align 8
  %101 = load %struct.gpio*, %struct.gpio** %10, align 8
  %102 = getelementptr inbounds %struct.gpio, %struct.gpio* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.gpio_service*, %struct.gpio_service** %6, align 8
  %105 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 %100(i32* %103, i32 %106, i32 %107, i32 %108)
  br label %116

110:                                              ; preds = %17
  br label %116

111:                                              ; preds = %17
  br label %116

112:                                              ; preds = %17
  %113 = call i32 @ASSERT_CRITICAL(i32 0)
  %114 = load %struct.gpio*, %struct.gpio** %10, align 8
  %115 = getelementptr inbounds %struct.gpio, %struct.gpio* %114, i32 0, i32 2
  store i32* null, i32** %115, align 8
  br label %116

116:                                              ; preds = %112, %111, %110, %92, %74, %56, %38
  %117 = load %struct.gpio*, %struct.gpio** %10, align 8
  store %struct.gpio* %117, %struct.gpio** %5, align 8
  br label %118

118:                                              ; preds = %116, %15
  %119 = load %struct.gpio*, %struct.gpio** %5, align 8
  ret %struct.gpio* %119
}

declare dso_local %struct.gpio* @kzalloc(i32, i32) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
