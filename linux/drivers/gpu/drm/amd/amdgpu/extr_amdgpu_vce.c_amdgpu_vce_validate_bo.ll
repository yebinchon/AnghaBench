; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_validate_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_validate_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.amdgpu_bo_va_mapping = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't find BO for addr 0x%010Lx %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, i32, i32, i32, i32, i64)* @amdgpu_vce_validate_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_cs_parser*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ttm_operation_ctx, align 4
  %16 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.amdgpu_bo*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i64, i64* %13, align 8
  %25 = trunc i64 %24 to i32
  %26 = mul nsw i32 %23, %25
  store i32 %26, i32* %14, align 4
  %27 = bitcast %struct.ttm_operation_ctx* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 8, i1 false)
  %28 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %28, i32 %29, i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %33, i32 %34, i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 32
  %39 = or i32 %32, %38
  store i32 %39, i32* %21, align 4
  %40 = load i64, i64* %13, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %6
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %21, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @PAGE_ALIGN(i32 %46)
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = zext i32 %50 to i64
  %52 = lshr i64 4294967296, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %19, align 4
  br label %63

54:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @PAGE_ALIGN(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = sub i64 4294967296, %57
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = zext i32 %59 to i64
  %61 = lshr i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %54, %42
  %64 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @amdgpu_cs_find_mapping(%struct.amdgpu_cs_parser* %64, i32 %65, %struct.amdgpu_bo** %20, %struct.amdgpu_bo_va_mapping** %16)
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73, i64 %74)
  %76 = load i32, i32* %22, align 4
  store i32 %76, i32* %7, align 4
  br label %143

77:                                               ; preds = %63
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %134, %77
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %81 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %79, %83
  br i1 %84, label %85, label %137

85:                                               ; preds = %78
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %87 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @max(i32 %93, i32 %94)
  %96 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %97 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %95, i32* %102, align 4
  %103 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %104 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %85
  %113 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %114 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @min(i32 %120, i32 %121)
  br label %125

123:                                              ; preds = %85
  %124 = load i32, i32* %19, align 4
  br label %125

125:                                              ; preds = %123, %112
  %126 = phi i32 [ %122, %112 ], [ %124, %123 ]
  %127 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %128 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %127, i32 0, i32 2
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 4
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %17, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %78

137:                                              ; preds = %78
  %138 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %139 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %138, i32 0, i32 1
  %140 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %20, align 8
  %141 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %140, i32 0, i32 0
  %142 = call i32 @ttm_bo_validate(i32* %139, %struct.TYPE_4__* %141, %struct.ttm_operation_ctx* %15)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %137, %69
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser*, i32, i32) #2

declare dso_local i32 @PAGE_ALIGN(i32) #2

declare dso_local i32 @amdgpu_cs_find_mapping(%struct.amdgpu_cs_parser*, i32, %struct.amdgpu_bo**, %struct.amdgpu_bo_va_mapping**) #2

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, i64) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @ttm_bo_validate(i32*, %struct.TYPE_4__*, %struct.ttm_operation_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
