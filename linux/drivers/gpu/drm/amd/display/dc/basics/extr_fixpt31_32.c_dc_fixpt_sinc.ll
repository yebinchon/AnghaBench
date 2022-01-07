; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_sinc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_sinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i64 }
%struct.TYPE_4__ = type { i32 }

@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 8
@dc_fixpt_two_pi = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dc_fixpt_sinc(i64 %0) #0 {
  %2 = alloca %struct.fixed31_32, align 8
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca %struct.fixed31_32, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fixed31_32, align 8
  %7 = alloca %struct.fixed31_32, align 8
  %8 = alloca %struct.fixed31_32, align 8
  %9 = alloca %struct.fixed31_32, align 8
  %10 = alloca %struct.fixed31_32, align 8
  %11 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = bitcast %struct.fixed31_32* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.fixed31_32* @dc_fixpt_one to i8*), i64 8, i1 false)
  store i32 27, i32* %5, align 4
  %13 = bitcast %struct.fixed31_32* %6 to i8*
  %14 = bitcast %struct.fixed31_32* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dc_fixpt_abs(i64 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dc_fixpt_two_pi, i32 0, i32 0), align 4
  %19 = call i64 @dc_fixpt_le(i32 %18, i32 %17)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dc_fixpt_two_pi, i32 0, i32 0), align 4
  %25 = call i64 @div64_s64(i64 %23, i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dc_fixpt_two_pi, i32 0, i32 0), align 4
  %28 = call i32 @dc_fixpt_mul_int(i32 %27, i32 %26)
  %29 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @dc_fixpt_sub(i64 %30, i32 %28)
  %32 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = bitcast %struct.fixed31_32* %6 to i8*
  %34 = bitcast %struct.fixed31_32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  br label %35

35:                                               ; preds = %21, %1
  %36 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @dc_fixpt_sqr(i64 %37)
  %39 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = bitcast %struct.fixed31_32* %4 to i8*
  %41 = bitcast %struct.fixed31_32* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  br label %42

42:                                               ; preds = %60, %35
  %43 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dc_fixpt_mul(i64 %44, i64 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %48, %50
  %52 = call i32 @dc_fixpt_div_int(i32 %47, i32 %51)
  %53 = load i64, i64* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 8
  %54 = call i64 @dc_fixpt_sub(i64 %53, i32 %52)
  %55 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = bitcast %struct.fixed31_32* %2 to i8*
  %57 = bitcast %struct.fixed31_32* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 2
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %42
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %42, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @dc_fixpt_mul(i64 %71, i64 %73)
  %75 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @dc_fixpt_div(i32 %74, i64 %76)
  %78 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = bitcast %struct.fixed31_32* %2 to i8*
  %80 = bitcast %struct.fixed31_32* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false)
  br label %81

81:                                               ; preds = %69, %63
  %82 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  ret i64 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @dc_fixpt_le(i32, i32) #2

declare dso_local i32 @dc_fixpt_abs(i64) #2

declare dso_local i64 @dc_fixpt_sub(i64, i32) #2

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #2

declare dso_local i64 @div64_s64(i64, i32) #2

declare dso_local i64 @dc_fixpt_sqr(i64) #2

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #2

declare dso_local i32 @dc_fixpt_mul(i64, i64) #2

declare dso_local i64 @dc_fixpt_div(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
