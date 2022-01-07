; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_force_into_uvd_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_force_into_uvd_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_uvd_force_into_uvd_segment(%struct.radeon_bo* %0, i64 %1) #0 {
  %3 = alloca %struct.radeon_bo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %6
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 0, %14
  %16 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %15, i32* %22, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 268435456, %23
  %25 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %24, i32* %31, align 4
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %86

40:                                               ; preds = %35
  %41 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %86

47:                                               ; preds = %40
  %48 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 1
  %52 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 0
  %56 = bitcast %struct.TYPE_3__* %51 to i8*
  %57 = bitcast %struct.TYPE_3__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 8, i1 false)
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = ashr i32 268435456, %58
  %60 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %59
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = ashr i32 268435456, %67
  %69 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %68
  store i32 %75, i32* %73, align 4
  %76 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %47, %46, %39
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
