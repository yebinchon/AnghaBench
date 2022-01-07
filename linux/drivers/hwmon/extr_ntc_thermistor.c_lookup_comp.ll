; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_lookup_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_lookup_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntc_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntc_data*, i32, i32*, i32*)* @lookup_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_comp(%struct.ntc_data* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ntc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ntc_data* %0, %struct.ntc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %14 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %12, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  br label %112

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %26 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %29 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ule i32 %24, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %23
  %38 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %39 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %44 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %112

48:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %49 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %50 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %91, %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sdiv i32 %60, 2
  %62 = add nsw i32 %57, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %65 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp uge i32 %63, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %10, align 4
  br label %91

75:                                               ; preds = %56
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %80 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp uge i32 %78, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %75
  br label %91

91:                                               ; preds = %90, %73
  br label %52

92:                                               ; preds = %52
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.ntc_data*, %struct.ntc_data** %5, align 8
  %97 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %95, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  br label %112

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 1
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %20, %37, %108, %105
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
