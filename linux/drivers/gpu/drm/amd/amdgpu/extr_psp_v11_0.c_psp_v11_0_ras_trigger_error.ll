; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_ras_trigger_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_ras_trigger_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ta_ras_trigger_error_input = type { i32 }
%struct.ta_ras_shared_memory = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ta_ras_trigger_error_input }

@EINVAL = common dso_local global i32 0, align 4
@TA_RAS_COMMAND__TRIGGER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, %struct.ta_ras_trigger_error_input*)* @psp_v11_0_ras_trigger_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v11_0_ras_trigger_error(%struct.psp_context* %0, %struct.ta_ras_trigger_error_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psp_context*, align 8
  %5 = alloca %struct.ta_ras_trigger_error_input*, align 8
  %6 = alloca %struct.ta_ras_shared_memory*, align 8
  %7 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %4, align 8
  store %struct.ta_ras_trigger_error_input* %1, %struct.ta_ras_trigger_error_input** %5, align 8
  %8 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %9 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %18 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ta_ras_shared_memory*
  store %struct.ta_ras_shared_memory* %21, %struct.ta_ras_shared_memory** %6, align 8
  %22 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %6, align 8
  %23 = call i32 @memset(%struct.ta_ras_shared_memory* %22, i32 0, i32 12)
  %24 = load i32, i32* @TA_RAS_COMMAND__TRIGGER_ERROR, align 4
  %25 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %6, align 8
  %26 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %6, align 8
  %28 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.ta_ras_trigger_error_input*, %struct.ta_ras_trigger_error_input** %5, align 8
  %31 = bitcast %struct.ta_ras_trigger_error_input* %29 to i8*
  %32 = bitcast %struct.ta_ras_trigger_error_input* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %34 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %6, align 8
  %35 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @psp_ras_invoke(%struct.psp_context* %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %16
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %16
  %44 = load %struct.ta_ras_shared_memory*, %struct.ta_ras_shared_memory** %6, align 8
  %45 = getelementptr inbounds %struct.ta_ras_shared_memory, %struct.ta_ras_shared_memory* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
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
