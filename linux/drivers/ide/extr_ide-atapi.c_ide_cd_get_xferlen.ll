; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-atapi.c_ide_cd_get_xferlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-atapi.c_ide_cd_get_xferlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cd_get_xferlen(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %4 = load %struct.request*, %struct.request** %3, align 8
  %5 = call i32 @req_op(%struct.request* %4)
  switch i32 %5, label %6 [
    i32 129, label %7
    i32 128, label %7
    i32 131, label %10
    i32 130, label %10
  ]

6:                                                ; preds = %1
  store i32 32768, i32* %2, align 4
  br label %19

7:                                                ; preds = %1, %1
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = call i32 @blk_rq_bytes(%struct.request* %8)
  store i32 %9, i32* %2, align 4
  br label %19

10:                                               ; preds = %1, %1
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = call %struct.TYPE_2__* @ide_req(%struct.request* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %18 [
    i32 133, label %15
    i32 132, label %15
  ]

15:                                               ; preds = %10, %10
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = call i32 @blk_rq_bytes(%struct.request* %16)
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15, %7, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local %struct.TYPE_2__* @ide_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
