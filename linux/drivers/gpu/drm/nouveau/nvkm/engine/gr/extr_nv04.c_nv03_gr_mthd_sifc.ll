; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv03_gr_mthd_sifc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv03_gr_mthd_sifc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, i32, i32, i32)* @nv03_gr_mthd_sifc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv03_gr_mthd_sifc(%struct.nvkm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.nvkm_device*, i32, i32)*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %18 [
    i32 388, label %12
    i32 392, label %13
    i32 396, label %14
    i32 400, label %15
    i32 404, label %16
    i32 764, label %17
  ]

12:                                               ; preds = %4
  store i32 (%struct.nvkm_device*, i32, i32)* @nv01_gr_mthd_bind_chroma, i32 (%struct.nvkm_device*, i32, i32)** %10, align 8
  br label %19

13:                                               ; preds = %4
  store i32 (%struct.nvkm_device*, i32, i32)* @nv01_gr_mthd_bind_patt, i32 (%struct.nvkm_device*, i32, i32)** %10, align 8
  br label %19

14:                                               ; preds = %4
  store i32 (%struct.nvkm_device*, i32, i32)* @nv04_gr_mthd_bind_rop, i32 (%struct.nvkm_device*, i32, i32)** %10, align 8
  br label %19

15:                                               ; preds = %4
  store i32 (%struct.nvkm_device*, i32, i32)* @nv04_gr_mthd_bind_beta1, i32 (%struct.nvkm_device*, i32, i32)** %10, align 8
  br label %19

16:                                               ; preds = %4
  store i32 (%struct.nvkm_device*, i32, i32)* @nv04_gr_mthd_bind_surf_dst, i32 (%struct.nvkm_device*, i32, i32)** %10, align 8
  br label %19

17:                                               ; preds = %4
  store i32 (%struct.nvkm_device*, i32, i32)* @nv04_gr_mthd_set_operation, i32 (%struct.nvkm_device*, i32, i32)** %10, align 8
  br label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %25

19:                                               ; preds = %17, %16, %15, %14, %13, %12
  %20 = load i32 (%struct.nvkm_device*, i32, i32)*, i32 (%struct.nvkm_device*, i32, i32)** %10, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 %20(%struct.nvkm_device* %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @nv01_gr_mthd_bind_chroma(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv01_gr_mthd_bind_patt(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv04_gr_mthd_bind_rop(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv04_gr_mthd_bind_beta1(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv04_gr_mthd_bind_surf_dst(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv04_gr_mthd_set_operation(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
