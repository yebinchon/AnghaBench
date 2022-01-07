; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_log_read_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_log_read_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32 }
%struct.nvm_rq = type { i32 }

@NVM_RSP_ERR_EMPTYPAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown read error:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_log_read_err(%struct.pblk* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_rq*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %4, align 8
  %5 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %6 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NVM_RSP_ERR_EMPTYPAGE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 2
  %13 = call i32 @atomic_long_inc(i32* %12)
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %16 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %26 [
    i32 128, label %18
    i32 129, label %22
    i32 130, label %22
  ]

18:                                               ; preds = %14
  %19 = load %struct.pblk*, %struct.pblk** %3, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 1
  %21 = call i32 @atomic_long_inc(i32* %20)
  br label %32

22:                                               ; preds = %14, %14
  %23 = load %struct.pblk*, %struct.pblk** %3, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 0
  %25 = call i32 @atomic_long_inc(i32* %24)
  br label %32

26:                                               ; preds = %14
  %27 = load %struct.pblk*, %struct.pblk** %3, align 8
  %28 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %29 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pblk_err(%struct.pblk* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %10, %26, %22, %18
  ret void
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
