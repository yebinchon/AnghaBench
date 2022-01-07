; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_pt_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_pt_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, %struct.ttm_operation_ctx*)* }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_mob = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@vmw_sys_ne_placement = common dso_local global i32 0, align 4
@vmw_bo_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_mob*)* @vmw_mob_pt_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_mob_pt_populate(%struct.vmw_private* %0, %struct.vmw_mob* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_mob*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_operation_ctx, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store %struct.vmw_mob* %1, %struct.vmw_mob** %5, align 8
  %8 = bitcast %struct.ttm_operation_ctx* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %10 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %16 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %15, i32 0, i32 0
  %17 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %18 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @ttm_bo_type_device, align 4
  %23 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %24 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %23, i32 0, i32 1
  %25 = call i32 @ttm_bo_create(i32* %16, i32 %21, i32 %22, i32* @vmw_sys_ne_placement, i32 0, i32 0, %struct.TYPE_7__** %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %2
  %34 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %35 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @ttm_bo_reserve(%struct.TYPE_7__* %36, i32 0, i32 1, i32* null)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i32 (i32, %struct.ttm_operation_ctx*)*, i32 (i32, %struct.ttm_operation_ctx*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmw_bo_driver, i32 0, i32 0), align 8
  %43 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %44 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %42(i32 %47, %struct.ttm_operation_ctx* %7)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %71

55:                                               ; preds = %33
  %56 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %57 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 @vmw_bo_map_dma(%struct.TYPE_7__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %71

66:                                               ; preds = %55
  %67 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %68 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = call i32 @ttm_bo_unreserve(%struct.TYPE_7__* %69)
  store i32 0, i32* %3, align 4
  br label %83

71:                                               ; preds = %65, %54
  %72 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %73 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = call i32 @ttm_bo_unreserve(%struct.TYPE_7__* %74)
  %76 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %77 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i32 @ttm_bo_put(%struct.TYPE_7__* %78)
  %80 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %81 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %80, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %81, align 8
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %71, %66, %31
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ttm_bo_create(i32*, i32, i32, i32*, i32, i32, %struct.TYPE_7__**) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @ttm_bo_reserve(%struct.TYPE_7__*, i32, i32, i32*) #2

declare dso_local i32 @vmw_bo_map_dma(%struct.TYPE_7__*) #2

declare dso_local i32 @ttm_bo_unreserve(%struct.TYPE_7__*) #2

declare dso_local i32 @ttm_bo_put(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
