; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_get_bus_rec_for_i2c_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_get_bus_rec_for_i2c_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_bus_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_i2c_bus_rec*, %struct.TYPE_7__*)* @radeon_get_bus_rec_for_i2c_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_get_bus_rec_for_i2c_gpio(%struct.radeon_i2c_bus_rec* noalias sret %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %3, align 8
  %4 = call i32 @memset(%struct.radeon_i2c_bus_rec* %0, i32 0, i32 80)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 16
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le16_to_cpu(i32 %7)
  %9 = mul nsw i32 %8, 4
  %10 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 15
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = mul nsw i32 %14, 4
  %16 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = mul nsw i32 %20, 4
  %22 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = mul nsw i32 %26, 4
  %28 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = mul nsw i32 %32, 4
  %34 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = mul nsw i32 %38, 4
  %40 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = mul nsw i32 %44, 4
  %46 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = mul nsw i32 %50, 4
  %52 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 1, %55
  %57 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  %62 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 9
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  %67 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 10
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 1, %70
  %72 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 11
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 1, %75
  %77 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 12
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 1, %80
  %82 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 13
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 1, %85
  %87 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 14
  store i32 %86, i32* %87, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 15
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %2
  %100 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 1, i32* %100, align 4
  br label %103

101:                                              ; preds = %2
  %102 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 160
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 17
  store i32 1, i32* %110, align 4
  br label %113

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 17
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 18
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 19
  store i32 1, i32* %123, align 4
  br label %126

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 19
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %122
  ret void
}

declare dso_local i32 @memset(%struct.radeon_i2c_bus_rec*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
