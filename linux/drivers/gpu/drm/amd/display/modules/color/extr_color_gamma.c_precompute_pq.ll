; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_precompute_pq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_precompute_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_x_point = type { i32 }
%struct.fixed31_32 = type { i32 }

@coordinates_x = common dso_local global %struct.hw_x_point* null, align 8
@dc_fixpt_zero = common dso_local global i32 0, align 4
@pq_table = common dso_local global i32* null, align 8
@MAX_HW_POINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @precompute_pq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fixed31_32, align 4
  %3 = alloca %struct.hw_x_point*, align 8
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca %struct.fixed31_32, align 4
  %6 = load %struct.hw_x_point*, %struct.hw_x_point** @coordinates_x, align 8
  %7 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %6, i64 32
  store %struct.hw_x_point* %7, %struct.hw_x_point** %3, align 8
  %8 = call i32 @dc_fixpt_from_fraction(i32 80, i32 10000)
  %9 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %19, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* @dc_fixpt_zero, align 4
  %15 = load i32*, i32** @pq_table, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %14, i32* %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %10

22:                                               ; preds = %10
  store i32 32, i32* %1, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @MAX_HW_POINTS, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.hw_x_point*, %struct.hw_x_point** %3, align 8
  %29 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dc_fixpt_mul(i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = bitcast %struct.fixed31_32* %2 to i8*
  %36 = bitcast %struct.fixed31_32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load i32*, i32** @pq_table, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @compute_pq(i32 %42, i32* %40)
  %44 = load %struct.hw_x_point*, %struct.hw_x_point** %3, align 8
  %45 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %44, i32 1
  store %struct.hw_x_point* %45, %struct.hw_x_point** %3, align 8
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %23

49:                                               ; preds = %23
  ret void
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @compute_pq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
