; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_task.c_rxe_init_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_task.c_rxe_init_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_task = type { i32 (i8*)*, i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rxe_do_task = common dso_local global i32 0, align 4
@TASK_STATE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_init_task(i8* %0, %struct.rxe_task* %1, i8* %2, i32 (i8*)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rxe_task*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.rxe_task* %1, %struct.rxe_task** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (i8*)* %3, i32 (i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %13 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %12, i32 0, i32 7
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %16 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %18 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %19 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %18, i32 0, i32 0
  store i32 (i8*)* %17, i32 (i8*)** %19, align 8
  %20 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %21 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %26 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %28 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %27, i32 0, i32 4
  %29 = load i32, i32* @rxe_do_task, align 4
  %30 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %31 = ptrtoint %struct.rxe_task* %30 to i64
  %32 = call i32 @tasklet_init(i32* %28, i32 %29, i64 %31)
  %33 = load i32, i32* @TASK_STATE_START, align 4
  %34 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %35 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rxe_task*, %struct.rxe_task** %7, align 8
  %37 = getelementptr inbounds %struct.rxe_task, %struct.rxe_task* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_init(i32* %37)
  ret i32 0
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
