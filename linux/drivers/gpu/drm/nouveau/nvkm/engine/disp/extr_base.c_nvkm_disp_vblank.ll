; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_disp = type { i32 }
%struct.nvif_notify_head_rep_v0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_disp_vblank(%struct.nvkm_disp* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_disp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvif_notify_head_rep_v0, align 4
  store %struct.nvkm_disp* %0, %struct.nvkm_disp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.nvif_notify_head_rep_v0* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.nvkm_disp*, %struct.nvkm_disp** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @nvkm_event_send(i32* %8, i32 1, i32 %9, %struct.nvif_notify_head_rep_v0* %5, i32 4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nvkm_event_send(i32*, i32, i32, %struct.nvif_notify_head_rep_v0*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
