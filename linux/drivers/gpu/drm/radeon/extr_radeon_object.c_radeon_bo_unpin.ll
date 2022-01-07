; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ttm_operation_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%p unpin not necessary\0A\00", align 1
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%p validate failed for unpin\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_unpin(%struct.radeon_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_bo*, align 8
  %4 = alloca %struct.ttm_operation_ctx, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %3, align 8
  %7 = bitcast %struct.ttm_operation_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %19 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.radeon_bo* %18)
  store i32 0, i32* %2, align 4
  br label %112

20:                                               ; preds = %1
  %21 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %112

30:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %31
  %39 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %47
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %61, i32 0, i32 1
  %63 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %63, i32 0, i32 2
  %65 = call i32 @ttm_bo_validate(%struct.TYPE_9__* %62, %struct.TYPE_10__* %64, %struct.ttm_operation_ctx* %4)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @likely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %60
  %72 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TTM_PL_VRAM, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %71
  %80 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %81 = call i64 @radeon_bo_size(%struct.radeon_bo* %80)
  %82 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %87, %81
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  br label %101

90:                                               ; preds = %71
  %91 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %92 = call i64 @radeon_bo_size(%struct.radeon_bo* %91)
  %93 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %92
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  br label %101

101:                                              ; preds = %90, %79
  br label %110

102:                                              ; preds = %60
  %103 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.radeon_bo* %108)
  br label %110

110:                                              ; preds = %102, %101
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %29, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_warn(i32, i8*, %struct.radeon_bo*) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @radeon_bo_size(%struct.radeon_bo*) #2

declare dso_local i32 @dev_err(i32, i8*, %struct.radeon_bo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
