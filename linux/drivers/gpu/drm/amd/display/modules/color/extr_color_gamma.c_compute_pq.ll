; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_compute_pq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_compute_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@dc_fixpt_zero = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fixed31_32*)* @compute_pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_pq(i32 %0, %struct.fixed31_32* %1) #0 {
  %3 = alloca %struct.fixed31_32, align 4
  %4 = alloca %struct.fixed31_32*, align 8
  %5 = alloca %struct.fixed31_32, align 4
  %6 = alloca %struct.fixed31_32, align 4
  %7 = alloca %struct.fixed31_32, align 4
  %8 = alloca %struct.fixed31_32, align 4
  %9 = alloca %struct.fixed31_32, align 4
  %10 = alloca %struct.fixed31_32, align 4
  %11 = alloca %struct.fixed31_32, align 4
  %12 = alloca %struct.fixed31_32, align 4
  %13 = alloca %struct.fixed31_32, align 4
  %14 = alloca %struct.fixed31_32, align 4
  %15 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i32 %0, i32* %15, align 4
  store %struct.fixed31_32* %1, %struct.fixed31_32** %4, align 8
  %16 = call i32 @dc_fixpt_from_fraction(i32 159301758, i32 1000000000)
  %17 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = call i32 @dc_fixpt_from_fraction(i32 7884375, i32 100000)
  %19 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = call i32 @dc_fixpt_from_fraction(i32 8359375, i32 10000000)
  %21 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i32 @dc_fixpt_from_fraction(i32 188515625, i32 10000000)
  %23 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 @dc_fixpt_from_fraction(i32 186875, i32 10000)
  %25 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_zero, i32 0, i32 0), align 4
  %29 = call i64 @dc_fixpt_lt(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = bitcast %struct.fixed31_32* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  br label %33

33:                                               ; preds = %31, %2
  %34 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dc_fixpt_pow(i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.fixed31_32* %10 to i8*
  %41 = bitcast %struct.fixed31_32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dc_fixpt_mul(i32 %43, i32 %45)
  %47 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dc_fixpt_add(i32 %48, i32 %46)
  %50 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dc_fixpt_mul(i32 %51, i32 %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %56 = call i32 @dc_fixpt_add(i32 %55, i32 %54)
  %57 = call i32 @dc_fixpt_div(i32 %49, i32 %56)
  %58 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = bitcast %struct.fixed31_32* %11 to i8*
  %60 = bitcast %struct.fixed31_32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = load %struct.fixed31_32*, %struct.fixed31_32** %4, align 8
  %62 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dc_fixpt_pow(i32 %63, i32 %65)
  %67 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = bitcast %struct.fixed31_32* %61 to i8*
  %69 = bitcast %struct.fixed31_32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  ret void
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i64 @dc_fixpt_lt(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_pow(i32, i32) #1

declare dso_local i32 @dc_fixpt_div(i32, i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
