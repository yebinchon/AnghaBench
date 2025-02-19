; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_fixed31_32_exp_from_taylor_series.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_fixpt31_32.c_fixed31_32_exp_from_taylor_series.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@dc_fixpt_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fixed31_32_exp_from_taylor_series to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed31_32_exp_from_taylor_series(i32 %0) #0 {
  %2 = alloca %struct.fixed31_32, align 4
  %3 = alloca %struct.fixed31_32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fixed31_32, align 4
  %6 = alloca %struct.fixed31_32, align 4
  %7 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 9, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, 2
  %10 = load i32, i32* %4, align 4
  %11 = add i32 %10, 1
  %12 = call i32 @dc_fixpt_from_fraction(i32 %9, i32 %11)
  %13 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @dc_fixpt_one, align 4
  %15 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dc_fixpt_lt(i32 %16, i32 %14)
  %18 = call i32 @ASSERT(i32 %17)
  br label %19

19:                                               ; preds = %32, %1
  %20 = load i32, i32* @dc_fixpt_one, align 4
  %21 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dc_fixpt_mul(i32 %22, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dc_fixpt_div_int(i32 %25, i32 %26)
  %28 = call i32 @dc_fixpt_add(i32 %20, i32 %27)
  %29 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.fixed31_32* %5 to i8*
  %31 = bitcast %struct.fixed31_32* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %19, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @dc_fixpt_one, align 4
  %38 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dc_fixpt_mul(i32 %39, i32 %41)
  %43 = call i32 @dc_fixpt_add(i32 %37, i32 %42)
  %44 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dc_fixpt_lt(i32, i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
