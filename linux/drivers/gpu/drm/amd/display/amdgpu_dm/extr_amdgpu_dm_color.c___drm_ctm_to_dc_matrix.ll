; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___drm_ctm_to_dc_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___drm_ctm_to_dc_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i64 }
%struct.drm_color_ctm = type { i64* }

@dc_fixpt_zero = common dso_local global %struct.fixed31_32 zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_color_ctm*, %struct.fixed31_32*)* @__drm_ctm_to_dc_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__drm_ctm_to_dc_matrix(%struct.drm_color_ctm* %0, %struct.fixed31_32* %1) #0 {
  %3 = alloca %struct.drm_color_ctm*, align 8
  %4 = alloca %struct.fixed31_32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.drm_color_ctm* %0, %struct.drm_color_ctm** %3, align 8
  store %struct.fixed31_32* %1, %struct.fixed31_32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 12
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = srem i32 %11, 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.fixed31_32*, %struct.fixed31_32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i64 %17
  %19 = bitcast %struct.fixed31_32* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 8, i1 false)
  br label %45

20:                                               ; preds = %10
  %21 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %3, align 8
  %22 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 4
  %27 = sub nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = and i64 %31, -9223372036854775808
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, 9223372036854775807
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.fixed31_32*, %struct.fixed31_32** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %40, i64 %42
  %44 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %14
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
