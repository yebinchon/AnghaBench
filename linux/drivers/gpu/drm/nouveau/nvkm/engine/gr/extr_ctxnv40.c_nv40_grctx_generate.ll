; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_grctx_generate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_grctx_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i32 }

@AUTO_SAVE = common dso_local global i32 0, align 4
@PENDING = common dso_local global i32 0, align 4
@cp_setup_save = common dso_local global i32 0, align 4
@USER_SAVE = common dso_local global i32 0, align 4
@cp_check_load = common dso_local global i32 0, align 4
@AUTO_LOAD = common dso_local global i32 0, align 4
@cp_setup_auto_load = common dso_local global i32 0, align 4
@USER_LOAD = common dso_local global i32 0, align 4
@cp_setup_load = common dso_local global i32 0, align 4
@ALWAYS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cp_exit = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@CP_NEXT_TO_SWAP = common dso_local global i32 0, align 4
@SWAP_DIRECTION = common dso_local global i32 0, align 4
@LOAD = common dso_local global i32 0, align 4
@UNK57 = common dso_local global i32 0, align 4
@CLEAR = common dso_local global i32 0, align 4
@cp_swap_state = common dso_local global i32 0, align 4
@SAVE = common dso_local global i32 0, align 4
@UNK54 = common dso_local global i32 0, align 4
@cp_prepare_exit = common dso_local global i32 0, align 4
@CP_NEXT_TO_CURRENT = common dso_local global i32 0, align 4
@NOT_PENDING = common dso_local global i32 0, align 4
@CP_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv40_grctx_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_grctx_generate(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %3 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %4 = load i32, i32* @AUTO_SAVE, align 4
  %5 = load i32, i32* @PENDING, align 4
  %6 = load i32, i32* @cp_setup_save, align 4
  %7 = call i32 @cp_bra(%struct.nvkm_grctx* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %9 = load i32, i32* @USER_SAVE, align 4
  %10 = load i32, i32* @PENDING, align 4
  %11 = load i32, i32* @cp_setup_save, align 4
  %12 = call i32 @cp_bra(%struct.nvkm_grctx* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %14 = load i32, i32* @cp_check_load, align 4
  %15 = call i32 @cp_name(%struct.nvkm_grctx* %13, i32 %14)
  %16 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %17 = load i32, i32* @AUTO_LOAD, align 4
  %18 = load i32, i32* @PENDING, align 4
  %19 = load i32, i32* @cp_setup_auto_load, align 4
  %20 = call i32 @cp_bra(%struct.nvkm_grctx* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %22 = load i32, i32* @USER_LOAD, align 4
  %23 = load i32, i32* @PENDING, align 4
  %24 = load i32, i32* @cp_setup_load, align 4
  %25 = call i32 @cp_bra(%struct.nvkm_grctx* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %27 = load i32, i32* @ALWAYS, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32, i32* @cp_exit, align 4
  %30 = call i32 @cp_bra(%struct.nvkm_grctx* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = load i32, i32* @cp_setup_auto_load, align 4
  %33 = call i32 @cp_name(%struct.nvkm_grctx* %31, i32 %32)
  %34 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %35 = load i32, i32* @STATUS, align 4
  %36 = load i32, i32* @IDLE, align 4
  %37 = call i32 @cp_wait(%struct.nvkm_grctx* %34, i32 %35, i32 %36)
  %38 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %39 = load i32, i32* @CP_NEXT_TO_SWAP, align 4
  %40 = call i32 @cp_out(%struct.nvkm_grctx* %38, i32 %39)
  %41 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %42 = load i32, i32* @cp_setup_load, align 4
  %43 = call i32 @cp_name(%struct.nvkm_grctx* %41, i32 %42)
  %44 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %45 = load i32, i32* @STATUS, align 4
  %46 = load i32, i32* @IDLE, align 4
  %47 = call i32 @cp_wait(%struct.nvkm_grctx* %44, i32 %45, i32 %46)
  %48 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %49 = load i32, i32* @SWAP_DIRECTION, align 4
  %50 = load i32, i32* @LOAD, align 4
  %51 = call i32 @cp_set(%struct.nvkm_grctx* %48, i32 %49, i32 %50)
  %52 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %53 = call i32 @cp_out(%struct.nvkm_grctx* %52, i32 9504896)
  %54 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %55 = call i32 @cp_out(%struct.nvkm_grctx* %54, i32 9445374)
  %56 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %57 = call i32 @cp_out(%struct.nvkm_grctx* %56, i32 26476544)
  %58 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %59 = call i32 @cp_lsr(%struct.nvkm_grctx* %58, i32 32)
  %60 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %61 = call i32 @cp_out(%struct.nvkm_grctx* %60, i32 6291467)
  %62 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %63 = load i32, i32* @UNK57, align 4
  %64 = load i32, i32* @CLEAR, align 4
  %65 = call i32 @cp_wait(%struct.nvkm_grctx* %62, i32 %63, i32 %64)
  %66 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %67 = call i32 @cp_out(%struct.nvkm_grctx* %66, i32 6291468)
  %68 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %69 = load i32, i32* @ALWAYS, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i32, i32* @cp_swap_state, align 4
  %72 = call i32 @cp_bra(%struct.nvkm_grctx* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %74 = load i32, i32* @cp_setup_save, align 4
  %75 = call i32 @cp_name(%struct.nvkm_grctx* %73, i32 %74)
  %76 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %77 = load i32, i32* @SWAP_DIRECTION, align 4
  %78 = load i32, i32* @SAVE, align 4
  %79 = call i32 @cp_set(%struct.nvkm_grctx* %76, i32 %77, i32 %78)
  %80 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %81 = load i32, i32* @cp_swap_state, align 4
  %82 = call i32 @cp_name(%struct.nvkm_grctx* %80, i32 %81)
  %83 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %84 = call i32 @cp_pos(%struct.nvkm_grctx* %83, i32 8)
  %85 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %86 = call i32 @nv40_gr_construct_general(%struct.nvkm_grctx* %85)
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = load i32, i32* @STATUS, align 4
  %89 = load i32, i32* @IDLE, align 4
  %90 = call i32 @cp_wait(%struct.nvkm_grctx* %87, i32 %88, i32 %89)
  %91 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %92 = load i32, i32* @UNK54, align 4
  %93 = load i32, i32* @CLEAR, align 4
  %94 = load i32, i32* @cp_prepare_exit, align 4
  %95 = call i32 @cp_bra(%struct.nvkm_grctx* %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %97 = call i32 @nv40_gr_construct_state3d(%struct.nvkm_grctx* %96)
  %98 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %99 = load i32, i32* @STATUS, align 4
  %100 = load i32, i32* @IDLE, align 4
  %101 = call i32 @cp_wait(%struct.nvkm_grctx* %98, i32 %99, i32 %100)
  %102 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %103 = call i32 @nv40_gr_construct_state3d_2(%struct.nvkm_grctx* %102)
  %104 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %105 = call i32 @nv40_gr_construct_state3d_3(%struct.nvkm_grctx* %104)
  %106 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %107 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %108 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cp_pos(%struct.nvkm_grctx* %106, i32 %109)
  %111 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %112 = call i32 @nv40_gr_construct_shader(%struct.nvkm_grctx* %111)
  %113 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %114 = load i32, i32* @cp_prepare_exit, align 4
  %115 = call i32 @cp_name(%struct.nvkm_grctx* %113, i32 %114)
  %116 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %117 = load i32, i32* @SWAP_DIRECTION, align 4
  %118 = load i32, i32* @SAVE, align 4
  %119 = load i32, i32* @cp_check_load, align 4
  %120 = call i32 @cp_bra(%struct.nvkm_grctx* %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %122 = load i32, i32* @USER_SAVE, align 4
  %123 = load i32, i32* @PENDING, align 4
  %124 = load i32, i32* @cp_exit, align 4
  %125 = call i32 @cp_bra(%struct.nvkm_grctx* %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %127 = load i32, i32* @CP_NEXT_TO_CURRENT, align 4
  %128 = call i32 @cp_out(%struct.nvkm_grctx* %126, i32 %127)
  %129 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %130 = load i32, i32* @cp_exit, align 4
  %131 = call i32 @cp_name(%struct.nvkm_grctx* %129, i32 %130)
  %132 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %133 = load i32, i32* @USER_SAVE, align 4
  %134 = load i32, i32* @NOT_PENDING, align 4
  %135 = call i32 @cp_set(%struct.nvkm_grctx* %132, i32 %133, i32 %134)
  %136 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %137 = load i32, i32* @USER_LOAD, align 4
  %138 = load i32, i32* @NOT_PENDING, align 4
  %139 = call i32 @cp_set(%struct.nvkm_grctx* %136, i32 %137, i32 %138)
  %140 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %141 = load i32, i32* @CP_END, align 4
  %142 = call i32 @cp_out(%struct.nvkm_grctx* %140, i32 %141)
  ret void
}

declare dso_local i32 @cp_bra(%struct.nvkm_grctx*, i32, i32, i32) #1

declare dso_local i32 @cp_name(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_wait(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @cp_out(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_set(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @cp_lsr(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_pos(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @nv40_gr_construct_general(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv40_gr_construct_state3d(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv40_gr_construct_state3d_2(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv40_gr_construct_state3d_3(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv40_gr_construct_shader(%struct.nvkm_grctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
