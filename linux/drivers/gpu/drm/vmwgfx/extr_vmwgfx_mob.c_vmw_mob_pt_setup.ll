; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_pt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_pt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_mob = type { i32, i32, %struct.ttm_buffer_object* }
%struct.ttm_buffer_object = type { i32 }
%struct.vmw_piter = type { i32 }
%struct.vmw_sg_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_mob*, i32, i64)* @vmw_mob_pt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_mob_pt_setup(%struct.vmw_mob* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.vmw_piter, align 4
  %5 = alloca %struct.vmw_mob*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ttm_buffer_object*, align 8
  %9 = alloca %struct.vmw_piter, align 4
  %10 = alloca %struct.vmw_piter, align 4
  %11 = alloca %struct.vmw_sg_table*, align 8
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %4, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  store %struct.vmw_mob* %0, %struct.vmw_mob** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %15 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %14, i32 0, i32 2
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %15, align 8
  store %struct.ttm_buffer_object* %16, %struct.ttm_buffer_object** %8, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %18 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %17, i32 0, i32 1, i32* null)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %24 = call %struct.vmw_sg_table* @vmw_bo_sg_table(%struct.ttm_buffer_object* %23)
  store %struct.vmw_sg_table* %24, %struct.vmw_sg_table** %11, align 8
  %25 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %11, align 8
  %26 = call i32 @vmw_piter_start(%struct.vmw_piter* %10, %struct.vmw_sg_table* %25, i32 0)
  %27 = call i32 @vmw_piter_next(%struct.vmw_piter* %10)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %33 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %40, %3
  %35 = load i64, i64* %6, align 8
  %36 = icmp ugt i64 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %42 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %46 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 2
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = bitcast %struct.vmw_piter* %9 to i8*
  %52 = bitcast %struct.vmw_piter* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @vmw_mob_build_pt(%struct.vmw_piter* %4, i64 %53, %struct.vmw_piter* %10)
  store i64 %54, i64* %7, align 8
  %55 = bitcast %struct.vmw_piter* %4 to i8*
  %56 = bitcast %struct.vmw_piter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %6, align 8
  br label %34

58:                                               ; preds = %34
  %59 = call i32 @vmw_piter_dma_addr(%struct.vmw_piter* %9)
  %60 = load %struct.vmw_mob*, %struct.vmw_mob** %5, align 8
  %61 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %63 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %62)
  ret void
}

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vmw_sg_table* @vmw_bo_sg_table(%struct.ttm_buffer_object*) #1

declare dso_local i32 @vmw_piter_start(%struct.vmw_piter*, %struct.vmw_sg_table*, i32) #1

declare dso_local i32 @vmw_piter_next(%struct.vmw_piter*) #1

declare dso_local i64 @likely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vmw_mob_build_pt(%struct.vmw_piter*, i64, %struct.vmw_piter*) #1

declare dso_local i32 @vmw_piter_dma_addr(%struct.vmw_piter*) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
