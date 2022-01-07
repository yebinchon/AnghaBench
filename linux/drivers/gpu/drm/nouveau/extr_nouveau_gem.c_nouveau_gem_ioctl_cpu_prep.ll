; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_cpu_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_cpu_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_nouveau_gem_cpu_prep = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.nouveau_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NOUVEAU_GEM_CPU_PREP_NOWAIT = common dso_local global i32 0, align 4
@NOUVEAU_GEM_CPU_PREP_WRITE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_ioctl_cpu_prep(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_nouveau_gem_cpu_prep*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_nouveau_gem_cpu_prep*
  store %struct.drm_nouveau_gem_cpu_prep* %16, %struct.drm_nouveau_gem_cpu_prep** %8, align 8
  %17 = load %struct.drm_nouveau_gem_cpu_prep*, %struct.drm_nouveau_gem_cpu_prep** %8, align 8
  %18 = getelementptr inbounds %struct.drm_nouveau_gem_cpu_prep, %struct.drm_nouveau_gem_cpu_prep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NOUVEAU_GEM_CPU_PREP_NOWAIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.drm_nouveau_gem_cpu_prep*, %struct.drm_nouveau_gem_cpu_prep** %8, align 8
  %27 = getelementptr inbounds %struct.drm_nouveau_gem_cpu_prep, %struct.drm_nouveau_gem_cpu_prep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NOUVEAU_GEM_CPU_PREP_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %36 = load %struct.drm_nouveau_gem_cpu_prep*, %struct.drm_nouveau_gem_cpu_prep** %8, align 8
  %37 = getelementptr inbounds %struct.drm_nouveau_gem_cpu_prep, %struct.drm_nouveau_gem_cpu_prep* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %35, i32 %38)
  store %struct.drm_gem_object* %39, %struct.drm_gem_object** %9, align 8
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %41 = icmp ne %struct.drm_gem_object* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %82

45:                                               ; preds = %3
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %47 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %46)
  store %struct.nouveau_bo* %47, %struct.nouveau_bo** %10, align 8
  %48 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %49 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @HZ, align 4
  %59 = mul nsw i32 30, %58
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ 0, %56 ], [ %59, %57 ]
  %62 = call i64 @dma_resv_wait_timeout_rcu(i32 %52, i32 %53, i32 1, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %76

68:                                               ; preds = %60
  %69 = load i64, i64* %13, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %75

72:                                               ; preds = %68
  %73 = load i64, i64* %13, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %75, %65
  %77 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %78 = call i32 @nouveau_bo_sync_for_cpu(%struct.nouveau_bo* %77)
  %79 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %80 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %42
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_sync_for_cpu(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
