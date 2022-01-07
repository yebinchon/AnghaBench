; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fRoundUpByStepSize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fRoundUpByStepSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i64, i32, i64, i32)* @fRoundUpByStepSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @fRoundUpByStepSize(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = bitcast %struct.TYPE_16__* %7 to { i32, i64 }*
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 0
  store i32 %0, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 1
  store i64 %1, i64* %15, align 8
  %16 = bitcast %struct.TYPE_16__* %8 to { i32, i64 }*
  %17 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %16, i32 0, i32 0
  store i32 %2, i32* %17, align 8
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %16, i32 0, i32 1
  store i64 %3, i64* %18, align 8
  store i32 %4, i32* %9, align 4
  %19 = bitcast %struct.TYPE_16__* %7 to { i32, i64 }*
  %20 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %struct.TYPE_16__* %8 to { i32, i64 }*
  %25 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call { i32, i64 } @fDivide(i32 %21, i64 %23, i32 %26, i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %31 = bitcast %struct.TYPE_15__* %30 to { i32, i64 }*
  %32 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i32, i64 } %29, 0
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i32, i64 } %29, 1
  store i64 %35, i64* %34, align 8
  %36 = bitcast %struct.TYPE_16__* %6 to i8*
  %37 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %5
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %5
  %48 = bitcast %struct.TYPE_16__* %6 to { i32, i64 }*
  %49 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = bitcast %struct.TYPE_16__* %8 to { i32, i64 }*
  %54 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call { i32, i64 } @fMultiply(i32 %50, i64 %52, i32 %55, i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %60 = bitcast %struct.TYPE_15__* %59 to { i32, i64 }*
  %61 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i32, i64 } %58, 0
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i32, i64 } %58, 1
  store i64 %64, i64* %63, align 8
  %65 = bitcast %struct.TYPE_16__* %6 to i8*
  %66 = bitcast %struct.TYPE_16__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = bitcast %struct.TYPE_16__* %6 to { i32, i64 }*
  %68 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %struct.TYPE_16__* %8 to { i32, i64 }*
  %73 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call { i32, i64 } @fAdd(i32 %69, i64 %71, i32 %74, i64 %76)
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %79 = bitcast %struct.TYPE_15__* %78 to { i32, i64 }*
  %80 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %79, i32 0, i32 0
  %81 = extractvalue { i32, i64 } %77, 0
  store i32 %81, i32* %80, align 8
  %82 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %79, i32 0, i32 1
  %83 = extractvalue { i32, i64 } %77, 1
  store i64 %83, i64* %82, align 8
  %84 = bitcast %struct.TYPE_16__* %6 to i8*
  %85 = bitcast %struct.TYPE_16__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %87 = bitcast %struct.TYPE_15__* %86 to { i32, i64 }*
  %88 = load { i32, i64 }, { i32, i64 }* %87, align 8
  ret { i32, i64 } %88
}

declare dso_local { i32, i64 } @fDivide(i32, i64, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i32, i64 } @fMultiply(i32, i64, i32, i64) #1

declare dso_local { i32, i64 } @fAdd(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
