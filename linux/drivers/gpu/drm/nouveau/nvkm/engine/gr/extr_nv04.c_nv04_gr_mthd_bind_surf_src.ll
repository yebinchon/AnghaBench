; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_mthd_bind_surf_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_mthd_bind_surf_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, i32, i32)* @nv04_gr_mthd_bind_surf_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_gr_mthd_bind_surf_src(%struct.nvkm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @nv04_gr_mthd_bind_class(%struct.nvkm_device* %8, i32 %9)
  switch i32 %10, label %19 [
    i32 48, label %11
    i32 89, label %15
  ]

11:                                               ; preds = %3
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @nv04_gr_set_ctx_val(%struct.nvkm_device* %12, i32 %13, i32 67108864, i32 0)
  store i32 1, i32* %4, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nv04_gr_set_ctx_val(%struct.nvkm_device* %16, i32 %17, i32 67108864, i32 67108864)
  store i32 1, i32* %4, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @nv04_gr_mthd_bind_class(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv04_gr_set_ctx_val(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
