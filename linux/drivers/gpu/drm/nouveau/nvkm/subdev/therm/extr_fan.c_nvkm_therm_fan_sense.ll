; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_therm_fan_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_therm_fan_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_gpio*, %struct.nvkm_timer* }
%struct.nvkm_gpio = type { i32 }
%struct.nvkm_timer = type { i32 }

@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_therm_fan_sense(%struct.nvkm_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_timer*, align 8
  %6 = alloca %struct.nvkm_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  %13 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %4, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 1
  %19 = load %struct.nvkm_timer*, %struct.nvkm_timer** %18, align 8
  store %struct.nvkm_timer* %19, %struct.nvkm_timer** %5, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %21, align 8
  store %struct.nvkm_gpio* %22, %struct.nvkm_gpio** %6, align 8
  %23 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.nvkm_therm*)**
  %28 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %27, align 8
  %29 = icmp ne i32 (%struct.nvkm_therm*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.nvkm_therm*)**
  %36 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %35, align 8
  %37 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %38 = call i32 %36(%struct.nvkm_therm* %37)
  store i32 %38, i32* %2, align 4
  br label %122

39:                                               ; preds = %1
  %40 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %41 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %122

51:                                               ; preds = %39
  %52 = load %struct.nvkm_timer*, %struct.nvkm_timer** %5, align 8
  %53 = call i32 @nvkm_timer_read(%struct.nvkm_timer* %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %55 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %56 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %62 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %54, i32 0, i32 %60, i32 %66)
  store i32 %67, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %107, %51
  %69 = call i32 @usleep_range(i32 500, i32 1000)
  %70 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %71 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %72 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %78 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %70, i32 0, i32 %76, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %68
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load %struct.nvkm_timer*, %struct.nvkm_timer** %5, align 8
  %92 = call i32 @nvkm_timer_read(%struct.nvkm_timer* %91)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %68
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 5
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.nvkm_timer*, %struct.nvkm_timer** %5, align 8
  %103 = call i32 @nvkm_timer_read(%struct.nvkm_timer* %102)
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  %106 = icmp slt i32 %105, 250000000
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i1 [ false, %98 ], [ %106, %101 ]
  br i1 %108, label %68, label %109

109:                                              ; preds = %107
  %110 = load %struct.nvkm_timer*, %struct.nvkm_timer** %5, align 8
  %111 = call i32 @nvkm_timer_read(%struct.nvkm_timer* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 5
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  store i32 -129542144, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i32 @do_div(i32 %115, i32 %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %114, %48, %30
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @nvkm_timer_read(%struct.nvkm_timer*) #1

declare dso_local i32 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
