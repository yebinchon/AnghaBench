; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_therm.c_nvbios_therm_fan_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_therm.c_nvbios_therm_fan_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.nvbios_therm_fan = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.nvbios_therm_trip_point* }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }

@__const.nvbios_therm_fan_parse.duty_lut = private unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 25, i32 0, i32 40, i32 0, i32 50, i32 0, i32 75, i32 0, i32 85, i32 0, i32 100, i32 0, i32 100, i32 0], align 16
@NVBIOS_THERM_FAN_OTHER = common dso_local global i64 0, align 8
@NVBIOS_THERM_FAN_TRIP = common dso_local global i64 0, align 8
@NVBIOS_THERM_FAN_LINEAR = common dso_local global i64 0, align 8
@NV_C0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_therm_fan_parse(%struct.nvkm_bios* %0, %struct.nvbios_therm_fan* %1) #0 {
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.nvbios_therm_fan*, align 8
  %5 = alloca %struct.nvbios_therm_trip_point*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  store %struct.nvbios_therm_fan* %1, %struct.nvbios_therm_fan** %4, align 8
  store %struct.nvbios_therm_trip_point* null, %struct.nvbios_therm_trip_point** %5, align 8
  %12 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i32]* @__const.nvbios_therm_fan_parse.duty_lut to i8*), i64 64, i1 false)
  store i64 0, i64* %8, align 8
  %13 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %14 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* @NVBIOS_THERM_FAN_OTHER, align 8
  %16 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %17 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %137, %2
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %8, align 8
  %22 = trunc i64 %20 to i32
  %23 = call i64 @nvbios_therm_entry(%struct.nvkm_bios* %19, i32 %22, i64* %6, i64* %7)
  store i64 %23, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %138

25:                                               ; preds = %18
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @nvbios_rd16(%struct.nvkm_bios* %26, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, 0
  %33 = call i32 @nvbios_rd08(%struct.nvkm_bios* %30, i64 %32)
  switch i32 %33, label %137 [
    i32 34, label %34
    i32 36, label %44
    i32 37, label %84
    i32 38, label %96
    i32 59, label %106
    i32 60, label %110
    i32 70, label %114
  ]

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 255
  %37 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %38 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 65280
  %41 = ashr i32 %40, 8
  %42 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %43 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %137

44:                                               ; preds = %25
  %45 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %46 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %50 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NVBIOS_THERM_FAN_TRIP, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i64, i64* @NVBIOS_THERM_FAN_TRIP, align 8
  %56 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %57 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %44
  %59 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %60 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %59, i32 0, i32 9
  %61 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %60, align 8
  %62 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %63 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %61, i64 %65
  store %struct.nvbios_therm_trip_point* %66, %struct.nvbios_therm_trip_point** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 15
  %69 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %70 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 4080
  %73 = ashr i32 %72, 4
  %74 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %75 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, 61440
  %78 = ashr i32 %77, 12
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %83 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %137

84:                                               ; preds = %25
  %85 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %86 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %85, i32 0, i32 9
  %87 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %86, align 8
  %88 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %89 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %87, i64 %91
  store %struct.nvbios_therm_trip_point* %92, %struct.nvbios_therm_trip_point** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %95 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %137

96:                                               ; preds = %25
  %97 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %98 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %104 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %96
  br label %137

106:                                              ; preds = %25
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %109 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  br label %137

110:                                              ; preds = %25
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %113 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  br label %137

114:                                              ; preds = %25
  %115 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %116 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NVBIOS_THERM_FAN_LINEAR, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i64, i64* @NVBIOS_THERM_FAN_LINEAR, align 8
  %122 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %123 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %114
  %125 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %126 = load i64, i64* %9, align 8
  %127 = add nsw i64 %126, 1
  %128 = call i32 @nvbios_rd08(%struct.nvkm_bios* %125, i64 %127)
  %129 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %130 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %132 = load i64, i64* %9, align 8
  %133 = add nsw i64 %132, 2
  %134 = call i32 @nvbios_rd08(%struct.nvkm_bios* %131, i64 %133)
  %135 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %136 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %25, %124, %110, %106, %105, %84, %58, %34
  br label %18

138:                                              ; preds = %18
  %139 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %140 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @NV_C0, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %138
  %148 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %149 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @NVBIOS_THERM_FAN_OTHER, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i64, i64* @NVBIOS_THERM_FAN_LINEAR, align 8
  %155 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %156 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %147, %138
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @nvbios_therm_entry(%struct.nvkm_bios*, i32, i64*, i64*) #2

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #2

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
