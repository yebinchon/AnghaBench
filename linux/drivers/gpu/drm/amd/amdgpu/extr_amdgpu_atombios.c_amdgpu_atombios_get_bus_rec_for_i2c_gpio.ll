; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_bus_rec_for_i2c_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_bus_rec_for_i2c_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_i2c_bus_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_i2c_bus_rec*, %struct.TYPE_7__*)* @amdgpu_atombios_get_bus_rec_for_i2c_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_get_bus_rec_for_i2c_gpio(%struct.amdgpu_i2c_bus_rec* noalias sret %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %3, align 8
  %4 = call i32 @memset(%struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 112)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 16
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le16_to_cpu(i32 %7)
  %9 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 12
  store i8* %8, i8** %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 15
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @le16_to_cpu(i32 %12)
  %14 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 19
  store i8* %13, i8** %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le16_to_cpu(i32 %17)
  %19 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 18
  store i8* %18, i8** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @le16_to_cpu(i32 %22)
  %24 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 17
  store i8* %23, i8** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le16_to_cpu(i32 %27)
  %29 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 16
  store i8* %28, i8** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @le16_to_cpu(i32 %32)
  %34 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 15
  store i8* %33, i8** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le16_to_cpu(i32 %37)
  %39 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 14
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @le16_to_cpu(i32 %42)
  %44 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 13
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 1, %47
  %49 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 1, %57
  %59 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 1, %67
  %69 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 4
  store i32 %68, i32* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 5
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 6
  store i32 %78, i32* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 7
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %2
  %92 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 8
  store i32 1, i32* %92, align 8
  br label %95

93:                                               ; preds = %2
  %94 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 8
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 160
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 9
  store i32 1, i32* %102, align 4
  br label %105

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 9
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 10
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 12
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 11
  store i32 1, i32* %115, align 4
  br label %118

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %0, i32 0, i32 11
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %116, %114
  ret void
}

declare dso_local i32 @memset(%struct.amdgpu_i2c_bus_rec*, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
