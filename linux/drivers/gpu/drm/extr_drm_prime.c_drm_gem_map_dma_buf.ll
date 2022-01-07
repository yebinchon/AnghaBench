; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32 }
%struct.dma_buf_attachment = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sg_table* (%struct.drm_gem_object*)* }
%struct.TYPE_8__ = type { %struct.sg_table* (%struct.drm_gem_object*)* }

@DMA_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @drm_gem_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %9 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  store %struct.drm_gem_object* %12, %struct.drm_gem_object** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DMA_NONE, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sg_table* @ERR_PTR(i32 %21)
  store %struct.sg_table* %22, %struct.sg_table** %3, align 8
  br label %70

23:                                               ; preds = %2
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %30 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.sg_table* (%struct.drm_gem_object*)*, %struct.sg_table* (%struct.drm_gem_object*)** %32, align 8
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %35 = call %struct.sg_table* %33(%struct.drm_gem_object* %34)
  store %struct.sg_table* %35, %struct.sg_table** %7, align 8
  br label %46

36:                                               ; preds = %23
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %38 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.sg_table* (%struct.drm_gem_object*)*, %struct.sg_table* (%struct.drm_gem_object*)** %42, align 8
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %45 = call %struct.sg_table* %43(%struct.drm_gem_object* %44)
  store %struct.sg_table* %45, %struct.sg_table** %7, align 8
  br label %46

46:                                               ; preds = %36, %28
  %47 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %48 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %51 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %54 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %58 = call i32 @dma_map_sg_attrs(i32 %49, i32 %52, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %46
  %61 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %62 = call i32 @sg_free_table(%struct.sg_table* %61)
  %63 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %64 = call i32 @kfree(%struct.sg_table* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.sg_table* @ERR_PTR(i32 %66)
  store %struct.sg_table* %67, %struct.sg_table** %7, align 8
  br label %68

68:                                               ; preds = %60, %46
  %69 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  store %struct.sg_table* %69, %struct.sg_table** %3, align 8
  br label %70

70:                                               ; preds = %68, %19
  %71 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %71
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @dma_map_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
