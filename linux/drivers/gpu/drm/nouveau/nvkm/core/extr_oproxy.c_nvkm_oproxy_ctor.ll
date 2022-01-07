; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_oproxy.c_nvkm_oproxy_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_oproxy.c_nvkm_oproxy_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oproxy_func = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_oproxy = type { %struct.nvkm_oproxy_func*, i32 }

@nvkm_oproxy_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_oproxy_ctor(%struct.nvkm_oproxy_func* %0, %struct.nvkm_oclass* %1, %struct.nvkm_oproxy* %2) #0 {
  %4 = alloca %struct.nvkm_oproxy_func*, align 8
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca %struct.nvkm_oproxy*, align 8
  store %struct.nvkm_oproxy_func* %0, %struct.nvkm_oproxy_func** %4, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %5, align 8
  store %struct.nvkm_oproxy* %2, %struct.nvkm_oproxy** %6, align 8
  %7 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %8 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %6, align 8
  %9 = getelementptr inbounds %struct.nvkm_oproxy, %struct.nvkm_oproxy* %8, i32 0, i32 1
  %10 = call i32 @nvkm_object_ctor(i32* @nvkm_oproxy_func, %struct.nvkm_oclass* %7, i32* %9)
  %11 = load %struct.nvkm_oproxy_func*, %struct.nvkm_oproxy_func** %4, align 8
  %12 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_oproxy, %struct.nvkm_oproxy* %12, i32 0, i32 0
  store %struct.nvkm_oproxy_func* %11, %struct.nvkm_oproxy_func** %13, align 8
  ret void
}

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
