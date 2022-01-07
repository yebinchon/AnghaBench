; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_blk_erase_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_blk_erase_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.nvm_rq = type { %struct.pblk*, i32* }

@PBLK_CHUNK_RESET_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i32)* @pblk_blk_erase_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_blk_erase_sync(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.ppa_addr, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  %8 = bitcast %struct.nvm_rq* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.pblk*, %struct.pblk** %4, align 8
  %10 = call i32 @pblk_disk_name(%struct.pblk* %9)
  %11 = load i32, i32* @PBLK_CHUNK_RESET_START, align 4
  %12 = call i32 @trace_pblk_chunk_reset(i32 %10, %struct.ppa_addr* %3, i32 %11)
  %13 = load %struct.pblk*, %struct.pblk** %4, align 8
  %14 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pblk_setup_e_rq(%struct.pblk* %13, %struct.nvm_rq* %5, i32 %15)
  %17 = load %struct.pblk*, %struct.pblk** %4, align 8
  %18 = call i32 @pblk_submit_io_sync(%struct.pblk* %17, %struct.nvm_rq* %5, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pblk*, %struct.pblk** %4, align 8
  %20 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %5, i32 0, i32 0
  store %struct.pblk* %19, %struct.pblk** %20, align 8
  %21 = load %struct.pblk*, %struct.pblk** %4, align 8
  %22 = call i32 @__pblk_end_io_erase(%struct.pblk* %21, %struct.nvm_rq* %5)
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trace_pblk_chunk_reset(i32, %struct.ppa_addr*, i32) #2

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #2

declare dso_local i32 @pblk_setup_e_rq(%struct.pblk*, %struct.nvm_rq*, i32) #2

declare dso_local i32 @pblk_submit_io_sync(%struct.pblk*, %struct.nvm_rq*, i32*) #2

declare dso_local i32 @__pblk_end_io_erase(%struct.pblk*, %struct.nvm_rq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
