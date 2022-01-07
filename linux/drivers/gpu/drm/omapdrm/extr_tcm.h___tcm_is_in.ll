; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h___tcm_is_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h___tcm_is_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_pt = type { i64, i32 }
%struct.tcm_area = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm_pt*, %struct.tcm_area*)* @__tcm_is_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcm_is_in(%struct.tcm_pt* %0, %struct.tcm_area* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcm_pt*, align 8
  %5 = alloca %struct.tcm_area*, align 8
  %6 = alloca i64, align 8
  store %struct.tcm_pt* %0, %struct.tcm_pt** %4, align 8
  store %struct.tcm_area* %1, %struct.tcm_area** %5, align 8
  %7 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %8 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load %struct.tcm_pt*, %struct.tcm_pt** %4, align 8
  %13 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %16 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %14, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %11
  %21 = load %struct.tcm_pt*, %struct.tcm_pt** %4, align 8
  %22 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %25 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %23, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %20
  %30 = load %struct.tcm_pt*, %struct.tcm_pt** %4, align 8
  %31 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %34 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %32, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.tcm_pt*, %struct.tcm_pt** %4, align 8
  %40 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %43 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %41, %45
  br label %47

47:                                               ; preds = %38, %29, %20, %11
  %48 = phi i1 [ false, %29 ], [ false, %20 ], [ false, %11 ], [ %46, %38 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %105

50:                                               ; preds = %2
  %51 = load %struct.tcm_pt*, %struct.tcm_pt** %4, align 8
  %52 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.tcm_pt*, %struct.tcm_pt** %4, align 8
  %55 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %58 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %56, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %53, %63
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %67 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %71 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %75 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %69, %80
  %82 = icmp sge i64 %65, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %50
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %86 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %90 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.tcm_area*, %struct.tcm_area** %5, align 8
  %94 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %92, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %88, %99
  %101 = icmp sle i64 %84, %100
  br label %102

102:                                              ; preds = %83, %50
  %103 = phi i1 [ false, %50 ], [ %101, %83 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %47
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
