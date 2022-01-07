; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.dma_resv*, %struct.dma_resv }
%struct.dma_resv = type { i32 }
%struct.TYPE_3__ = type { %struct.ttm_bo_global* }
%struct.ttm_bo_global = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ttm_bo_ref_bug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32)* @ttm_bo_cleanup_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_cleanup_refs(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_bo_global*, align 8
  %11 = alloca %struct.dma_resv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %17, align 8
  store %struct.ttm_bo_global* %18, %struct.ttm_bo_global** %10, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 2
  %21 = call i32 @list_empty(i32* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %26 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.dma_resv*, %struct.dma_resv** %27, align 8
  store %struct.dma_resv* %28, %struct.dma_resv** %11, align 8
  br label %33

29:                                               ; preds = %4
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store %struct.dma_resv* %32, %struct.dma_resv** %11, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.dma_resv*, %struct.dma_resv** %11, align 8
  %35 = call i64 @dma_resv_test_signaled_rcu(%struct.dma_resv* %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %95, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %52 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.dma_resv*, %struct.dma_resv** %53, align 8
  %55 = call i32 @dma_resv_unlock(%struct.dma_resv* %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %58 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.dma_resv*, %struct.dma_resv** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @HZ, align 4
  %63 = mul nsw i32 30, %62
  %64 = call i64 @dma_resv_wait_timeout_rcu(%struct.dma_resv* %60, i32 1, i32 %61, i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i64, i64* %13, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %142

70:                                               ; preds = %56
  %71 = load i64, i64* %13, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %142

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %79 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %78, i32 0, i32 0
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %85 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.dma_resv*, %struct.dma_resv** %86, align 8
  %88 = call i32 @dma_resv_trylock(%struct.dma_resv* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %92 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  store i32 0, i32* %5, align 4
  br label %142

94:                                               ; preds = %83, %77
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %44, %41
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %100 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %99, i32 0, i32 2
  %101 = call i32 @list_empty(i32* %100)
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %98, %95
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %109 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.dma_resv*, %struct.dma_resv** %110, align 8
  %112 = call i32 @dma_resv_unlock(%struct.dma_resv* %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %115 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %5, align 4
  br label %142

118:                                              ; preds = %98
  %119 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %120 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %119)
  %121 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %122 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %121, i32 0, i32 2
  %123 = call i32 @list_del_init(i32* %122)
  %124 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %125 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %124, i32 0, i32 1
  %126 = load i32, i32* @ttm_bo_ref_bug, align 4
  %127 = call i32 @kref_put(i32* %125, i32 %126)
  %128 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %129 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %132 = call i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object* %131)
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %118
  %136 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %137 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.dma_resv*, %struct.dma_resv** %138, align 8
  %140 = call i32 @dma_resv_unlock(%struct.dma_resv* %139)
  br label %141

141:                                              ; preds = %135, %118
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %113, %90, %73, %67
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @dma_resv_test_signaled_rcu(%struct.dma_resv*, i32) #1

declare dso_local i32 @dma_resv_unlock(%struct.dma_resv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(%struct.dma_resv*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dma_resv_trylock(%struct.dma_resv*) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
