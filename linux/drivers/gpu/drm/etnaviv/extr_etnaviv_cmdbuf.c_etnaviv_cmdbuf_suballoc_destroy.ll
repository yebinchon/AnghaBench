; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_suballoc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_suballoc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_cmdbuf_suballoc = type { i32, i32, i32 }

@SUBALLOC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_cmdbuf_suballoc_destroy(%struct.etnaviv_cmdbuf_suballoc* %0) #0 {
  %2 = alloca %struct.etnaviv_cmdbuf_suballoc*, align 8
  store %struct.etnaviv_cmdbuf_suballoc* %0, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  %3 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SUBALLOC_SIZE, align 4
  %7 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  %8 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  %11 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dma_free_wc(i32 %5, i32 %6, i32 %9, i32 %12)
  %14 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  %15 = call i32 @kfree(%struct.etnaviv_cmdbuf_suballoc* %14)
  ret void
}

declare dso_local i32 @dma_free_wc(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.etnaviv_cmdbuf_suballoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
