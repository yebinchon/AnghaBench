; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_fermi_mthd_zbc_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_fermi_mthd_zbc_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.gf100_gr = type { i32 }
%union.anon = type { %struct.fermi_a_zbc_color_v0 }
%struct.fermi_a_zbc_color_v0 = type { i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i32)* @gf100_fermi_mthd_zbc_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_fermi_mthd_zbc_color(%struct.nvkm_object* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gf100_gr*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nvkm_gr(i32 %13)
  %15 = call %struct.gf100_gr* @gf100_gr(i32 %14)
  store %struct.gf100_gr* %15, %struct.gf100_gr** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %union.anon*
  store %union.anon* %17, %union.anon** %9, align 8
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %union.anon*, %union.anon** %9, align 8
  %22 = bitcast %union.anon* %21 to %struct.fermi_a_zbc_color_v0*
  %23 = bitcast %struct.fermi_a_zbc_color_v0* %22 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 4
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 4
  %28 = call i32 @nvif_unpack(i32 %20, i8** %6, i32* %7, i64 %25, i64 %27, i32 0, i32 0, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %3
  %31 = load %union.anon*, %union.anon** %9, align 8
  %32 = bitcast %union.anon* %31 to %struct.fermi_a_zbc_color_v0*
  %33 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, %struct.fermi_a_zbc_color_v0* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %58 [
    i32 128, label %35
    i32 129, label %35
    i32 133, label %35
    i32 135, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %35
    i32 134, label %35
    i32 142, label %35
    i32 141, label %35
    i32 146, label %35
    i32 138, label %35
    i32 144, label %35
    i32 143, label %35
    i32 140, label %35
    i32 139, label %35
    i32 137, label %35
    i32 145, label %35
    i32 136, label %35
  ]

35:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30
  %36 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %37 = load %union.anon*, %union.anon** %9, align 8
  %38 = bitcast %union.anon* %37 to %struct.fermi_a_zbc_color_v0*
  %39 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, %struct.fermi_a_zbc_color_v0* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %union.anon*, %union.anon** %9, align 8
  %42 = bitcast %union.anon* %41 to %struct.fermi_a_zbc_color_v0*
  %43 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, %struct.fermi_a_zbc_color_v0* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %union.anon*, %union.anon** %9, align 8
  %46 = bitcast %union.anon* %45 to %struct.fermi_a_zbc_color_v0*
  %47 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, %struct.fermi_a_zbc_color_v0* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gf100_gr_zbc_color_get(%struct.gf100_gr* %36, i32 %40, i32 %44, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  %54 = load %union.anon*, %union.anon** %9, align 8
  %55 = bitcast %union.anon* %54 to %struct.fermi_a_zbc_color_v0*
  %56 = getelementptr inbounds %struct.fermi_a_zbc_color_v0, %struct.fermi_a_zbc_color_v0* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %64

57:                                               ; preds = %35
  br label %61

58:                                               ; preds = %30
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %58, %52
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.gf100_gr* @gf100_gr(i32) #1

declare dso_local i32 @nvkm_gr(i32) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @gf100_gr_zbc_color_get(%struct.gf100_gr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
