; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.nvkm_subdev }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_subdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_timer* }
%struct.nvkm_timer = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"FAN target request: %d%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*, i32)* @nvkm_therm_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_therm_update(%struct.nvkm_therm* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_timer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 5
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %5, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_timer*, %struct.nvkm_timer** %16, align 8
  store %struct.nvkm_timer* %17, %struct.nvkm_timer** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %18, i32 0, i32 2
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %26 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %72 [
    i32 129, label %33
    i32 130, label %44
    i32 128, label %71
  ]

33:                                               ; preds = %28
  %34 = load %struct.nvkm_timer*, %struct.nvkm_timer** %6, align 8
  %35 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %36 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %35, i32 0, i32 3
  %37 = call i32 @nvkm_timer_alarm(%struct.nvkm_timer* %34, i64 0, i32* %36)
  %38 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %39 = call i32 @nvkm_therm_fan_get(%struct.nvkm_therm* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 100, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %33
  store i32 0, i32* %9, align 4
  br label %77

44:                                               ; preds = %28
  %45 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %46 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %70 [
    i32 131, label %51
    i32 133, label %54
    i32 132, label %57
  ]

51:                                               ; preds = %44
  %52 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %53 = call i32 @nvkm_therm_update_trip(%struct.nvkm_therm* %52)
  store i32 %53, i32* %10, align 4
  br label %70

54:                                               ; preds = %44
  %55 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %56 = call i32 @nvkm_therm_update_linear(%struct.nvkm_therm* %55)
  store i32 %56, i32* %10, align 4
  br label %70

57:                                               ; preds = %44
  %58 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %59 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %64 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %68 = call i32 @nvkm_therm_update_linear_fallback(%struct.nvkm_therm* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %44, %69, %54, %51
  store i32 0, i32* %8, align 4
  br label %77

71:                                               ; preds = %28
  br label %72

72:                                               ; preds = %28, %71
  %73 = load %struct.nvkm_timer*, %struct.nvkm_timer** %6, align 8
  %74 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %75 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %74, i32 0, i32 3
  %76 = call i32 @nvkm_timer_alarm(%struct.nvkm_timer* %73, i64 0, i32* %75)
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %70, %43
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.nvkm_timer*, %struct.nvkm_timer** %6, align 8
  %82 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %83 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %82, i32 0, i32 3
  %84 = call i32 @nvkm_timer_alarm(%struct.nvkm_timer* %81, i64 1000000000, i32* %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %87 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %86, i32 0, i32 2
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @nvkm_debug(%struct.nvkm_subdev* %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @nvkm_therm_fan_set(%struct.nvkm_therm* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %85
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_timer_alarm(%struct.nvkm_timer*, i64, i32*) #1

declare dso_local i32 @nvkm_therm_fan_get(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_therm_update_trip(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_therm_update_linear(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_therm_update_linear_fallback(%struct.nvkm_therm*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_therm_fan_set(%struct.nvkm_therm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
