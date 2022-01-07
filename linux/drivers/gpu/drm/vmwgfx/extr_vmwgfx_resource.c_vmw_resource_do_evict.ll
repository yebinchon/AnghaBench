; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_do_evict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_do_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ww_acquire_ctx = type { i32 }
%struct.vmw_resource = type { i32, i32, %struct.vmw_res_func* }
%struct.vmw_res_func = type { i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)*, i32 (%struct.vmw_resource*)*, i32, i32 }
%struct.ttm_validate_buffer = type opaque
%struct.ttm_validate_buffer.0 = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ww_acquire_ctx*, %struct.vmw_resource*, i32)* @vmw_resource_do_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_resource_do_evict(%struct.ww_acquire_ctx* %0, %struct.vmw_resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ww_acquire_ctx*, align 8
  %6 = alloca %struct.vmw_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_validate_buffer.0, align 8
  %9 = alloca %struct.vmw_res_func*, align 8
  %10 = alloca i32, align 4
  store %struct.ww_acquire_ctx* %0, %struct.ww_acquire_ctx** %5, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %12 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %11, i32 0, i32 2
  %13 = load %struct.vmw_res_func*, %struct.vmw_res_func** %12, align 8
  store %struct.vmw_res_func* %13, %struct.vmw_res_func** %9, align 8
  %14 = load %struct.vmw_res_func*, %struct.vmw_res_func** %9, align 8
  %15 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = getelementptr inbounds %struct.ttm_validate_buffer.0, %struct.ttm_validate_buffer.0* %8, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.ttm_validate_buffer.0, %struct.ttm_validate_buffer.0* %8, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %5, align 8
  %24 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vmw_resource_check_buffer(%struct.ww_acquire_ctx* %23, %struct.vmw_resource* %24, i32 %25, %struct.ttm_validate_buffer.0* %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %88

34:                                               ; preds = %3
  %35 = load %struct.vmw_res_func*, %struct.vmw_res_func** %9, align 8
  %36 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %35, i32 0, i32 0
  %37 = load i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)*, i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)** %36, align 8
  %38 = icmp ne i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.vmw_res_func*, %struct.vmw_res_func** %9, align 8
  %41 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %46 = call i64 @vmw_resource_mob_attached(%struct.vmw_resource* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i1 [ true, %39 ], [ %47, %44 ]
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi i1 [ false, %34 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.vmw_res_func*, %struct.vmw_res_func** %9, align 8
  %57 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %56, i32 0, i32 0
  %58 = load i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)*, i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)** %57, align 8
  %59 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %60 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %61 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = bitcast %struct.ttm_validate_buffer.0* %8 to %struct.ttm_validate_buffer*
  %64 = call i32 %58(%struct.vmw_resource* %59, i32 %62, %struct.ttm_validate_buffer* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %84

71:                                               ; preds = %55
  %72 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %73 = call i32 @vmw_resource_mob_detach(%struct.vmw_resource* %72)
  br label %74

74:                                               ; preds = %71, %50
  %75 = load %struct.vmw_res_func*, %struct.vmw_res_func** %9, align 8
  %76 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %75, i32 0, i32 1
  %77 = load i32 (%struct.vmw_resource*)*, i32 (%struct.vmw_resource*)** %76, align 8
  %78 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %79 = call i32 %77(%struct.vmw_resource* %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %81 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.vmw_resource*, %struct.vmw_resource** %6, align 8
  %83 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %74, %70
  %85 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %5, align 8
  %86 = call i32 @vmw_resource_backoff_reservation(%struct.ww_acquire_ctx* %85, %struct.ttm_validate_buffer.0* %8)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %32
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_resource_check_buffer(%struct.ww_acquire_ctx*, %struct.vmw_resource*, i32, %struct.ttm_validate_buffer.0*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vmw_resource_mob_attached(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_resource_mob_detach(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_resource_backoff_reservation(%struct.ww_acquire_ctx*, %struct.ttm_validate_buffer.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
