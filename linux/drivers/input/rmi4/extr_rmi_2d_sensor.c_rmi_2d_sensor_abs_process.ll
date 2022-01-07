; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_abs_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_abs_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_2d_sensor = type { %struct.TYPE_2__*, i8*, i8*, %struct.rmi_2d_axis_alignment }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.rmi_2d_axis_alignment = type { i64, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.rmi_2d_sensor_abs_object = type { i64, i8*, i8* }

@RMI_2D_OBJECT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmi_2d_sensor_abs_process(%struct.rmi_2d_sensor* %0, %struct.rmi_2d_sensor_abs_object* %1, i32 %2) #0 {
  %4 = alloca %struct.rmi_2d_sensor*, align 8
  %5 = alloca %struct.rmi_2d_sensor_abs_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rmi_2d_axis_alignment*, align 8
  store %struct.rmi_2d_sensor* %0, %struct.rmi_2d_sensor** %4, align 8
  store %struct.rmi_2d_sensor_abs_object* %1, %struct.rmi_2d_sensor_abs_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %9 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %8, i32 0, i32 3
  store %struct.rmi_2d_axis_alignment* %9, %struct.rmi_2d_axis_alignment** %7, align 8
  %10 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %11 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RMI_2D_OBJECT_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %148

16:                                               ; preds = %3
  %17 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %18 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %23 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %26 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %24 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %33 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %21, %16
  %35 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %36 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %41 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %44 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %42 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %51 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %39, %34
  %53 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %54 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %59 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %62 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @swap(i8* %60, i8* %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %67 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %70 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 %68
  store i8* %72, i8** %70, align 8
  %73 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %74 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %77 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr i8, i8* %78, i64 %75
  store i8* %79, i8** %77, align 8
  %80 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %81 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %84 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @max(i32 %82, i8* %85)
  %87 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %88 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %90 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %93 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @max(i32 %91, i8* %94)
  %96 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %97 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %99 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %65
  %103 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %104 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %107 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @min(i8* %105, i8* %108)
  %110 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %111 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %102, %65
  %113 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %114 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %119 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %122 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @min(i8* %120, i8* %123)
  %125 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %126 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %117, %112
  %128 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %129 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %132 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i8* %130, i8** %137, align 8
  %138 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %5, align 8
  %139 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %142 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i8* %140, i8** %147, align 8
  br label %148

148:                                              ; preds = %127, %15
  ret void
}

declare dso_local i32 @swap(i8*, i8*) #1

declare dso_local i8* @max(i32, i8*) #1

declare dso_local i8* @min(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
