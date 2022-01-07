; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_w_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_w_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32 }
%struct.nvm_rq = type { i32 }
%struct.pblk_rec_ctx = type { i32, %struct.nvm_rq*, %struct.pblk* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not allocate recovery work\0A\00", align 1
@pblk_submit_rec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.nvm_rq*)* @pblk_end_w_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_end_w_fail(%struct.pblk* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_rq*, align 8
  %5 = alloca %struct.pblk_rec_ctx*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %4, align 8
  %6 = load %struct.pblk*, %struct.pblk** %3, align 8
  %7 = getelementptr inbounds %struct.pblk, %struct.pblk* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.pblk_rec_ctx* @mempool_alloc(i32* %7, i32 %8)
  store %struct.pblk_rec_ctx* %9, %struct.pblk_rec_ctx** %5, align 8
  %10 = load %struct.pblk_rec_ctx*, %struct.pblk_rec_ctx** %5, align 8
  %11 = icmp ne %struct.pblk_rec_ctx* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.pblk*, %struct.pblk** %3, align 8
  %14 = call i32 @pblk_err(%struct.pblk* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.pblk*, %struct.pblk** %3, align 8
  %17 = load %struct.pblk_rec_ctx*, %struct.pblk_rec_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_rec_ctx, %struct.pblk_rec_ctx* %17, i32 0, i32 2
  store %struct.pblk* %16, %struct.pblk** %18, align 8
  %19 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %20 = load %struct.pblk_rec_ctx*, %struct.pblk_rec_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.pblk_rec_ctx, %struct.pblk_rec_ctx* %20, i32 0, i32 1
  store %struct.nvm_rq* %19, %struct.nvm_rq** %21, align 8
  %22 = load %struct.pblk_rec_ctx*, %struct.pblk_rec_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.pblk_rec_ctx, %struct.pblk_rec_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* @pblk_submit_rec, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.pblk*, %struct.pblk** %3, align 8
  %27 = getelementptr inbounds %struct.pblk, %struct.pblk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pblk_rec_ctx*, %struct.pblk_rec_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.pblk_rec_ctx, %struct.pblk_rec_ctx* %29, i32 0, i32 0
  %31 = call i32 @queue_work(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %15, %12
  ret void
}

declare dso_local %struct.pblk_rec_ctx* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
