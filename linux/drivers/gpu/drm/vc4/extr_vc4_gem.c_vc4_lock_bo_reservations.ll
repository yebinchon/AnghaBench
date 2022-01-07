; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_lock_bo_reservations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_lock_bo_reservations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@reservation_ww_class = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.vc4_exec_info*, %struct.ww_acquire_ctx*)* @vc4_lock_bo_reservations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_lock_bo_reservations(%struct.drm_device* %0, %struct.vc4_exec_info* %1, %struct.ww_acquire_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_exec_info*, align 8
  %7 = alloca %struct.ww_acquire_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %6, align 8
  store %struct.ww_acquire_ctx* %2, %struct.ww_acquire_ctx** %7, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %14 = call i32 @ww_acquire_init(%struct.ww_acquire_ctx* %13, i32* @reservation_ww_class)
  br label %15

15:                                               ; preds = %117, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %20 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %11, align 8
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %28 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %32 = call i32 @ww_mutex_lock_slow_interruptible(i32* %30, %struct.ww_acquire_ctx* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %37 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %162

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %15
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %124, %40
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %44 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %127

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %124

52:                                               ; preds = %47
  %53 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %54 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.drm_gem_object* %60, %struct.drm_gem_object** %11, align 8
  %61 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %62 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %66 = call i32 @ww_mutex_lock_interruptible(i32* %64, %struct.ww_acquire_ctx* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %76 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store %struct.drm_gem_object* %82, %struct.drm_gem_object** %11, align 8
  %83 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %84 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @ww_mutex_unlock(i32* %86)
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %70

91:                                               ; preds = %70
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %100 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %101, i64 %103
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store %struct.drm_gem_object* %106, %struct.drm_gem_object** %11, align 8
  %107 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %108 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 @ww_mutex_unlock(i32* %110)
  br label %112

112:                                              ; preds = %98, %94, %91
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @EDEADLK, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %8, align 4
  br label %15

119:                                              ; preds = %112
  %120 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %121 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %162

123:                                              ; preds = %52
  br label %124

124:                                              ; preds = %123, %51
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %41

127:                                              ; preds = %41
  %128 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %129 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %128)
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %158, %127
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %133 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %130
  %137 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %138 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %139, i64 %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store %struct.drm_gem_object* %144, %struct.drm_gem_object** %11, align 8
  %145 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %146 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = call i32 @dma_resv_reserve_shared(%struct.TYPE_4__* %147, i32 1)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %136
  %152 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %153 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %154 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %155 = call i32 @vc4_unlock_bo_reservations(%struct.drm_device* %152, %struct.vc4_exec_info* %153, %struct.ww_acquire_ctx* %154)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %4, align 4
  br label %162

157:                                              ; preds = %136
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %130

161:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %151, %119, %35
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @ww_acquire_init(%struct.ww_acquire_ctx*, i32*) #1

declare dso_local i32 @ww_mutex_lock_slow_interruptible(i32*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @ww_acquire_done(%struct.ww_acquire_ctx*) #1

declare dso_local i32 @ww_mutex_lock_interruptible(i32*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @ww_mutex_unlock(i32*) #1

declare dso_local i32 @dma_resv_reserve_shared(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @vc4_unlock_bo_reservations(%struct.drm_device*, %struct.vc4_exec_info*, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
