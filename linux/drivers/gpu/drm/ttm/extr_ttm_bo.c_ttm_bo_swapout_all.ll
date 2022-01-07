; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_swapout_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_swapout_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_swapout_all(%struct.ttm_bo_device* %0) #0 {
  %2 = alloca %struct.ttm_bo_device*, align 8
  %3 = alloca %struct.ttm_operation_ctx, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %2, align 8
  %4 = bitcast %struct.ttm_operation_ctx* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ttm_bo_swapout(i32 %8, %struct.ttm_operation_ctx* %3)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %5

12:                                               ; preds = %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ttm_bo_swapout(i32, %struct.ttm_operation_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
