; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_end_io_recov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_end_io_recov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { %struct.pblk_pad_rq* }
%struct.pblk_pad_rq = type { i32, %struct.pblk* }
%struct.pblk = type { i32 }
%struct.ppa_addr = type { i32 }

@PBLK_WRITE_INT = common dso_local global i32 0, align 4
@pblk_recov_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_rq*)* @pblk_end_io_recov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_end_io_recov(%struct.nvm_rq* %0) #0 {
  %2 = alloca %struct.nvm_rq*, align 8
  %3 = alloca %struct.ppa_addr*, align 8
  %4 = alloca %struct.pblk_pad_rq*, align 8
  %5 = alloca %struct.pblk*, align 8
  store %struct.nvm_rq* %0, %struct.nvm_rq** %2, align 8
  %6 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %7 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %6)
  store %struct.ppa_addr* %7, %struct.ppa_addr** %3, align 8
  %8 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %9 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %8, i32 0, i32 0
  %10 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %9, align 8
  store %struct.pblk_pad_rq* %10, %struct.pblk_pad_rq** %4, align 8
  %11 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %4, align 8
  %12 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %11, i32 0, i32 1
  %13 = load %struct.pblk*, %struct.pblk** %12, align 8
  store %struct.pblk* %13, %struct.pblk** %5, align 8
  %14 = load %struct.pblk*, %struct.pblk** %5, align 8
  %15 = load %struct.ppa_addr*, %struct.ppa_addr** %3, align 8
  %16 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i64 0
  %17 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pblk_up_chunk(%struct.pblk* %14, i32 %18)
  %20 = load %struct.pblk*, %struct.pblk** %5, align 8
  %21 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %22 = load i32, i32* @PBLK_WRITE_INT, align 4
  %23 = call i32 @pblk_free_rqd(%struct.pblk* %20, %struct.nvm_rq* %21, i32 %22)
  %24 = load %struct.pblk*, %struct.pblk** %5, align 8
  %25 = getelementptr inbounds %struct.pblk, %struct.pblk* %24, i32 0, i32 0
  %26 = call i32 @atomic_dec(i32* %25)
  %27 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %4, align 8
  %28 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %27, i32 0, i32 0
  %29 = load i32, i32* @pblk_recov_complete, align 4
  %30 = call i32 @kref_put(i32* %28, i32 %29)
  ret void
}

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i32 @pblk_up_chunk(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_free_rqd(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
