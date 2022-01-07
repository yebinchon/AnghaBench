; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_area_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_area_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_area = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm_area*)* @tcm_area_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_area_is_valid(%struct.tcm_area* %0) #0 {
  %2 = alloca %struct.tcm_area*, align 8
  store %struct.tcm_area* %0, %struct.tcm_area** %2, align 8
  %3 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %4 = icmp ne %struct.tcm_area* %3, null
  br i1 %4, label %5, label %109

5:                                                ; preds = %1
  %6 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %7 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %109

10:                                               ; preds = %5
  %11 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %12 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %16 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %109

21:                                               ; preds = %10
  %22 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %23 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %27 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %109

32:                                               ; preds = %21
  %33 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %34 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %38 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %36, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %32
  %43 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %44 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %90, label %47

47:                                               ; preds = %42
  %48 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %49 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %53 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %47
  %59 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %60 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %64 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %68 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %66, %71
  %73 = add nsw i32 %62, %72
  %74 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %75 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %79 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %83 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %81, %86
  %88 = add nsw i32 %77, %87
  %89 = icmp sle i32 %73, %88
  br i1 %89, label %107, label %90

90:                                               ; preds = %58, %47, %42
  %91 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %92 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %97 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %101 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sle i32 %99, %103
  br label %105

105:                                              ; preds = %95, %90
  %106 = phi i1 [ false, %90 ], [ %104, %95 ]
  br label %107

107:                                              ; preds = %105, %58
  %108 = phi i1 [ true, %58 ], [ %106, %105 ]
  br label %109

109:                                              ; preds = %107, %32, %21, %10, %5, %1
  %110 = phi i1 [ false, %32 ], [ false, %21 ], [ false, %10 ], [ false, %5 ], [ false, %1 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
