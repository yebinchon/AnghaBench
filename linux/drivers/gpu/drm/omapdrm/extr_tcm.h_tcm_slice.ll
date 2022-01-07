; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_slice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_area = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcm_area*, %struct.tcm_area*)* @tcm_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcm_slice(%struct.tcm_area* %0, %struct.tcm_area* %1) #0 {
  %3 = alloca %struct.tcm_area*, align 8
  %4 = alloca %struct.tcm_area*, align 8
  store %struct.tcm_area* %0, %struct.tcm_area** %3, align 8
  store %struct.tcm_area* %1, %struct.tcm_area** %4, align 8
  %5 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %6 = load %struct.tcm_area*, %struct.tcm_area** %3, align 8
  %7 = bitcast %struct.tcm_area* %5 to i8*
  %8 = bitcast %struct.tcm_area* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 40, i1 false)
  %9 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %10 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %88

13:                                               ; preds = %2
  %14 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %15 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %88, label %18

18:                                               ; preds = %13
  %19 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %20 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %24 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %18
  %29 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %30 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %36 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %40 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp ne i32 %38, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %34, %28
  %47 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %48 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %54 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %57 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %63 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  br label %72

66:                                               ; preds = %46
  %67 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %68 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i32 [ %65, %61 ], [ %71, %66 ]
  %74 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %75 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.tcm_area*, %struct.tcm_area** %3, align 8
  %78 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %81 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  %85 = load %struct.tcm_area*, %struct.tcm_area** %3, align 8
  %86 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %91

88:                                               ; preds = %34, %18, %13, %2
  %89 = load %struct.tcm_area*, %struct.tcm_area** %3, align 8
  %90 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %89, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %90, align 8
  br label %91

91:                                               ; preds = %88, %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
