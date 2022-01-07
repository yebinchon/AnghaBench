; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_fermi_mthd_zbc_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_fermi_mthd_zbc_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.gf100_gr = type { i32 }
%union.anon = type { %struct.fermi_a_zbc_depth_v0 }
%struct.fermi_a_zbc_depth_v0 = type { i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i32)* @gf100_fermi_mthd_zbc_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_fermi_mthd_zbc_depth(%struct.nvkm_object* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gf100_gr*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nvkm_gr(i32 %14)
  %16 = call %struct.gf100_gr* @gf100_gr(i32 %15)
  store %struct.gf100_gr* %16, %struct.gf100_gr** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %union.anon*
  store %union.anon* %18, %union.anon** %9, align 8
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %union.anon*, %union.anon** %9, align 8
  %23 = bitcast %union.anon* %22 to %struct.fermi_a_zbc_depth_v0*
  %24 = bitcast { i64, i32 }* %11 to i8*
  %25 = bitcast %struct.fermi_a_zbc_depth_v0* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %27 = load i64, i64* %26, align 4
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nvif_unpack(i32 %21, i8** %6, i32* %7, i64 %27, i32 %29, i32 0, i32 0, i32 0)
  store i32 %30, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %3
  %33 = load %union.anon*, %union.anon** %9, align 8
  %34 = bitcast %union.anon* %33 to %struct.fermi_a_zbc_depth_v0*
  %35 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, %struct.fermi_a_zbc_depth_v0* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %60 [
    i32 128, label %37
  ]

37:                                               ; preds = %32
  %38 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %39 = load %union.anon*, %union.anon** %9, align 8
  %40 = bitcast %union.anon* %39 to %struct.fermi_a_zbc_depth_v0*
  %41 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, %struct.fermi_a_zbc_depth_v0* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %union.anon*, %union.anon** %9, align 8
  %44 = bitcast %union.anon* %43 to %struct.fermi_a_zbc_depth_v0*
  %45 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, %struct.fermi_a_zbc_depth_v0* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %union.anon*, %union.anon** %9, align 8
  %48 = bitcast %union.anon* %47 to %struct.fermi_a_zbc_depth_v0*
  %49 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, %struct.fermi_a_zbc_depth_v0* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gf100_gr_zbc_depth_get(%struct.gf100_gr* %38, i32 %42, i32 %46, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %58

55:                                               ; preds = %37
  %56 = load i32, i32* @ENOSPC, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %54
  %59 = phi i32 [ 0, %54 ], [ %57, %55 ]
  store i32 %59, i32* %4, align 4
  br label %65

60:                                               ; preds = %32
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %3
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %60, %58
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.gf100_gr* @gf100_gr(i32) #1

declare dso_local i32 @nvkm_gr(i32) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gf100_gr_zbc_depth_get(%struct.gf100_gr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
