; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv_device_v0 = type { i64 }
%struct.nouveau_abi16 = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { %struct.nouveau_abi16*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__const.nouveau_abi16.args = private unnamed_addr constant %struct.nv_device_v0 { i64 -1 }, align 8
@NV_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_abi16* (%struct.drm_file*)* @nouveau_abi16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_abi16* @nouveau_abi16(%struct.drm_file* %0) #0 {
  %2 = alloca %struct.nouveau_abi16*, align 8
  %3 = alloca %struct.drm_file*, align 8
  %4 = alloca %struct.nouveau_cli*, align 8
  %5 = alloca %struct.nouveau_abi16*, align 8
  %6 = alloca %struct.nv_device_v0, align 8
  store %struct.drm_file* %0, %struct.drm_file** %3, align 8
  %7 = load %struct.drm_file*, %struct.drm_file** %3, align 8
  %8 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %7)
  store %struct.nouveau_cli* %8, %struct.nouveau_cli** %4, align 8
  %9 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %9, i32 0, i32 0
  %11 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %10, align 8
  %12 = icmp ne %struct.nouveau_abi16* %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nouveau_abi16* @kzalloc(i32 8, i32 %14)
  store %struct.nouveau_abi16* %15, %struct.nouveau_abi16** %5, align 8
  %16 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %16, i32 0, i32 0
  store %struct.nouveau_abi16* %15, %struct.nouveau_abi16** %17, align 8
  %18 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %18, i32 0, i32 0
  %20 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %19, align 8
  %21 = icmp ne %struct.nouveau_abi16* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %13
  %23 = bitcast %struct.nv_device_v0* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.nv_device_v0* @__const.nouveau_abi16.args to i8*), i64 8, i1 false)
  %24 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %5, align 8
  %25 = getelementptr inbounds %struct.nouveau_abi16, %struct.nouveau_abi16* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @NV_DEVICE, align 4
  %31 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %5, align 8
  %32 = getelementptr inbounds %struct.nouveau_abi16, %struct.nouveau_abi16* %31, i32 0, i32 0
  %33 = call i64 @nvif_device_init(i32* %29, i32 0, i32 %30, %struct.nv_device_v0* %6, i32 8, i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %37 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %36, i32 0, i32 0
  %38 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %37, align 8
  store %struct.nouveau_abi16* %38, %struct.nouveau_abi16** %2, align 8
  br label %51

39:                                               ; preds = %22
  %40 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %41 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %40, i32 0, i32 0
  %42 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %41, align 8
  %43 = call i32 @kfree(%struct.nouveau_abi16* %42)
  %44 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %45 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %44, i32 0, i32 0
  store %struct.nouveau_abi16* null, %struct.nouveau_abi16** %45, align 8
  br label %46

46:                                               ; preds = %39, %13
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %48, i32 0, i32 0
  %50 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %49, align 8
  store %struct.nouveau_abi16* %50, %struct.nouveau_abi16** %2, align 8
  br label %51

51:                                               ; preds = %47, %35
  %52 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %2, align 8
  ret %struct.nouveau_abi16* %52
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_abi16* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @nvif_device_init(i32*, i32, i32, %struct.nv_device_v0*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_abi16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
