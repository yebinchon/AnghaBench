; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_lock_bos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_lock_bos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@reservation_ww_class = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_bo**, i32, %struct.ww_acquire_ctx*)* @lima_gem_lock_bos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_gem_lock_bos(%struct.lima_bo** %0, i32 %1, %struct.ww_acquire_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_bo**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ww_acquire_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lima_bo** %0, %struct.lima_bo*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ww_acquire_ctx* %2, %struct.ww_acquire_ctx** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  %12 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %13 = call i32 @ww_acquire_init(%struct.ww_acquire_ctx* %12, i32* @reservation_ww_class)
  br label %14

14:                                               ; preds = %100, %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %11, align 4
  br label %41

24:                                               ; preds = %19
  %25 = load %struct.lima_bo**, %struct.lima_bo*** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %25, i64 %27
  %29 = load %struct.lima_bo*, %struct.lima_bo** %28, align 8
  %30 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %35 = call i32 @ww_mutex_lock_interruptible(i32* %33, %struct.ww_acquire_ctx* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %10, align 4
  br label %47

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %46 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %45)
  store i32 0, i32* %4, align 4
  br label %107

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %64, %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.lima_bo**, %struct.lima_bo*** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %54, i64 %56
  %58 = load %struct.lima_bo*, %struct.lima_bo** %57, align 8
  %59 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @ww_mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* %11, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.lima_bo**, %struct.lima_bo*** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %71, i64 %73
  %75 = load %struct.lima_bo*, %struct.lima_bo** %74, align 8
  %76 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = call i32 @ww_mutex_unlock(i32* %79)
  br label %81

81:                                               ; preds = %70, %67
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @EDEADLK, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.lima_bo**, %struct.lima_bo*** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %87, i64 %89
  %91 = load %struct.lima_bo*, %struct.lima_bo** %90, align 8
  %92 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %97 = call i32 @ww_mutex_lock_slow_interruptible(i32* %95, %struct.ww_acquire_ctx* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %11, align 4
  br label %14

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %81
  %104 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %105 = call i32 @ww_acquire_fini(%struct.ww_acquire_ctx* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %44
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @ww_acquire_init(%struct.ww_acquire_ctx*, i32*) #1

declare dso_local i32 @ww_mutex_lock_interruptible(i32*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @ww_acquire_done(%struct.ww_acquire_ctx*) #1

declare dso_local i32 @ww_mutex_unlock(i32*) #1

declare dso_local i32 @ww_mutex_lock_slow_interruptible(i32*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @ww_acquire_fini(%struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
