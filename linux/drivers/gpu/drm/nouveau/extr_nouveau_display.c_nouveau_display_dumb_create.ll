; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_cli = type { i32 }
%struct.nouveau_bo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_display_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %13 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %12)
  store %struct.nouveau_cli* %13, %struct.nouveau_cli** %8, align 8
  %14 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %18 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 8
  %21 = mul nsw i32 %16, %20
  %22 = call i8* @roundup(i32 %21, i32 256)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %34 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %36 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i8* @roundup(i32 %37, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %42 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = call %struct.TYPE_10__* @nouveau_drm(%struct.drm_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  store i32 %52, i32* %10, align 4
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %57 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %58 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @nouveau_gem_new(%struct.nouveau_cli* %56, i32 %59, i32 0, i32 %60, i32 0, i32 0, %struct.nouveau_bo** %9)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %79

66:                                               ; preds = %55
  %67 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %68 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %69 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %72 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %71, i32 0, i32 5
  %73 = call i32 @drm_gem_handle_create(%struct.drm_file* %67, i32* %70, i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %75 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @drm_gem_object_put_unlocked(i32* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %66, %64
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local %struct.TYPE_10__* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_gem_new(%struct.nouveau_cli*, i32, i32, i32, i32, i32, %struct.nouveau_bo**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
