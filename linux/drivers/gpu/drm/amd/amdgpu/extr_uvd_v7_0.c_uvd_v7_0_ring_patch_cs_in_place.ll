; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_patch_cs_in_place.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_patch_cs_in_place.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64*** }
%struct.TYPE_7__ = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_ring = type { i32 }

@UVD_HWIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, i64)* @uvd_v7_0_ring_patch_cs_in_place to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_ring_patch_cs_in_place(%struct.amdgpu_cs_parser* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %16)
  store %struct.amdgpu_ring* %17, %struct.amdgpu_ring** %6, align 8
  %18 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %22, i64 %23
  store %struct.amdgpu_ib* %24, %struct.amdgpu_ib** %7, align 8
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

30:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %31
  %38 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %38, i64 %39, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %43 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64***, i64**** %45, align 8
  %47 = load i64, i64* @UVD_HWIP, align 8
  %48 = getelementptr inbounds i64**, i64*** %46, i64 %47
  %49 = load i64**, i64*** %48, align 8
  %50 = getelementptr inbounds i64*, i64** %49, i64 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64***, i64**** %59, align 8
  %61 = load i64, i64* @UVD_HWIP, align 8
  %62 = getelementptr inbounds i64**, i64*** %60, i64 %61
  %63 = load i64**, i64*** %62, align 8
  %64 = getelementptr inbounds i64*, i64** %63, i64 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @amdgpu_set_ib_value(%struct.amdgpu_cs_parser* %70, i64 %71, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %37
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 2
  store i32 %77, i32* %8, align 4
  br label %31

78:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.amdgpu_ring* @to_amdgpu_ring(i32) #1

declare dso_local i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser*, i64, i32) #1

declare dso_local i32 @amdgpu_set_ib_value(%struct.amdgpu_cs_parser*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
