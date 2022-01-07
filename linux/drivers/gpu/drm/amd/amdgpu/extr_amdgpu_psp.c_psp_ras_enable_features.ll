; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_enable_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_enable_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%union.ta_ras_cmd_input = type { i32 }
%struct.ta_ras_shared_memory = type { i32, i32, %union.ta_ras_cmd_input }

@EINVAL = common dso_local global i32 0, align 4
@TA_RAS_COMMAND__ENABLE_FEATURES = common dso_local global i32 0, align 4
@TA_RAS_COMMAND__DISABLE_FEATURES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psp_ras_enable_features(%struct.psp_context* %0, %union.ta_ras_cmd_input* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_context*, align 8
  %6 = alloca %union.ta_ras_cmd_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ta_ras_shared_memory*, align 8
  %9 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %5, align 8
  store %union.ta_ras_cmd_input* %1, %union.ta_ras_cmd_input** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %11 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %20 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ta_ras_shared_memory*
  store %struct.ta_ras_shared_memory* %23, %struct.ta_ras_shared_memory** %8, align 8
  %24 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %8, align 8
  %25 = call i32 @memset(%struct.ta_ras_shared_memory* %24, i32 0, i32 12)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @TA_RAS_COMMAND__ENABLE_FEATURES, align 4
  %30 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %8, align 8
  %31 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %36

32:                                               ; preds = %18
  %33 = load i32, i32* @TA_RAS_COMMAND__DISABLE_FEATURES, align 4
  %34 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %8, align 8
  %35 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %8, align 8
  %38 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %37, i32 0, i32 2
  %39 = load %union.ta_ras_cmd_input*, %union.ta_ras_cmd_input** %6, align 8
  %40 = bitcast %union.ta_ras_cmd_input* %38 to i8*
  %41 = bitcast %union.ta_ras_cmd_input* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %43 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %8, align 8
  %44 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @psp_ras_invoke(%struct.psp_context* %42, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %36
  %53 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %8, align 8
  %54 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %49, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.ta_ras_shared_memory*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @psp_ras_invoke(%struct.psp_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
