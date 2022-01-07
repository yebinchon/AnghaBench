; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_child_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_child_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_sclass, i32 }

@nvkm_uclient_sclass = common dso_local global %struct.nvkm_sclass zeroinitializer, align 4
@nvkm_udevice_sclass = common dso_local global %struct.nvkm_sclass zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvkm_client_child_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* @nvkm_client_child_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_client_child_get(%struct.nvkm_object* %0, i32 %1, %struct.nvkm_oclass* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca %struct.nvkm_sclass*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %12 [
    i32 0, label %10
    i32 1, label %11
  ]

10:                                               ; preds = %3
  store %struct.nvkm_sclass* @nvkm_uclient_sclass, %struct.nvkm_sclass** %8, align 8
  br label %15

11:                                               ; preds = %3
  store %struct.nvkm_sclass* @nvkm_udevice_sclass, %struct.nvkm_sclass** %8, align 8
  br label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %24

15:                                               ; preds = %11, %10
  %16 = load i32, i32* @nvkm_client_child_new, align 4
  %17 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %20 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %19, i32 0, i32 0
  %21 = load %struct.nvkm_sclass*, %struct.nvkm_sclass** %8, align 8
  %22 = bitcast %struct.nvkm_sclass* %20 to i8*
  %23 = bitcast %struct.nvkm_sclass* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
