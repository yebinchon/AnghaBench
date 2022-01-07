; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_gen_run_ws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_gen_run_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.pblk_line = type { i32 }
%struct.work_struct = type opaque
%struct.workqueue_struct = type { i32 }
%struct.pblk_line_ws = type { i32, i8*, %struct.pblk_line*, %struct.pblk* }
%struct.work_struct.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_gen_run_ws(%struct.pblk* %0, %struct.pblk_line* %1, i8* %2, void (%struct.work_struct*)* %3, i32 %4, %struct.workqueue_struct* %5) #0 {
  %7 = alloca %struct.pblk*, align 8
  %8 = alloca %struct.pblk_line*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (%struct.work_struct*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.workqueue_struct*, align 8
  %13 = alloca %struct.pblk_line_ws*, align 8
  store %struct.pblk* %0, %struct.pblk** %7, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %8, align 8
  store i8* %2, i8** %9, align 8
  store void (%struct.work_struct*)* %3, void (%struct.work_struct*)** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.workqueue_struct* %5, %struct.workqueue_struct** %12, align 8
  %14 = load %struct.pblk*, %struct.pblk** %7, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 0
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.pblk_line_ws* @mempool_alloc(i32* %15, i32 %16)
  store %struct.pblk_line_ws* %17, %struct.pblk_line_ws** %13, align 8
  %18 = load %struct.pblk*, %struct.pblk** %7, align 8
  %19 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %13, align 8
  %20 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %19, i32 0, i32 3
  store %struct.pblk* %18, %struct.pblk** %20, align 8
  %21 = load %struct.pblk_line*, %struct.pblk_line** %8, align 8
  %22 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %13, align 8
  %23 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %22, i32 0, i32 2
  store %struct.pblk_line* %21, %struct.pblk_line** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %13, align 8
  %26 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %13, align 8
  %28 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %27, i32 0, i32 0
  %29 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %10, align 8
  %30 = bitcast void (%struct.work_struct*)* %29 to void (%struct.work_struct.0*)*
  %31 = call i32 @INIT_WORK(i32* %28, void (%struct.work_struct.0*)* %30)
  %32 = load %struct.workqueue_struct*, %struct.workqueue_struct** %12, align 8
  %33 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %13, align 8
  %34 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %33, i32 0, i32 0
  %35 = call i32 @queue_work(%struct.workqueue_struct* %32, i32* %34)
  ret void
}

declare dso_local %struct.pblk_line_ws* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @queue_work(%struct.workqueue_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
