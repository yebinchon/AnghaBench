; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_nouveau_gem_info = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_cli = type { %struct.TYPE_14__, %struct.nouveau_vmm, %struct.nouveau_vmm }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.nouveau_vmm = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.nouveau_bo = type { i32, i32, i32, i64, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.nouveau_vma = type { i32 }

@TTM_PL_TT = common dso_local global i64 0, align 8
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@NVIF_CLASS_VMM_NV50 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NOUVEAU_GEM_TILE_NONCONTIG = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_gem_object*, %struct.drm_nouveau_gem_info*)* @nouveau_gem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_info(%struct.drm_file* %0, %struct.drm_gem_object* %1, %struct.drm_nouveau_gem_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.drm_nouveau_gem_info*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca %struct.nouveau_vmm*, align 8
  %11 = alloca %struct.nouveau_vma*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %6, align 8
  store %struct.drm_nouveau_gem_info* %2, %struct.drm_nouveau_gem_info** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %13 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %12)
  store %struct.nouveau_cli* %13, %struct.nouveau_cli** %8, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %15 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %14)
  store %struct.nouveau_bo* %15, %struct.nouveau_bo** %9, align 8
  %16 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %17 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %22, i32 0, i32 2
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %25, i32 0, i32 1
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi %struct.nouveau_vmm* [ %23, %21 ], [ %26, %24 ]
  store %struct.nouveau_vmm* %28, %struct.nouveau_vmm** %10, align 8
  %29 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %30 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @is_power_of_2(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %36 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %39 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  br label %57

40:                                               ; preds = %27
  %41 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %42 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TTM_PL_TT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %50 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %51 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %40
  %53 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %54 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %55 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %59 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %63 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %10, align 8
  %65 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NVIF_CLASS_VMM_NV50, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %57
  %72 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %73 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %10, align 8
  %74 = call %struct.nouveau_vma* @nouveau_vma_find(%struct.nouveau_bo* %72, %struct.nouveau_vmm* %73)
  store %struct.nouveau_vma* %74, %struct.nouveau_vma** %11, align 8
  %75 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %76 = icmp ne %struct.nouveau_vma* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %167

80:                                               ; preds = %71
  %81 = load %struct.nouveau_vma*, %struct.nouveau_vma** %11, align 8
  %82 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %85 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %57
  %87 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %88 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PAGE_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %95 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %97 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = call i32 @drm_vma_node_offset_addr(i32* %99)
  %101 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %102 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %104 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %107 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %109 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %86
  br label %115

113:                                              ; preds = %86
  %114 = load i32, i32* @NOUVEAU_GEM_TILE_NONCONTIG, align 4
  br label %115

115:                                              ; preds = %113, %112
  %116 = phi i32 [ 0, %112 ], [ %114, %113 ]
  %117 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %118 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %120 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %115
  %127 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %128 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 8
  %131 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %132 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %166

135:                                              ; preds = %115
  %136 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %137 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %135
  %144 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %145 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 %146, 8
  %148 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %149 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 16
  %152 = or i32 %147, %151
  %153 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %154 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %165

157:                                              ; preds = %135
  %158 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %159 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %162 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %157, %143
  br label %166

166:                                              ; preds = %165, %126
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %77
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local %struct.nouveau_vma* @nouveau_vma_find(%struct.nouveau_bo*, %struct.nouveau_vmm*) #1

declare dso_local i32 @drm_vma_node_offset_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
