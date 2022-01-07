; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_oproxy.c_nvkm_oproxy_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_oproxy.c_nvkm_oproxy_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oproxy_func = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_oproxy = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_oproxy_new_(%struct.nvkm_oproxy_func* %0, %struct.nvkm_oclass* %1, %struct.nvkm_oproxy** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_oproxy_func*, align 8
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca %struct.nvkm_oproxy**, align 8
  store %struct.nvkm_oproxy_func* %0, %struct.nvkm_oproxy_func** %5, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %6, align 8
  store %struct.nvkm_oproxy** %2, %struct.nvkm_oproxy*** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nvkm_oproxy* @kzalloc(i32 4, i32 %8)
  %10 = load %struct.nvkm_oproxy**, %struct.nvkm_oproxy*** %7, align 8
  store %struct.nvkm_oproxy* %9, %struct.nvkm_oproxy** %10, align 8
  %11 = icmp ne %struct.nvkm_oproxy* %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.nvkm_oproxy_func*, %struct.nvkm_oproxy_func** %5, align 8
  %17 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %18 = load %struct.nvkm_oproxy**, %struct.nvkm_oproxy*** %7, align 8
  %19 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %18, align 8
  %20 = call i32 @nvkm_oproxy_ctor(%struct.nvkm_oproxy_func* %16, %struct.nvkm_oclass* %17, %struct.nvkm_oproxy* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.nvkm_oproxy* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_oproxy_ctor(%struct.nvkm_oproxy_func*, %struct.nvkm_oclass*, %struct.nvkm_oproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
