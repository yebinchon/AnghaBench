; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_therm.c_nvbios_therm_sensor_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_therm.c_nvbios_therm_sensor_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_therm_sensor = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NVBIOS_THERM_DOMAIN_CORE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_therm_sensor_parse(%struct.nvkm_bios* %0, i32 %1, %struct.nvbios_therm_sensor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvbios_therm_sensor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvbios_therm_sensor* %2, %struct.nvbios_therm_sensor** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NVBIOS_THERM_DOMAIN_CORE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %158

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %156, %22
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %25 = load i64, i64* %13, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %13, align 8
  %27 = trunc i64 %25 to i32
  %28 = call i64 @nvbios_therm_entry(%struct.nvkm_bios* %24, i32 %27, i64* %11, i64* %12)
  store i64 %28, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %157

30:                                               ; preds = %23
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %32 = load i64, i64* %14, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @nvbios_rd16(%struct.nvkm_bios* %31, i64 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %36 = load i64, i64* %14, align 8
  %37 = add nsw i64 %36, 0
  %38 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i64 %37)
  switch i32 %38, label %156 [
    i32 0, label %39
    i32 1, label %45
    i32 4, label %60
    i32 7, label %76
    i32 8, label %92
    i32 16, label %108
    i32 17, label %116
    i32 18, label %124
    i32 19, label %132
    i32 50, label %140
  ]

39:                                               ; preds = %30
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %158

44:                                               ; preds = %39
  br label %156

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %52 = load i64, i64* %14, align 8
  %53 = add nsw i64 %52, 2
  %54 = call i32 @nvbios_rd08(%struct.nvkm_bios* %51, i64 %53)
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %58 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %45
  br label %156

60:                                               ; preds = %30
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %15, align 4
  %65 = and i32 %64, 4080
  %66 = ashr i32 %65, 4
  %67 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %68 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = and i32 %70, 15
  %72 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %73 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %63, %60
  br label %156

76:                                               ; preds = %30
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = and i32 %80, 4080
  %82 = ashr i32 %81, 4
  %83 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %84 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %86, 15
  %88 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %89 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %79, %76
  br label %156

92:                                               ; preds = %30
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %15, align 4
  %97 = and i32 %96, 4080
  %98 = ashr i32 %97, 4
  %99 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %100 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  %103 = and i32 %102, 15
  %104 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %105 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %95, %92
  br label %156

108:                                              ; preds = %30
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %114 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %108
  br label %156

116:                                              ; preds = %30
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %122 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %116
  br label %156

124:                                              ; preds = %30
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %130 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %124
  br label %156

132:                                              ; preds = %30
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %138 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %132
  br label %156

140:                                              ; preds = %30
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load i32, i32* %15, align 4
  %145 = and i32 %144, 4080
  %146 = ashr i32 %145, 4
  %147 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %148 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* %15, align 4
  %151 = and i32 %150, 15
  %152 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %153 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %143, %140
  br label %156

156:                                              ; preds = %30, %155, %139, %131, %123, %115, %107, %91, %75, %59, %44
  br label %23

157:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %43, %19
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i64 @nvbios_therm_entry(%struct.nvkm_bios*, i32, i64*, i64*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
