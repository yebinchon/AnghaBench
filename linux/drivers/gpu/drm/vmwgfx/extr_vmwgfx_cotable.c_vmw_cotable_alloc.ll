; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.vmw_private = type { i32 }
%struct.vmw_resource = type { i64, i32, i32 }
%struct.vmw_cotable = type { i32, i32, i64, %struct.vmw_resource, %struct.vmw_resource*, i32 }

@__const.vmw_cotable_alloc.ttm_opt_ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@cotable_acc_size = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_cotable_free = common dso_local global i32 0, align 4
@vmw_cotable_func = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@co_info = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@vmw_hw_cotable_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmw_resource* @vmw_cotable_alloc(%struct.vmw_private* %0, %struct.vmw_resource* %1, i64 %2) #0 {
  %4 = alloca %struct.vmw_resource*, align 8
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmw_cotable*, align 8
  %9 = alloca %struct.ttm_operation_ctx, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = bitcast %struct.ttm_operation_ctx* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_cotable_alloc.ttm_opt_ctx to i8*), i64 8, i1 false)
  %13 = load i64, i64* @cotable_acc_size, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i64 @ttm_round_pot(i32 48)
  store i64 %19, i64* @cotable_acc_size, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %22 = call i32 @vmw_mem_glob(%struct.vmw_private* %21)
  %23 = load i64, i64* @cotable_acc_size, align 8
  %24 = call i32 @ttm_mem_global_alloc(i32 %22, i64 %23, %struct.ttm_operation_ctx* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.vmw_resource* @ERR_PTR(i32 %29)
  store %struct.vmw_resource* %30, %struct.vmw_resource** %4, align 8
  br label %138

31:                                               ; preds = %20
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.vmw_cotable* @kzalloc(i32 48, i32 %32)
  store %struct.vmw_cotable* %33, %struct.vmw_cotable** %8, align 8
  %34 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %35 = icmp ne %struct.vmw_cotable* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %131

43:                                               ; preds = %31
  %44 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %45 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %46 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %45, i32 0, i32 3
  %47 = load i32, i32* @vmw_cotable_free, align 4
  %48 = call i32 @vmw_resource_init(%struct.vmw_private* %44, %struct.vmw_resource* %46, i32 1, i32 %47, i32* @vmw_cotable_func)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %128

55:                                               ; preds = %43
  %56 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %57 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %56, i32 0, i32 5
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %61 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %65 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @co_info, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %67, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @co_info, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %75, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %55
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @co_info, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @co_info, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 %87, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %97 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 8
  %99 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %100 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @PAGE_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %109 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %82, %55
  %112 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %113 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %115 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %114, i32 0, i32 1
  store i32 -1, i32* %115, align 4
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %118 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %120 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %121 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %120, i32 0, i32 4
  store %struct.vmw_resource* %119, %struct.vmw_resource** %121, align 8
  %122 = load i32, i32* @vmw_hw_cotable_destroy, align 4
  %123 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %124 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %127 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %126, i32 0, i32 3
  store %struct.vmw_resource* %127, %struct.vmw_resource** %4, align 8
  br label %138

128:                                              ; preds = %54
  %129 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %130 = call i32 @kfree(%struct.vmw_cotable* %129)
  br label %131

131:                                              ; preds = %128, %40
  %132 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %133 = call i32 @vmw_mem_glob(%struct.vmw_private* %132)
  %134 = load i64, i64* @cotable_acc_size, align 8
  %135 = call i32 @ttm_mem_global_free(i32 %133, i64 %134)
  %136 = load i32, i32* %10, align 4
  %137 = call %struct.vmw_resource* @ERR_PTR(i32 %136)
  store %struct.vmw_resource* %137, %struct.vmw_resource** %4, align 8
  br label %138

138:                                              ; preds = %131, %111, %28
  %139 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  ret %struct.vmw_resource* %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @ttm_round_pot(i32) #2

declare dso_local i32 @ttm_mem_global_alloc(i32, i64, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #2

declare dso_local %struct.vmw_resource* @ERR_PTR(i32) #2

declare dso_local %struct.vmw_cotable* @kzalloc(i32, i32) #2

declare dso_local i32 @vmw_resource_init(%struct.vmw_private*, %struct.vmw_resource*, i32, i32, i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @kfree(%struct.vmw_cotable*) #2

declare dso_local i32 @ttm_mem_global_free(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
