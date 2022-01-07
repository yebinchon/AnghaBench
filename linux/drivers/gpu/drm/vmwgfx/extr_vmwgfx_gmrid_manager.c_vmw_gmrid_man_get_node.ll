; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_gmrid_manager.c_vmw_gmrid_man_get_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_gmrid_manager.c_vmw_gmrid_man_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i64 }
%struct.ttm_buffer_object = type { i64 }
%struct.ttm_place = type { i32 }
%struct.ttm_mem_reg = type { i32, i64, %struct.vmwgfx_gmrid_man* }
%struct.vmwgfx_gmrid_man = type { i64, i64, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* @vmw_gmrid_man_get_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_gmrid_man_get_node(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_place* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.vmwgfx_gmrid_man*, align 8
  %11 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %12 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.vmwgfx_gmrid_man*
  store %struct.vmwgfx_gmrid_man* %15, %struct.vmwgfx_gmrid_man** %10, align 8
  %16 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %16, i32 0, i32 2
  store %struct.vmwgfx_gmrid_man* null, %struct.vmwgfx_gmrid_man** %17, align 8
  %18 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %19 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %18, i32 0, i32 2
  %20 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %21 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @ida_alloc_max(i32* %19, i64 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  store i32 %37, i32* %5, align 4
  br label %96

38:                                               ; preds = %4
  %39 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %40 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %39, i32 0, i32 3
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %43 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %38
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %48 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %51 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %55 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %58 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %81

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %68 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %69 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %68, i32 0, i32 2
  store %struct.vmwgfx_gmrid_man* %67, %struct.vmwgfx_gmrid_man** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %72 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %74 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %77 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %79 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %78, i32 0, i32 3
  %80 = call i32 @spin_unlock(i32* %79)
  store i32 0, i32* %5, align 4
  br label %96

81:                                               ; preds = %64
  %82 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %83 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %86 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %90 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %89, i32 0, i32 3
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.vmwgfx_gmrid_man*, %struct.vmwgfx_gmrid_man** %10, align 8
  %93 = getelementptr inbounds %struct.vmwgfx_gmrid_man, %struct.vmwgfx_gmrid_man* %92, i32 0, i32 2
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ida_free(i32* %93, i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %81, %66, %36
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @ida_alloc_max(i32*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
