; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_dc_fixpt_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i64 }

@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dc_fixpt_log(i64 %0) #0 {
  %2 = alloca %struct.fixed31_32, align 8
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca %struct.fixed31_32, align 8
  %5 = alloca %struct.fixed31_32, align 8
  %6 = alloca %struct.fixed31_32, align 8
  %7 = alloca %struct.fixed31_32, align 8
  %8 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 8
  %10 = call i64 @dc_fixpt_neg(i64 %9)
  %11 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  br label %17

17:                                               ; preds = %43, %1
  %18 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 8
  %21 = call i64 @dc_fixpt_sub(i64 %19, i64 %20)
  %22 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dc_fixpt_exp(i64 %24)
  %26 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dc_fixpt_div(i64 %27, i32 %25)
  %29 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @dc_fixpt_add(i64 %30, i32 %28)
  %32 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @dc_fixpt_sub(i64 %34, i64 %36)
  %38 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = bitcast %struct.fixed31_32* %4 to i8*
  %40 = bitcast %struct.fixed31_32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = bitcast %struct.fixed31_32* %2 to i8*
  %42 = bitcast %struct.fixed31_32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  br label %43

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @abs_i64(i64 %45)
  %47 = icmp ugt i64 %46, 100
  br i1 %47, label %17, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  ret i64 %50
}

declare dso_local i64 @dc_fixpt_neg(i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dc_fixpt_add(i64, i32) #1

declare dso_local i64 @dc_fixpt_sub(i64, i64) #1

declare dso_local i32 @dc_fixpt_div(i64, i32) #1

declare dso_local i32 @dc_fixpt_exp(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @abs_i64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
