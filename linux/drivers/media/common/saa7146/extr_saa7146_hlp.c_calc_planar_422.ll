; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calc_planar_422.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calc_planar_422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_vv = type { i64 }
%struct.saa7146_buf = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.saa7146_video_dma = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_vv*, %struct.saa7146_buf*, %struct.saa7146_video_dma*, %struct.saa7146_video_dma*)* @calc_planar_422 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_planar_422(%struct.saa7146_vv* %0, %struct.saa7146_buf* %1, %struct.saa7146_video_dma* %2, %struct.saa7146_video_dma* %3) #0 {
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
  %22 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %23 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %26 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %28 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 0, %29
  br i1 %30, label %31, label %102

31:                                               ; preds = %4
  %32 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %33 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %39 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %41 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 2
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %48 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %46, %52
  %54 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %55 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %57 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %60 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %58, %63
  %65 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %66 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %68 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %74 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %76 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %77, 2
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %83 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %81, %87
  %89 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %90 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %92 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %95 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %93, %98
  %100 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %101 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  br label %173

102:                                              ; preds = %4
  %103 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %104 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %110 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %112 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %115 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %113, %118
  %120 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %121 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %123 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sdiv i32 %124, 2
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %130 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %128, %134
  %136 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %8, align 8
  %137 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %139 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %145 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %147 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %7, align 8
  %150 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sdiv i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %148, %153
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

173:                                              ; preds = %102, %31
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
