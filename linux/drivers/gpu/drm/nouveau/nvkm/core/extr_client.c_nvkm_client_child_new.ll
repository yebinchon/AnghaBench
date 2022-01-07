; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_child_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_child_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_oclass.0*, i8*, i32, %struct.nvkm_object**)* }
%struct.nvkm_oclass.0 = type opaque
%struct.nvkm_object = type opaque
%struct.nvkm_object.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object.1**)* @nvkm_client_child_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_client_child_new(%struct.nvkm_oclass* %0, i8* %1, i32 %2, %struct.nvkm_object.1** %3) #0 {
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_object.1**, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_object.1** %3, %struct.nvkm_object.1*** %8, align 8
  %9 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvkm_oclass.0*, i8*, i32, %struct.nvkm_object**)*, i32 (%struct.nvkm_oclass.0*, i8*, i32, %struct.nvkm_object**)** %11, align 8
  %13 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %14 = bitcast %struct.nvkm_oclass* %13 to %struct.nvkm_oclass.0*
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.nvkm_object.1**, %struct.nvkm_object.1*** %8, align 8
  %18 = bitcast %struct.nvkm_object.1** %17 to %struct.nvkm_object**
  %19 = call i32 %12(%struct.nvkm_oclass.0* %14, i8* %15, i32 %16, %struct.nvkm_object** %18)
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
