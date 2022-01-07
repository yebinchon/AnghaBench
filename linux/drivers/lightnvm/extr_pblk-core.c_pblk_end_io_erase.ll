; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_end_io_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_end_io_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { %struct.pblk* }
%struct.pblk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_rq*)* @pblk_end_io_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_end_io_erase(%struct.nvm_rq* %0) #0 {
  %2 = alloca %struct.nvm_rq*, align 8
  %3 = alloca %struct.pblk*, align 8
  store %struct.nvm_rq* %0, %struct.nvm_rq** %2, align 8
  %4 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %5 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %4, i32 0, i32 0
  %6 = load %struct.pblk*, %struct.pblk** %5, align 8
  store %struct.pblk* %6, %struct.pblk** %3, align 8
  %7 = load %struct.pblk*, %struct.pblk** %3, align 8
  %8 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %9 = call i32 @__pblk_end_io_erase(%struct.pblk* %7, %struct.nvm_rq* %8)
  %10 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 0
  %13 = call i32 @mempool_free(%struct.nvm_rq* %10, i32* %12)
  ret void
}

declare dso_local i32 @__pblk_end_io_erase(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @mempool_free(%struct.nvm_rq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
