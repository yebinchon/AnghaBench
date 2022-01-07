; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_free_rqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_free_rqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32 }
%struct.nvm_rq = type { i32 }
%struct.pblk_c_ctx = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"trying to free unknown rqd type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_free_rqd(%struct.pblk* %0, %struct.nvm_rq* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %16
    i32 130, label %19
    i32 131, label %22
  ]

9:                                                ; preds = %3
  %10 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %11 = call i64 @nvm_rq_to_pdu(%struct.nvm_rq* %10)
  %12 = inttoptr i64 %11 to %struct.pblk_c_ctx*
  %13 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  br label %16

16:                                               ; preds = %3, %9
  %17 = load %struct.pblk*, %struct.pblk** %4, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 2
  store i32* %18, i32** %7, align 8
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.pblk*, %struct.pblk** %4, align 8
  %21 = getelementptr inbounds %struct.pblk, %struct.pblk* %20, i32 0, i32 1
  store i32* %21, i32** %7, align 8
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.pblk*, %struct.pblk** %4, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 0
  store i32* %24, i32** %7, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load %struct.pblk*, %struct.pblk** %4, align 8
  %27 = call i32 @pblk_err(%struct.pblk* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %35

28:                                               ; preds = %22, %19, %16
  %29 = load %struct.pblk*, %struct.pblk** %4, align 8
  %30 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %31 = call i32 @pblk_free_rqd_meta(%struct.pblk* %29, %struct.nvm_rq* %30)
  %32 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @mempool_free(%struct.nvm_rq* %32, i32* %33)
  br label %35

35:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i32 @pblk_free_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @mempool_free(%struct.nvm_rq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
