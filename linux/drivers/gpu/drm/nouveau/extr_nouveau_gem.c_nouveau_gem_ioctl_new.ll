; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { i32 }
%struct.drm_nouveau_gem_new = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.nouveau_bo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_ioctl_new(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca %struct.drm_nouveau_gem_new*, align 8
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %12)
  store %struct.nouveau_cli* %13, %struct.nouveau_cli** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_nouveau_gem_new*
  store %struct.drm_nouveau_gem_new* %15, %struct.drm_nouveau_gem_new** %9, align 8
  store %struct.nouveau_bo* null, %struct.nouveau_bo** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %17 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %18 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %22 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %25 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %29 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %33 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nouveau_gem_new(%struct.nouveau_cli* %16, i32 %20, i32 %23, i32 %27, i32 %31, i32 %35, %struct.nouveau_bo** %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %76

41:                                               ; preds = %3
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %44 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %47 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @drm_gem_handle_create(%struct.drm_file* %42, i32* %45, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %41
  %53 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %54 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %55 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %58 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %57, i32 0, i32 0
  %59 = call i32 @nouveau_gem_info(%struct.drm_file* %53, i32* %56, %struct.TYPE_4__* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %64 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %9, align 8
  %65 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @drm_gem_handle_delete(%struct.drm_file* %63, i32 %67)
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %69, %41
  %71 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %72 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @drm_gem_object_put_unlocked(i32* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %39
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local i32 @nouveau_gem_new(%struct.nouveau_cli*, i32, i32, i32, i32, i32, %struct.nouveau_bo**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @nouveau_gem_info(%struct.drm_file*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @drm_gem_handle_delete(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
