; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_state3d_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_state3d_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i32, i32 }

@SWAP_DIRECTION = common dso_local global i32 0, align 4
@SAVE = common dso_local global i32 0, align 4
@cp_swap_state3d_3_is_save = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv40_gr_construct_state3d_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_gr_construct_state3d_3(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %4 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @nv44_gr_class(i32 %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 132, i32 1668
  store i32 %10, i32* %3, align 4
  %11 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %12 = call i32 @cp_out(%struct.nvkm_grctx* %11, i32 3145728)
  %13 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 4
  %16 = call i32 @cp_lsr(%struct.nvkm_grctx* %13, i32 %15)
  %17 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %18 = load i32, i32* @SWAP_DIRECTION, align 4
  %19 = load i32, i32* @SAVE, align 4
  %20 = load i32, i32* @cp_swap_state3d_3_is_save, align 4
  %21 = call i32 @cp_bra(%struct.nvkm_grctx* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @cp_lsr(%struct.nvkm_grctx* %22, i32 %23)
  %25 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %26 = load i32, i32* @cp_swap_state3d_3_is_save, align 4
  %27 = call i32 @cp_name(%struct.nvkm_grctx* %25, i32 %26)
  %28 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %29 = call i32 @cp_out(%struct.nvkm_grctx* %28, i32 8388609)
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  ret void
}

declare dso_local i64 @nv44_gr_class(i32) #1

declare dso_local i32 @cp_out(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_lsr(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_bra(%struct.nvkm_grctx*, i32, i32, i32) #1

declare dso_local i32 @cp_name(%struct.nvkm_grctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
