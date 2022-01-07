; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_alloc_w_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_alloc_w_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32, i32, i32*, %struct.pblk*, i32 }

@NVM_OP_PWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.nvm_rq*, i32, i32*)* @pblk_alloc_w_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_alloc_w_rq(%struct.pblk* %0, %struct.nvm_rq* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* @NVM_OP_PWRITE, align 4
  %10 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %11 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %14 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %16 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.pblk*, %struct.pblk** %5, align 8
  %18 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %19 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %18, i32 0, i32 3
  store %struct.pblk* %17, %struct.pblk** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %22 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.pblk*, %struct.pblk** %5, align 8
  %24 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %25 = call i32 @pblk_alloc_rqd_meta(%struct.pblk* %23, %struct.nvm_rq* %24)
  ret i32 %25
}

declare dso_local i32 @pblk_alloc_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
