; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f12.c_rmi_f12_process_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f12.c_rmi_f12_process_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f12_data = type { %struct.TYPE_2__*, %struct.rmi_2d_sensor }
%struct.TYPE_2__ = type { i32 }
%struct.rmi_2d_sensor = type { %struct.rmi_2d_sensor_abs_object*, i32, i32, i32, i32, i32, i64 }
%struct.rmi_2d_sensor_abs_object = type { i32, i32, i32, i32, i32, i32, i32 }

@F12_DATA1_BYTES_PER_OBJ = common dso_local global i32 0, align 4
@RMI_2D_OBJECT_NONE = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@RMI_2D_OBJECT_FINGER = common dso_local global i32 0, align 4
@RMI_2D_OBJECT_STYLUS = common dso_local global i32 0, align 4
@MT_TOOL_PEN = common dso_local global i32 0, align 4
@RMI_2D_OBJECT_PALM = common dso_local global i32 0, align 4
@MT_TOOL_PALM = common dso_local global i32 0, align 4
@RMI_2D_OBJECT_UNCLASSIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f12_data*, i32*, i32)* @rmi_f12_process_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_f12_process_objects(%struct.f12_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.f12_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmi_2d_sensor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rmi_2d_sensor_abs_object*, align 8
  store %struct.f12_data* %0, %struct.f12_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.f12_data*, %struct.f12_data** %4, align 8
  %12 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %11, i32 0, i32 1
  store %struct.rmi_2d_sensor* %12, %struct.rmi_2d_sensor** %8, align 8
  %13 = load %struct.f12_data*, %struct.f12_data** %4, align 8
  %14 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.f12_data*, %struct.f12_data** %4, align 8
  %19 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @F12_DATA1_BYTES_PER_OBJ, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @F12_DATA1_BYTES_PER_OBJ, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %3
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %118, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %121

36:                                               ; preds = %32
  %37 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %38 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %37, i32 0, i32 0
  %39 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %39, i64 %41
  store %struct.rmi_2d_sensor_abs_object* %42, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %43 = load i32, i32* @RMI_2D_OBJECT_NONE, align 4
  %44 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %45 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @MT_TOOL_FINGER, align 4
  %47 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %48 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %74 [
    i32 131, label %52
    i32 129, label %56
    i32 130, label %63
    i32 128, label %70
  ]

52:                                               ; preds = %36
  %53 = load i32, i32* @RMI_2D_OBJECT_FINGER, align 4
  %54 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %55 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  br label %74

56:                                               ; preds = %36
  %57 = load i32, i32* @RMI_2D_OBJECT_STYLUS, align 4
  %58 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %59 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @MT_TOOL_PEN, align 4
  %61 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %62 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  br label %74

63:                                               ; preds = %36
  %64 = load i32, i32* @RMI_2D_OBJECT_PALM, align 4
  %65 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %66 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @MT_TOOL_PALM, align 4
  %68 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %69 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  br label %74

70:                                               ; preds = %36
  %71 = load i32, i32* @RMI_2D_OBJECT_UNCLASSIFIED, align 4
  %72 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %73 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %36, %70, %63, %56, %52
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %84 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  %93 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %94 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %99 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %104 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %109 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %111 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %10, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @rmi_2d_sensor_abs_process(%struct.rmi_2d_sensor* %110, %struct.rmi_2d_sensor_abs_object* %111, i32 %112)
  %114 = load i32, i32* @F12_DATA1_BYTES_PER_OBJ, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %5, align 8
  br label %118

118:                                              ; preds = %74
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %32

121:                                              ; preds = %32
  %122 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %123 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %128 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %131 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %134 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %137 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %140 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @input_mt_assign_slots(i32 %129, i32 %132, i32 %135, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %126, %121
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %158, %143
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %150 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %8, align 8
  %151 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %150, i32 0, i32 0
  %152 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %152, i64 %154
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @rmi_2d_sensor_abs_report(%struct.rmi_2d_sensor* %149, %struct.rmi_2d_sensor_abs_object* %155, i32 %156)
  br label %158

158:                                              ; preds = %148
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %144

161:                                              ; preds = %144
  ret void
}

declare dso_local i32 @rmi_2d_sensor_abs_process(%struct.rmi_2d_sensor*, %struct.rmi_2d_sensor_abs_object*, i32) #1

declare dso_local i32 @input_mt_assign_slots(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rmi_2d_sensor_abs_report(%struct.rmi_2d_sensor*, %struct.rmi_2d_sensor_abs_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
