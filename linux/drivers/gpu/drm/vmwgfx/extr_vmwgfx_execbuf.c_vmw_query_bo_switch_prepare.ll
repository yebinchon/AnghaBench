; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_query_bo_switch_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_query_bo_switch_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, %struct.vmw_buffer_object* }
%struct.vmw_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_sw_context = type { i32, i32, %struct.vmw_buffer_object*, i32, %struct.vmw_res_cache_entry* }
%struct.vmw_res_cache_entry = type { i32, i32 }

@vmw_res_context = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Query buffer too large.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_buffer_object*, %struct.vmw_sw_context*)* @vmw_query_bo_switch_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_query_bo_switch_prepare(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, %struct.vmw_sw_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_buffer_object*, align 8
  %7 = alloca %struct.vmw_sw_context*, align 8
  %8 = alloca %struct.vmw_res_cache_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %6, align 8
  store %struct.vmw_sw_context* %2, %struct.vmw_sw_context** %7, align 8
  %10 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %11 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %10, i32 0, i32 4
  %12 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %11, align 8
  %13 = load i64, i64* @vmw_res_context, align 8
  %14 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %12, i64 %13
  store %struct.vmw_res_cache_entry* %14, %struct.vmw_res_cache_entry** %8, align 8
  %15 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %8, align 8
  %16 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %8, align 8
  %23 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %26 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %28 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %29 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %28, i32 0, i32 2
  %30 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %29, align 8
  %31 = icmp ne %struct.vmw_buffer_object* %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %3
  %36 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %37 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 4
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %100

48:                                               ; preds = %35
  %49 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %50 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %49, i32 0, i32 2
  %51 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %50, align 8
  %52 = icmp ne %struct.vmw_buffer_object* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %48
  %57 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %58 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %60 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %63 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %62, i32 0, i32 2
  %64 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %63, align 8
  %65 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %66 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vmw_validation_add_bo(i32 %61, %struct.vmw_buffer_object* %64, i32 %67, i32 0)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %100

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %48
  %78 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %79 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %80 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %79, i32 0, i32 2
  store %struct.vmw_buffer_object* %78, %struct.vmw_buffer_object** %80, align 8
  %81 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %82 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %85 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %84, i32 0, i32 1
  %86 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %85, align 8
  %87 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %88 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @vmw_validation_add_bo(i32 %83, %struct.vmw_buffer_object* %86, i32 %89, i32 0)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %77
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %100

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %3
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %96, %74, %44
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @vmw_validation_add_bo(i32, %struct.vmw_buffer_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
