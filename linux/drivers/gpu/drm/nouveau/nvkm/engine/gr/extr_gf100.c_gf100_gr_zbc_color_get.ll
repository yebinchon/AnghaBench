; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_zbc_color_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_zbc_color_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.gf100_gr*, i32)* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.nvkm_ltc* }
%struct.nvkm_ltc = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_gr*, i32, i32*, i32*)* @gf100_gr_zbc_color_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_zbc_color_get(%struct.gf100_gr* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_gr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvkm_ltc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %14 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %19, align 8
  store %struct.nvkm_ltc* %20, %struct.nvkm_ltc** %10, align 8
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  %24 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %95, %4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  %29 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %26
  %33 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %34 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %32
  %43 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %44 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %95

54:                                               ; preds = %42
  %55 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %56 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @memcmp(i32 %62, i32* %63, i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %95

67:                                               ; preds = %54
  %68 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %69 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = call i64 @memcmp(i32 %75, i32* %76, i32 4)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = call i32 @WARN_ON(i32 1)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %147

83:                                               ; preds = %67
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %147

85:                                               ; preds = %32
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  br label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %66, %53
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %26

98:                                               ; preds = %26
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %147

103:                                              ; preds = %98
  %104 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %105 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @memcpy(i32 %111, i32* %112, i32 4)
  %114 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %115 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @memcpy(i32 %121, i32* %122, i32 4)
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %126 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 4
  %132 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @nvkm_ltc_zbc_color_get(%struct.nvkm_ltc* %132, i32 %133, i32* %134)
  %136 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %137 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %136, i32 0, i32 0
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32)** %141, align 8
  %143 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 %142(%struct.gf100_gr* %143, i32 %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %103, %101, %83, %79
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nvkm_ltc_zbc_color_get(%struct.nvkm_ltc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
