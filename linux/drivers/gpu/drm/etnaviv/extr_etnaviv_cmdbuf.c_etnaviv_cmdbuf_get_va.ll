; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_get_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_get_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_cmdbuf = type { i64 }
%struct.etnaviv_vram_mapping = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %0, %struct.etnaviv_vram_mapping* %1) #0 {
  %3 = alloca %struct.etnaviv_cmdbuf*, align 8
  %4 = alloca %struct.etnaviv_vram_mapping*, align 8
  store %struct.etnaviv_cmdbuf* %0, %struct.etnaviv_cmdbuf** %3, align 8
  store %struct.etnaviv_vram_mapping* %1, %struct.etnaviv_vram_mapping** %4, align 8
  %5 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %6 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %9 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  ret i64 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
