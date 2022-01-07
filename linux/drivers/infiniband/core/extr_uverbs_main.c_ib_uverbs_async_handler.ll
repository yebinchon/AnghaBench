; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_async_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_async_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_file = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.list_head, i64 }
%struct.list_head = type { i32 }
%struct.ib_uverbs_event = type { i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_uverbs_file*, i8*, i8*, %struct.list_head*, i32*)* @ib_uverbs_async_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_async_handler(%struct.ib_uverbs_file* %0, i8* %1, i8* %2, %struct.list_head* %3, i32* %4) #0 {
  %6 = alloca %struct.ib_uverbs_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ib_uverbs_event*, align 8
  %12 = alloca i64, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i64, i64* %12, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %103

35:                                               ; preds = %5
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.ib_uverbs_event* @kmalloc(i32 40, i32 %36)
  store %struct.ib_uverbs_event* %37, %struct.ib_uverbs_event** %11, align 8
  %38 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %39 = icmp ne %struct.ib_uverbs_event* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %42 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %103

48:                                               ; preds = %35
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %51 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i8* %49, i8** %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %56 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i8* %54, i8** %58, align 8
  %59 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %60 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %65 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %67 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %66, i32 0, i32 1
  %68 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %69 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = call i32 @list_add_tail(i32* %67, %struct.list_head* %72)
  %74 = load %struct.list_head*, %struct.list_head** %9, align 8
  %75 = icmp ne %struct.list_head* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %48
  %77 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %78 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %77, i32 0, i32 0
  %79 = load %struct.list_head*, %struct.list_head** %9, align 8
  %80 = call i32 @list_add_tail(i32* %78, %struct.list_head* %79)
  br label %81

81:                                               ; preds = %76, %48
  %82 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %83 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %90 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = call i32 @wake_up_interruptible(i32* %93)
  %95 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %96 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* @SIGIO, align 4
  %101 = load i32, i32* @POLL_IN, align 4
  %102 = call i32 @kill_fasync(i32* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %81, %40, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ib_uverbs_event* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
