; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_alloc_rqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_alloc_rqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { i32 }
%struct.pblk = type { i32, i32, i32 }

@pblk_w_rq_size = common dso_local global i32 0, align 4
@pblk_g_rq_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %9
    i32 130, label %13
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 2
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @pblk_w_rq_size, align 4
  store i32 %12, i32* %7, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.pblk*, %struct.pblk** %3, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @pblk_g_rq_size, align 4
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.pblk*, %struct.pblk** %3, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 0
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* @pblk_g_rq_size, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %13, %9
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.nvm_rq* @mempool_alloc(i32* %22, i32 %23)
  store %struct.nvm_rq* %24, %struct.nvm_rq** %6, align 8
  %25 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @memset(%struct.nvm_rq* %25, i32 0, i32 %26)
  %28 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  ret %struct.nvm_rq* %28
}

declare dso_local %struct.nvm_rq* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
