; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ic_settings_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ic_settings_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { i32, i64*, i64*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_ctx*)* @ic_settings_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ic_settings_changed(%struct.ipu_image_convert_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_image_convert_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %3, align 8
  %6 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = urem i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %15, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = urem i32 %28, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %27, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %24, %36
  br i1 %37, label %144, label %38

38:                                               ; preds = %1
  %39 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = udiv i32 %42, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %41, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = udiv i32 %54, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %53, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %50, %62
  br i1 %63, label %144, label %64

64:                                               ; preds = %38
  %65 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %73, %82
  br i1 %83, label %144, label %84

84:                                               ; preds = %64
  %85 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %93, %102
  br i1 %103, label %144, label %104

104:                                              ; preds = %84
  %105 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %115 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %113, %122
  br i1 %123, label %144, label %124

124:                                              ; preds = %104
  %125 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %133, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %124, %104, %84, %64, %38, %1
  store i32 1, i32* %2, align 4
  br label %146

145:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %144
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
