; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fSqrt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fSqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @fSqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fSqrt(i64 %0) #0 {
  %2 = alloca %struct.TYPE_23__, align 4
  %3 = alloca %struct.TYPE_23__, align 4
  %4 = alloca %struct.TYPE_23__, align 4
  %5 = alloca %struct.TYPE_23__, align 4
  %6 = alloca %struct.TYPE_23__, align 4
  %7 = alloca %struct.TYPE_23__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__, align 4
  %12 = alloca %struct.TYPE_23__, align 4
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca %struct.TYPE_23__, align 4
  %15 = alloca %struct.TYPE_23__, align 4
  %16 = alloca %struct.TYPE_23__, align 4
  %17 = alloca %struct.TYPE_23__, align 4
  %18 = alloca %struct.TYPE_23__, align 4
  %19 = alloca %struct.TYPE_23__, align 4
  %20 = alloca %struct.TYPE_23__, align 4
  %21 = alloca %struct.TYPE_23__, align 4
  %22 = alloca %struct.TYPE_23__, align 4
  %23 = bitcast %struct.TYPE_23__* %3 to i64*
  store i64 %0, i64* %23, align 4
  %24 = call i64 @ConvertToFraction(i32 0)
  %25 = bitcast %struct.TYPE_23__* %15 to i64*
  store i64 %24, i64* %25, align 4
  %26 = bitcast %struct.TYPE_23__* %15 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.TYPE_23__* %3 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i64 @GreaterThan(i64 %27, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %1
  %33 = bitcast %struct.TYPE_23__* %15 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = bitcast %struct.TYPE_23__* %3 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i64 @Equal(i64 %34, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %1
  %40 = bitcast %struct.TYPE_23__* %2 to i8*
  %41 = bitcast %struct.TYPE_23__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  br label %149

42:                                               ; preds = %32
  %43 = bitcast %struct.TYPE_23__* %13 to i8*
  %44 = bitcast %struct.TYPE_23__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 3000
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 60, i32* %8, align 4
  br label %65

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1000
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 30, i32* %8, align 4
  br label %64

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 100
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 10, i32* %8, align 4
  br label %63

62:                                               ; preds = %56
  store i32 2, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %49
  store i32 0, i32* %9, align 4
  %66 = bitcast %struct.TYPE_23__* %3 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = bitcast %struct.TYPE_23__* %15 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call i64 @Equal(i64 %67, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = bitcast %struct.TYPE_23__* %2 to i8*
  %74 = bitcast %struct.TYPE_23__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 8, i1 false)
  br label %149

75:                                               ; preds = %65
  %76 = call i64 @ConvertToFraction(i32 2)
  %77 = bitcast %struct.TYPE_23__* %16 to i64*
  store i64 %76, i64* %77, align 4
  %78 = bitcast %struct.TYPE_23__* %7 to i8*
  %79 = bitcast %struct.TYPE_23__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 8, i1 false)
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @ConvertToFraction(i32 %80)
  %82 = bitcast %struct.TYPE_23__* %17 to i64*
  store i64 %81, i64* %82, align 4
  %83 = bitcast %struct.TYPE_23__* %11 to i8*
  %84 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 8, i1 false)
  br label %85

85:                                               ; preds = %142, %75
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = bitcast %struct.TYPE_23__* %12 to i64*
  %92 = load i64, i64* %91, align 4
  %93 = call i64 @fGetSquare(i64 %92)
  %94 = bitcast %struct.TYPE_23__* %18 to i64*
  store i64 %93, i64* %94, align 4
  %95 = bitcast %struct.TYPE_23__* %6 to i8*
  %96 = bitcast %struct.TYPE_23__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 8, i1 false)
  %97 = bitcast %struct.TYPE_23__* %6 to i64*
  %98 = load i64, i64* %97, align 4
  %99 = bitcast %struct.TYPE_23__* %13 to i64*
  %100 = load i64, i64* %99, align 4
  %101 = call i64 @fSubtract(i64 %98, i64 %100)
  %102 = bitcast %struct.TYPE_23__* %19 to i64*
  store i64 %101, i64* %102, align 4
  %103 = bitcast %struct.TYPE_23__* %14 to i8*
  %104 = bitcast %struct.TYPE_23__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 8, i1 false)
  %105 = bitcast %struct.TYPE_23__* %7 to i64*
  %106 = load i64, i64* %105, align 4
  %107 = bitcast %struct.TYPE_23__* %12 to i64*
  %108 = load i64, i64* %107, align 4
  %109 = call i64 @fMultiply(i64 %106, i64 %108)
  %110 = bitcast %struct.TYPE_23__* %20 to i64*
  store i64 %109, i64* %110, align 4
  %111 = bitcast %struct.TYPE_23__* %5 to i8*
  %112 = bitcast %struct.TYPE_23__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 8, i1 false)
  %113 = bitcast %struct.TYPE_23__* %14 to i64*
  %114 = load i64, i64* %113, align 4
  %115 = bitcast %struct.TYPE_23__* %5 to i64*
  %116 = load i64, i64* %115, align 4
  %117 = call i64 @fDivide(i64 %114, i64 %116)
  %118 = bitcast %struct.TYPE_23__* %21 to i64*
  store i64 %117, i64* %118, align 4
  %119 = bitcast %struct.TYPE_23__* %4 to i8*
  %120 = bitcast %struct.TYPE_23__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 8, i1 false)
  %121 = bitcast %struct.TYPE_23__* %12 to i64*
  %122 = load i64, i64* %121, align 4
  %123 = bitcast %struct.TYPE_23__* %4 to i64*
  %124 = load i64, i64* %123, align 4
  %125 = call i64 @fSubtract(i64 %122, i64 %124)
  %126 = bitcast %struct.TYPE_23__* %22 to i64*
  store i64 %125, i64* %126, align 4
  %127 = bitcast %struct.TYPE_23__* %11 to i8*
  %128 = bitcast %struct.TYPE_23__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 8, i1 false)
  %129 = bitcast %struct.TYPE_23__* %11 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i32 @ConvertBackToInteger(i64 %130)
  %132 = bitcast %struct.TYPE_23__* %12 to i64*
  %133 = load i64, i64* %132, align 4
  %134 = call i32 @ConvertBackToInteger(i64 %133)
  %135 = sub nsw i32 %131, %134
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp sgt i32 %136, 20
  br i1 %137, label %138, label %141

138:                                              ; preds = %85
  %139 = bitcast %struct.TYPE_23__* %2 to i8*
  %140 = bitcast %struct.TYPE_23__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 8, i1 false)
  br label %149

141:                                              ; preds = %85
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = call i64 @uAbs(i32 %143)
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %85, label %146

146:                                              ; preds = %142
  %147 = bitcast %struct.TYPE_23__* %2 to i8*
  %148 = bitcast %struct.TYPE_23__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 8, i1 false)
  br label %149

149:                                              ; preds = %146, %138, %72, %39
  %150 = bitcast %struct.TYPE_23__* %2 to i64*
  %151 = load i64, i64* %150, align 4
  ret i64 %151
}

declare dso_local i64 @ConvertToFraction(i32) #1

declare dso_local i64 @GreaterThan(i64, i64) #1

declare dso_local i64 @Equal(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fGetSquare(i64) #1

declare dso_local i64 @fSubtract(i64, i64) #1

declare dso_local i64 @fMultiply(i64, i64) #1

declare dso_local i64 @fDivide(i64, i64) #1

declare dso_local i32 @ConvertBackToInteger(i64) #1

declare dso_local i64 @uAbs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
