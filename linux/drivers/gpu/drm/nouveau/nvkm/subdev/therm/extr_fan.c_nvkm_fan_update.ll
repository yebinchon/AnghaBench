; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_fan_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_fan_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fan = type { i32, i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*, i32)*, i32, %struct.TYPE_4__, i32, %struct.nvkm_therm* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.nvkm_therm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_timer* }
%struct.nvkm_timer = type { i32 }

@u8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"FAN target: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"FAN update: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fan*, i32, i32)* @nvkm_fan_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fan_update(%struct.nvkm_fan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_therm*, align 8
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca %struct.nvkm_timer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_fan* %0, %struct.nvkm_fan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %17, i32 0, i32 6
  %19 = load %struct.nvkm_therm*, %struct.nvkm_therm** %18, align 8
  store %struct.nvkm_therm* %19, %struct.nvkm_therm** %8, align 8
  %20 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %20, i32 0, i32 0
  store %struct.nvkm_subdev* %21, %struct.nvkm_subdev** %9, align 8
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.nvkm_timer*, %struct.nvkm_timer** %25, align 8
  store %struct.nvkm_timer* %26, %struct.nvkm_timer** %10, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %27, i32 0, i32 5
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load i32, i32* @u8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %41 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @max_t(i32 %38, i32 %39, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @u8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %48 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @min_t(i32 %45, i32 %46, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %53 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %37
  %58 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @nvkm_debug(%struct.nvkm_subdev* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %63 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %37
  %65 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %66 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %65, i32 0, i32 1
  %67 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %66, align 8
  %68 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %69 = call i32 %67(%struct.nvkm_therm* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %75 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %74, i32 0, i32 5
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  store i32 0, i32* %4, align 4
  br label %167

78:                                               ; preds = %64
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 3
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @min(i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  br label %103

93:                                               ; preds = %84
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 %98, 3
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @max(i32 %99, i32 %100)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %97, %93
  br label %103

103:                                              ; preds = %102, %88
  br label %106

104:                                              ; preds = %81, %78
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @nvkm_debug(%struct.nvkm_subdev* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %111 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %110, i32 0, i32 2
  %112 = load i32 (%struct.nvkm_therm*, i32)*, i32 (%struct.nvkm_therm*, i32)** %111, align 8
  %113 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 %112(%struct.nvkm_therm* %113, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %106
  %119 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %120 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %119, i32 0, i32 5
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %4, align 4
  br label %167

124:                                              ; preds = %106
  %125 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %126 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %125, i32 0, i32 5
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %124
  %133 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %134 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %14, align 4
  %137 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %138 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %16, align 4
  br label %157

146:                                              ; preds = %132
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @min(i32 %151, i32 %152)
  store i32 %153, i32* %16, align 4
  br label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %154, %150
  br label %157

157:                                              ; preds = %156, %144
  %158 = load %struct.nvkm_timer*, %struct.nvkm_timer** %10, align 8
  %159 = load i32, i32* %16, align 4
  %160 = mul nsw i32 %159, 1000
  %161 = mul nsw i32 %160, 1000
  %162 = load %struct.nvkm_fan*, %struct.nvkm_fan** %5, align 8
  %163 = getelementptr inbounds %struct.nvkm_fan, %struct.nvkm_fan* %162, i32 0, i32 3
  %164 = call i32 @nvkm_timer_alarm(%struct.nvkm_timer* %158, i32 %161, i32* %163)
  br label %165

165:                                              ; preds = %157, %124
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %118, %73
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_timer_alarm(%struct.nvkm_timer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
