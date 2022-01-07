; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_GetScaledFraction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_GetScaledFraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @GetScaledFraction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetScaledFraction(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 -1, %16
  store i32 %17, i32* %4, align 4
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 -1, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MAX, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %37, %38
  %40 = load i32, i32* @MAX, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MAX, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %43

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %57, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MAX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %53

62:                                               ; preds = %53
  br label %67

63:                                               ; preds = %36
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = bitcast %struct.TYPE_7__* %3 to i8*
  %66 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  br label %105

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @ConvertToFraction(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  br label %105

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @uPow(i32 -1, i32 %77)
  %79 = mul nsw i32 %76, %78
  %80 = call i32 @ConvertToFraction(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ConvertToFraction(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fDivide(i32 %86, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = bitcast %struct.TYPE_7__* %9 to i8*
  %92 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 4, i1 false)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 %94, %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %99, %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = bitcast %struct.TYPE_7__* %3 to i8*
  %104 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  br label %105

105:                                              ; preds = %75, %71, %63
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ConvertToFraction(i32) #2

declare dso_local i32 @fDivide(i32, i32) #2

declare dso_local i32 @uPow(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
