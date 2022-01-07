; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgm200.c_gm200_vmm_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgm200.c_gm200_vmm_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_func = type { i32 }
%struct.nvkm_mmu = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.nvkm_vmm = type { i32 }
%union.anon = type { %struct.gm200_vmm_vn }
%struct.gm200_vmm_vn = type { i32 }
%struct.gm200_vmm_v0 = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm200_vmm_new_(%struct.nvkm_vmm_func* %0, %struct.nvkm_vmm_func* %1, %struct.nvkm_mmu* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, %struct.lock_class_key* %8, i8* %9, %struct.nvkm_vmm** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_vmm_func*, align 8
  %14 = alloca %struct.nvkm_vmm_func*, align 8
  %15 = alloca %struct.nvkm_mmu*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.lock_class_key*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.nvkm_vmm**, align 8
  %24 = alloca %struct.nvkm_vmm_func*, align 8
  %25 = alloca %union.anon*, align 8
  %26 = alloca i32, align 4
  store %struct.nvkm_vmm_func* %0, %struct.nvkm_vmm_func** %13, align 8
  store %struct.nvkm_vmm_func* %1, %struct.nvkm_vmm_func** %14, align 8
  store %struct.nvkm_mmu* %2, %struct.nvkm_mmu** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store %struct.lock_class_key* %8, %struct.lock_class_key** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.nvkm_vmm** %10, %struct.nvkm_vmm*** %23, align 8
  %27 = load i8*, i8** %19, align 8
  %28 = bitcast i8* %27 to %union.anon*
  store %union.anon* %28, %union.anon** %25, align 8
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* %26, align 4
  %32 = load %union.anon*, %union.anon** %25, align 8
  %33 = bitcast %union.anon* %32 to %struct.gm200_vmm_v0*
  %34 = getelementptr inbounds %struct.gm200_vmm_v0, %struct.gm200_vmm_v0* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nvif_unpack(i32 %31, i8** %19, i32* %20, i32 %35, i32 0, i32 0, i32 0)
  store i32 %36, i32* %26, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %11
  %39 = load %union.anon*, %union.anon** %25, align 8
  %40 = bitcast %union.anon* %39 to %struct.gm200_vmm_v0*
  %41 = getelementptr inbounds %struct.gm200_vmm_v0, %struct.gm200_vmm_v0* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %47 [
    i32 16, label %43
    i32 17, label %45
  ]

43:                                               ; preds = %38
  %44 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %13, align 8
  store %struct.nvkm_vmm_func* %44, %struct.nvkm_vmm_func** %24, align 8
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %14, align 8
  store %struct.nvkm_vmm_func* %46, %struct.nvkm_vmm_func** %24, align 8
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %74

50:                                               ; preds = %45, %43
  br label %64

51:                                               ; preds = %11
  %52 = load i32, i32* %26, align 4
  %53 = load %union.anon*, %union.anon** %25, align 8
  %54 = bitcast %union.anon* %53 to %struct.gm200_vmm_vn*
  %55 = getelementptr inbounds %struct.gm200_vmm_vn, %struct.gm200_vmm_vn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nvif_unvers(i32 %52, i8** %19, i32* %20, i32 %56)
  store i32 %57, i32* %26, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %14, align 8
  store %struct.nvkm_vmm_func* %60, %struct.nvkm_vmm_func** %24, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %26, align 4
  store i32 %62, i32* %12, align 4
  br label %74

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %24, align 8
  %66 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load %struct.lock_class_key*, %struct.lock_class_key** %21, align 8
  %71 = load i8*, i8** %22, align 8
  %72 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %23, align 8
  %73 = call i32 @nvkm_vmm_new_(%struct.nvkm_vmm_func* %65, %struct.nvkm_mmu* %66, i32 0, i32 %67, i32 %68, i32 %69, %struct.lock_class_key* %70, i8* %71, %struct.nvkm_vmm** %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %64, %61, %47
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @nvkm_vmm_new_(%struct.nvkm_vmm_func*, %struct.nvkm_mmu*, i32, i32, i32, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
