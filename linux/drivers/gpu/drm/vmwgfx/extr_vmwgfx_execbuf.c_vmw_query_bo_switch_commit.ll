; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_query_bo_switch_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_query_bo_switch_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i32, i64, i32, i32 }
%struct.vmw_sw_context = type { i64, %struct.TYPE_2__*, i64, %struct.vmw_res_cache_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_res_cache_entry = type { %struct.vmw_resource*, i32 }
%struct.vmw_resource = type { i32 }

@vmw_res_context = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Out of fifo space for dummy query.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_private*, %struct.vmw_sw_context*)* @vmw_query_bo_switch_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_query_bo_switch_commit(%struct.vmw_private* %0, %struct.vmw_sw_context* %1) #0 {
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_sw_context*, align 8
  %5 = alloca %struct.vmw_res_cache_entry*, align 8
  %6 = alloca %struct.vmw_resource*, align 8
  %7 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %4, align 8
  %8 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %9 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %14 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %13, i32 0, i32 3
  %15 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %14, align 8
  %16 = load i64, i64* @vmw_res_context, align 8
  %17 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %15, i64 %16
  store %struct.vmw_res_cache_entry* %17, %struct.vmw_res_cache_entry** %5, align 8
  %18 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %5, align 8
  %19 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %5, align 8
  %26 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %25, i32 0, i32 0
  %27 = load %struct.vmw_resource*, %struct.vmw_resource** %26, align 8
  store %struct.vmw_resource* %27, %struct.vmw_resource** %6, align 8
  %28 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %29 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %30 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vmw_fifo_emit_dummy_query(%struct.vmw_private* %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %12
  %39 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %12
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %43 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %46 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %41
  %50 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %56 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @vmw_bo_pin_reserved(i64 %57, i32 0)
  %59 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %60 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %59, i32 0, i32 0
  %61 = call i32 @vmw_bo_unreference(i64* %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %64 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %105, label %67

67:                                               ; preds = %62
  %68 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %69 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @vmw_bo_pin_reserved(i64 %70, i32 1)
  %72 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %73 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %67
  %77 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %78 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @vmw_bo_pin_reserved(i64 %79, i32 1)
  %81 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %82 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %67
  %84 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %85 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = icmp eq %struct.TYPE_2__* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @BUG_ON(i32 %88)
  %90 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %91 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %96 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %98 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %97, i32 0, i32 3
  store i32 1, i32* %98, align 8
  %99 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %100 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @vmw_bo_reference(i64 %101)
  %103 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %104 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %83, %62
  br label %106

106:                                              ; preds = %105, %41
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_fifo_emit_dummy_query(%struct.vmw_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @vmw_bo_pin_reserved(i64, i32) #1

declare dso_local i32 @vmw_bo_unreference(i64*) #1

declare dso_local i64 @vmw_bo_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
