; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_cli = type { %struct.nouveau_drm* }
%struct.nouveau_drm = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_bo = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_COHERENT = common dso_local global i32 0, align 4
@TTM_PL_FLAG_UNCACHED = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_new(%struct.nouveau_cli* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nouveau_bo** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_cli*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nouveau_bo**, align 8
  %16 = alloca %struct.nouveau_drm*, align 8
  %17 = alloca %struct.nouveau_bo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.nouveau_bo** %6, %struct.nouveau_bo*** %15, align 8
  %20 = load %struct.nouveau_cli*, %struct.nouveau_cli** %9, align 8
  %21 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %20, i32 0, i32 0
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %21, align 8
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %16, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %29 = load i32, i32* %18, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %18, align 4
  br label %31

31:                                               ; preds = %27, %7
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %38 = load i32, i32* %18, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %18, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @NOUVEAU_GEM_DOMAIN_CPU, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %50 = load i32, i32* %18, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @NOUVEAU_GEM_DOMAIN_COHERENT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @TTM_PL_FLAG_UNCACHED, align 4
  %59 = load i32, i32* %18, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.nouveau_cli*, %struct.nouveau_cli** %9, align 8
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call %struct.nouveau_bo* @nouveau_bo_alloc(%struct.nouveau_cli* %62, i32* %10, i32* %11, i32 %63, i32 %64, i32 %65)
  store %struct.nouveau_bo* %66, %struct.nouveau_bo** %17, align 8
  %67 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %68 = call i64 @IS_ERR(%struct.nouveau_bo* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %72 = call i32 @PTR_ERR(%struct.nouveau_bo* %71)
  store i32 %72, i32* %8, align 4
  br label %129

73:                                               ; preds = %61
  %74 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %75 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %78 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @drm_gem_object_init(i32 %76, %struct.TYPE_10__* %79, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = call i32 @nouveau_bo_ref(i32* null, %struct.nouveau_bo** %17)
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %8, align 4
  br label %129

87:                                               ; preds = %73
  %88 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @nouveau_bo_init(%struct.nouveau_bo* %88, i32 %89, i32 %90, i32 %91, i32* null, i32* null)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = call i32 @nouveau_bo_ref(i32* null, %struct.nouveau_bo** %17)
  %97 = load i32, i32* %19, align 4
  store i32 %97, i32* %8, align 4
  br label %129

98:                                               ; preds = %87
  %99 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %100 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %103 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %105 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %98
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %115 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %98
  %119 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %120 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %125 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %128 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %15, align 8
  store %struct.nouveau_bo* %127, %struct.nouveau_bo** %128, align 8
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %118, %95, %84, %70
  %130 = load i32, i32* %8, align 4
  ret i32 %130
}

declare dso_local %struct.nouveau_bo* @nouveau_bo_alloc(%struct.nouveau_cli*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nouveau_bo*) #1

declare dso_local i32 @PTR_ERR(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_gem_object_init(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, %struct.nouveau_bo**) #1

declare dso_local i32 @nouveau_bo_init(%struct.nouveau_bo*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
