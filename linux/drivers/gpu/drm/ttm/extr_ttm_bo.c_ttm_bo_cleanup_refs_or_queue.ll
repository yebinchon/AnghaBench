; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_or_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_or_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.ttm_bo_device* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_bo_device = type { i32, i32, %struct.ttm_bo_global* }
%struct.ttm_bo_global = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @ttm_bo_cleanup_refs_or_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_cleanup_refs_or_queue(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca %struct.ttm_bo_global*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 4
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  store %struct.ttm_bo_device* %8, %struct.ttm_bo_device** %3, align 8
  %9 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %10 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %9, i32 0, i32 2
  %11 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  store %struct.ttm_bo_global* %11, %struct.ttm_bo_global** %4, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %13 = call i32 @ttm_bo_individualize_resv(%struct.ttm_buffer_object* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 30, %21
  %23 = call i32 @dma_resv_wait_timeout_rcu(i32* %20, i32 1, i32 0, i32 %22)
  %24 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  br label %119

27:                                               ; preds = %1
  %28 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %4, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %32 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @dma_resv_trylock(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %104, label %45

45:                                               ; preds = %41
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i64 @dma_resv_test_signaled_rcu(i32* %48, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %53 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %52)
  %54 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %4, align 8
  %55 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %62 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = icmp ne i32* %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %67 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @dma_resv_unlock(i32* %68)
  br label %70

70:                                               ; preds = %65, %51
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %72 = call i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object* %71)
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %74 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @dma_resv_unlock(i32* %76)
  br label %143

78:                                               ; preds = %45
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %80 = call i32 @ttm_bo_flush_all_fences(%struct.ttm_buffer_object* %79)
  %81 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %82 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %92 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %90
  store i32 %95, i32* %93, align 8
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %97 = call i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object* %96)
  br label %98

98:                                               ; preds = %88, %78
  %99 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %100 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @dma_resv_unlock(i32* %102)
  br label %104

104:                                              ; preds = %98, %41
  %105 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %106 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %110 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = icmp ne i32* %108, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %115 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @dma_resv_unlock(i32* %116)
  br label %118

118:                                              ; preds = %113, %104
  br label %119

119:                                              ; preds = %118, %16
  %120 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %121 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %120, i32 0, i32 1
  %122 = call i32 @kref_get(i32* %121)
  %123 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %124 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %123, i32 0, i32 0
  %125 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %126 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %125, i32 0, i32 1
  %127 = call i32 @list_add_tail(i32* %124, i32* %126)
  %128 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %4, align 8
  %129 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %132 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %131, i32 0, i32 0
  %133 = load i32, i32* @HZ, align 4
  %134 = sdiv i32 %133, 100
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %119
  br label %140

137:                                              ; preds = %119
  %138 = load i32, i32* @HZ, align 4
  %139 = sdiv i32 %138, 100
  br label %140

140:                                              ; preds = %137, %136
  %141 = phi i32 [ 1, %136 ], [ %139, %137 ]
  %142 = call i32 @schedule_delayed_work(i32* %132, i32 %141)
  br label %143

143:                                              ; preds = %140, %70
  ret void
}

declare dso_local i32 @ttm_bo_individualize_resv(%struct.ttm_buffer_object*) #1

declare dso_local i32 @dma_resv_wait_timeout_rcu(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @dma_resv_trylock(i32*) #1

declare dso_local i64 @dma_resv_test_signaled_rcu(i32*, i32) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dma_resv_unlock(i32*) #1

declare dso_local i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_flush_all_fences(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
