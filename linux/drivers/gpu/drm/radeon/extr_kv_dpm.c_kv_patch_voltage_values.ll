; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_patch_voltage_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_patch_voltage_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table }
%struct.radeon_clock_voltage_dependency_table = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.radeon_vce_clock_voltage_dependency_table = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.radeon_uvd_clock_voltage_dependency_table = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @kv_patch_voltage_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_patch_voltage_values(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_uvd_clock_voltage_dependency_table*, align 8
  %5 = alloca %struct.radeon_vce_clock_voltage_dependency_table*, align 8
  %6 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %7 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store %struct.radeon_uvd_clock_voltage_dependency_table* %12, %struct.radeon_uvd_clock_voltage_dependency_table** %4, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store %struct.radeon_vce_clock_voltage_dependency_table* %17, %struct.radeon_vce_clock_voltage_dependency_table** %5, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store %struct.radeon_clock_voltage_dependency_table* %22, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.radeon_clock_voltage_dependency_table* %27, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %28 = load %struct.radeon_uvd_clock_voltage_dependency_table*, %struct.radeon_uvd_clock_voltage_dependency_table** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_uvd_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.radeon_uvd_clock_voltage_dependency_table*, %struct.radeon_uvd_clock_voltage_dependency_table** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_uvd_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = load %struct.radeon_uvd_clock_voltage_dependency_table*, %struct.radeon_uvd_clock_voltage_dependency_table** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_uvd_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @kv_convert_8bit_index_to_voltage(%struct.radeon_device* %40, i8* %48)
  %50 = load %struct.radeon_uvd_clock_voltage_dependency_table*, %struct.radeon_uvd_clock_voltage_dependency_table** %4, align 8
  %51 = getelementptr inbounds %struct.radeon_uvd_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i8* %49, i8** %56, align 8
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %33

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %91, %66
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %5, align 8
  %70 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %67
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @kv_convert_8bit_index_to_voltage(%struct.radeon_device* %74, i8* %82)
  %84 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %5, align 8
  %85 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i8* %83, i8** %90, align 8
  br label %91

91:                                               ; preds = %73
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %67

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94, %61
  %96 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %97 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %125, %100
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %104 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %109 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %110 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @kv_convert_8bit_index_to_voltage(%struct.radeon_device* %108, i8* %116)
  %118 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %119 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i8* %117, i8** %124, align 8
  br label %125

125:                                              ; preds = %107
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %101

128:                                              ; preds = %101
  br label %129

129:                                              ; preds = %128, %95
  %130 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %131 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %159, %134
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %138 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %135
  %142 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %143 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %144 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i8* @kv_convert_8bit_index_to_voltage(%struct.radeon_device* %142, i8* %150)
  %152 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %153 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i8* %151, i8** %158, align 8
  br label %159

159:                                              ; preds = %141
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %135

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162, %129
  ret void
}

declare dso_local i8* @kv_convert_8bit_index_to_voltage(%struct.radeon_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
