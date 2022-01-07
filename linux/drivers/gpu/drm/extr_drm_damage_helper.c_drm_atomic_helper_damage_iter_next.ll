; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_damage_helper.c_drm_atomic_helper_damage_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_damage_helper.c_drm_atomic_helper_damage_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_helper_damage_iter = type { i32, i64, i64, %struct.drm_rect, %struct.drm_rect* }
%struct.drm_rect = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_damage_iter_next(%struct.drm_atomic_helper_damage_iter* %0, %struct.drm_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_atomic_helper_damage_iter*, align 8
  %5 = alloca %struct.drm_rect*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_atomic_helper_damage_iter* %0, %struct.drm_atomic_helper_damage_iter** %4, align 8
  store %struct.drm_rect* %1, %struct.drm_rect** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %8 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %13 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %14 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %13, i32 0, i32 3
  %15 = bitcast %struct.drm_rect* %12 to i8*
  %16 = bitcast %struct.drm_rect* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 8 %16, i64 4, i1 false)
  %17 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %18 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  store i32 1, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %49, %19
  %21 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %22 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %25 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %20
  %29 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %30 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %31 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %30, i32 0, i32 4
  %32 = load %struct.drm_rect*, %struct.drm_rect** %31, align 8
  %33 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %34 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %35
  %37 = bitcast %struct.drm_rect* %29 to i8*
  %38 = bitcast %struct.drm_rect* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %40 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %44 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %45 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %44, i32 0, i32 3
  %46 = call i64 @drm_rect_intersect(%struct.drm_rect* %43, %struct.drm_rect* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %50

49:                                               ; preds = %28
  br label %20

50:                                               ; preds = %48, %20
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @drm_rect_intersect(%struct.drm_rect*, %struct.drm_rect*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
