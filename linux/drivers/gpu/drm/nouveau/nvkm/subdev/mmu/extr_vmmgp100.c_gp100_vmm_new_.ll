; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_func = type { i32 }
%struct.nvkm_mmu = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.nvkm_vmm = type { i32 }
%union.anon = type { %struct.gp100_vmm_v0 }
%struct.gp100_vmm_v0 = type { i64 }
%struct.gp100_vmm_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp100_vmm_new_(%struct.nvkm_vmm_func* %0, %struct.nvkm_mmu* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, %struct.lock_class_key* %7, i8* %8, %struct.nvkm_vmm** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvkm_vmm_func*, align 8
  %13 = alloca %struct.nvkm_mmu*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.lock_class_key*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.nvkm_vmm**, align 8
  %22 = alloca %union.anon*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.nvkm_vmm_func* %0, %struct.nvkm_vmm_func** %12, align 8
  store %struct.nvkm_mmu* %1, %struct.nvkm_mmu** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store %struct.lock_class_key* %7, %struct.lock_class_key** %19, align 8
  store i8* %8, i8** %20, align 8
  store %struct.nvkm_vmm** %9, %struct.nvkm_vmm*** %21, align 8
  %25 = load i8*, i8** %17, align 8
  %26 = bitcast i8* %25 to %union.anon*
  store %union.anon* %26, %union.anon** %22, align 8
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %23, align 4
  %30 = load %union.anon*, %union.anon** %22, align 8
  %31 = bitcast %union.anon* %30 to %struct.gp100_vmm_v0*
  %32 = getelementptr inbounds %struct.gp100_vmm_v0, %struct.gp100_vmm_v0* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nvif_unpack(i32 %29, i8** %17, i32* %18, i64 %33, i32 0, i32 0, i32 0)
  store i32 %34, i32* %23, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %10
  %37 = load %union.anon*, %union.anon** %22, align 8
  %38 = bitcast %union.anon* %37 to %struct.gp100_vmm_v0*
  %39 = getelementptr inbounds %struct.gp100_vmm_v0, %struct.gp100_vmm_v0* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %24, align 4
  br label %55

43:                                               ; preds = %10
  %44 = load i32, i32* %23, align 4
  %45 = load %union.anon*, %union.anon** %22, align 8
  %46 = bitcast %union.anon* %45 to %struct.gp100_vmm_vn*
  %47 = getelementptr inbounds %struct.gp100_vmm_vn, %struct.gp100_vmm_vn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @nvif_unvers(i32 %44, i8** %17, i32* %18, i32 %48)
  store i32 %49, i32* %23, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %24, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %23, align 4
  store i32 %53, i32* %11, align 4
  br label %74

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %12, align 8
  %57 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load %struct.lock_class_key*, %struct.lock_class_key** %19, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %21, align 8
  %64 = call i32 @nvkm_vmm_new_(%struct.nvkm_vmm_func* %56, %struct.nvkm_mmu* %57, i32 0, i32 %58, i32 %59, i32 %60, %struct.lock_class_key* %61, i8* %62, %struct.nvkm_vmm** %63)
  store i32 %64, i32* %23, align 4
  %65 = load i32, i32* %23, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* %23, align 4
  store i32 %68, i32* %11, align 4
  br label %74

69:                                               ; preds = %55
  %70 = load i32, i32* %24, align 4
  %71 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %21, align 8
  %72 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %71, align 8
  %73 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %67, %52
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @nvkm_vmm_new_(%struct.nvkm_vmm_func*, %struct.nvkm_mmu*, i32, i32, i32, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
