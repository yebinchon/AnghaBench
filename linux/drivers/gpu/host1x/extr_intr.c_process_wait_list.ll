; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_process_wait_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_process_wait_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }
%struct.host1x_syncpt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }

@HOST1X_INTR_ACTION_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x*, %struct.host1x_syncpt*, i32)* @process_wait_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_wait_list(%struct.host1x* %0, %struct.host1x_syncpt* %1, i32 %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.host1x_syncpt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store %struct.host1x_syncpt* %1, %struct.host1x_syncpt** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @HOST1X_INTR_ACTION_COUNT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca %struct.list_head, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %24, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @HOST1X_INTR_ACTION_COUNT, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 %21
  %23 = call i32 @INIT_LIST_HEAD(%struct.list_head* %22)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %29 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %33 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @remove_completed_waiters(i32* %34, i32 %35, %struct.list_head* %14)
  %37 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %38 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @list_empty(i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load %struct.host1x*, %struct.host1x** %4, align 8
  %45 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %46 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @host1x_hw_intr_disable_syncpt_intr(%struct.host1x* %44, i32 %47)
  br label %58

49:                                               ; preds = %27
  %50 = load %struct.host1x*, %struct.host1x** %4, align 8
  %51 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %52 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %55 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @reset_threshold_interrupt(%struct.host1x* %50, i32* %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %60 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = call i32 @run_handlers(%struct.list_head* %14)
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @remove_completed_waiters(i32*, i32, %struct.list_head*) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @host1x_hw_intr_disable_syncpt_intr(%struct.host1x*, i32) #2

declare dso_local i32 @reset_threshold_interrupt(%struct.host1x*, i32*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @run_handlers(%struct.list_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
