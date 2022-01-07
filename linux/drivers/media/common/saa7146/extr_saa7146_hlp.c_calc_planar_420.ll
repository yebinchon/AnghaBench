; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calc_planar_420.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calc_planar_420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_vv = type { i64 }
%struct.saa7146_buf = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.saa7146_video_dma = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_vv*, %struct.saa7146_buf*, %struct.saa7146_video_dma*, %struct.saa7146_video_dma*)* @calc_planar_420 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_planar_420(%struct.saa7146_vv* %0, %struct.saa7146_buf* %1, %struct.saa7146_video_dma* %2, %struct.saa7146_video_dma* %3) #0 {
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  %7 = alloca %struct.saa7146_video_dma*, align 8
  %8 = alloca %struct.saa7146_video_dma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.saa7146_vv* %0, %struct.saa7146_vv** %5, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %6, align 8
  store %struct.saa7146_video_dma* %2, %struct.saa7146_video_dma** %7, align 8
  store %struct.saa7146_video_dma* %3, %struct.saa7146_video_dma** %8, align 8
  %11 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %12 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %17 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sdiv i32 %21, 2
  %23 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %24 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 2
  %27 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %28 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %30 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 0, %31
  br i1 %32, label %33, label %104

33:                                               ; preds = %4
  %34 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %35 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %41 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %43 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 2
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %50 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %48, %54
  %56 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %57 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %59 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %62 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %60, %65
  %67 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %68 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %70 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %76 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %78 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %79, 2
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %85 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %83, %89
  %91 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %92 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %94 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %97 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %95, %100
  %102 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %103 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  br label %173

104:                                              ; preds = %4
  %105 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %106 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %112 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %114 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %117 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  %121 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %122 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %124 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sdiv i32 %125, 2
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %131 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %129, %135
  %137 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %138 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %140 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %146 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %148 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %151 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %149, %153
  %155 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %156 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %158 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %159, 2
  %161 = load i32, i32* %9, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %165 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %163, %169
  %171 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %172 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %104, %33
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
