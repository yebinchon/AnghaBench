; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_exp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i64 }

@dc_fixpt_ln2_div_2 = common dso_local global i32 0, align 4
@dc_fixpt_ln2 = common dso_local global i32 0, align 4
@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dc_fixpt_exp(i64 %0) #0 {
  %2 = alloca %struct.fixed31_32, align 8
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fixed31_32, align 8
  %6 = alloca %struct.fixed31_32, align 8
  %7 = alloca %struct.fixed31_32, align 8
  %8 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = load i32, i32* @dc_fixpt_ln2_div_2, align 4
  %10 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @dc_fixpt_abs(i64 %11)
  %13 = call i64 @dc_fixpt_le(i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = load i32, i32* @dc_fixpt_ln2, align 4
  %17 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dc_fixpt_div(i64 %18, i32 %16)
  %20 = call i32 @dc_fixpt_round(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @dc_fixpt_ln2, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dc_fixpt_mul_int(i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @dc_fixpt_sub(i64 %25, i32 %23)
  %27 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dc_fixpt_abs(i64 %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 8
  %36 = call i32 @dc_fixpt_lt(i32 %34, i64 %35)
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %15
  %41 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @fixed31_32_exp_from_taylor_series(i64 %42)
  %44 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @dc_fixpt_shl(i64 %48, i8 zeroext %46)
  %50 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  br label %75

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @fixed31_32_exp_from_taylor_series(i64 %53)
  %55 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 0, %56
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @dc_fixpt_div_int(i64 %61, i64 %59)
  %63 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  br label %75

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @fixed31_32_exp_from_taylor_series(i64 %70)
  %72 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  br label %75

73:                                               ; preds = %64
  %74 = bitcast %struct.fixed31_32* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 bitcast (%struct.fixed31_32* @dc_fixpt_one to i8*), i64 8, i1 false)
  br label %75

75:                                               ; preds = %73, %68, %51, %40
  %76 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  ret i64 %77
}

declare dso_local i64 @dc_fixpt_le(i32, i32) #1

declare dso_local i32 @dc_fixpt_abs(i64) #1

declare dso_local i32 @dc_fixpt_round(i32) #1

declare dso_local i32 @dc_fixpt_div(i64, i32) #1

declare dso_local i64 @dc_fixpt_sub(i64, i32) #1

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dc_fixpt_lt(i32, i64) #1

declare dso_local i64 @dc_fixpt_shl(i64, i8 zeroext) #1

declare dso_local i64 @fixed31_32_exp_from_taylor_series(i64) #1

declare dso_local i64 @dc_fixpt_div_int(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
