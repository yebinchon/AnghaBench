; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_attr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32 (%struct.nvkm_therm*)* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_therm_attr_set(%struct.nvkm_therm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_therm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %171 [
    i32 137, label %9
    i32 138, label %36
    i32 136, label %63
    i32 131, label %67
    i32 130, label %80
    i32 133, label %93
    i32 132, label %106
    i32 135, label %119
    i32 134, label %132
    i32 129, label %145
    i32 128, label %158
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %14, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22, %13
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %32 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %174

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %51 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %40
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %59 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %174

63:                                               ; preds = %3
  %64 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @nvkm_therm_fan_mode(%struct.nvkm_therm* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %174

67:                                               ; preds = %3
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %70 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %74 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %73, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %76, align 8
  %78 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %79 = call i32 %77(%struct.nvkm_therm* %78)
  store i32 0, i32* %4, align 4
  br label %174

80:                                               ; preds = %3
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %83 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %87 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %89, align 8
  %91 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %92 = call i32 %90(%struct.nvkm_therm* %91)
  store i32 0, i32* %4, align 4
  br label %174

93:                                               ; preds = %3
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %96 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %100 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %102, align 8
  %104 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %105 = call i32 %103(%struct.nvkm_therm* %104)
  store i32 0, i32* %4, align 4
  br label %174

106:                                              ; preds = %3
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %109 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %113 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %115, align 8
  %117 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %118 = call i32 %116(%struct.nvkm_therm* %117)
  store i32 0, i32* %4, align 4
  br label %174

119:                                              ; preds = %3
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %122 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  %125 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %126 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %125, i32 0, i32 0
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %128, align 8
  %130 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %131 = call i32 %129(%struct.nvkm_therm* %130)
  store i32 0, i32* %4, align 4
  br label %174

132:                                              ; preds = %3
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %135 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %139 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %138, i32 0, i32 0
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %141, align 8
  %143 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %144 = call i32 %142(%struct.nvkm_therm* %143)
  store i32 0, i32* %4, align 4
  br label %174

145:                                              ; preds = %3
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %148 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i32 %146, i32* %150, align 8
  %151 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %152 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %151, i32 0, i32 0
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %154, align 8
  %156 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %157 = call i32 %155(%struct.nvkm_therm* %156)
  store i32 0, i32* %4, align 4
  br label %174

158:                                              ; preds = %3
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %161 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  store i32 %159, i32* %163, align 4
  %164 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %165 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %167, align 8
  %169 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %170 = call i32 %168(%struct.nvkm_therm* %169)
  store i32 0, i32* %4, align 4
  br label %174

171:                                              ; preds = %3
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %171, %158, %145, %132, %119, %106, %93, %80, %67, %63, %56, %29
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @nvkm_therm_fan_mode(%struct.nvkm_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
