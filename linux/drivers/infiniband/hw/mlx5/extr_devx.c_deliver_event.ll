; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_deliver_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devx_event_subscription = type { i32, i32, %struct.devx_async_event_file* }
%struct.devx_async_event_file = type { i32, i32, i32, i32, i64 }
%struct.devx_async_event_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devx_event_subscription*, i8*)* @deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deliver_event(%struct.devx_event_subscription* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devx_event_subscription*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.devx_async_event_file*, align 8
  %7 = alloca %struct.devx_async_event_data*, align 8
  %8 = alloca i64, align 8
  store %struct.devx_event_subscription* %0, %struct.devx_event_subscription** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %10 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %9, i32 0, i32 2
  %11 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %10, align 8
  store %struct.devx_async_event_file* %11, %struct.devx_async_event_file** %6, align 8
  %12 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %13 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %18 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %17, i32 0, i32 2
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %22 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  %26 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %27 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %26, i32 0, i32 2
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  store i32 0, i32* %3, align 4
  br label %90

30:                                               ; preds = %16
  %31 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %32 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %31, i32 0, i32 1
  %33 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %34 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %33, i32 0, i32 3
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %37 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %36, i32 0, i32 2
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %41 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %40, i32 0, i32 1
  %42 = call i32 @wake_up_interruptible(i32* %41)
  store i32 0, i32* %3, align 4
  br label %90

43:                                               ; preds = %2
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.devx_async_event_data* @kzalloc(i32 16, i32 %44)
  store %struct.devx_async_event_data* %45, %struct.devx_async_event_data** %7, align 8
  %46 = load %struct.devx_async_event_data*, %struct.devx_async_event_data** %7, align 8
  %47 = icmp ne %struct.devx_async_event_data* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %43
  %49 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %50 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %49, i32 0, i32 2
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %54 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %56 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %55, i32 0, i32 2
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %90

61:                                               ; preds = %43
  %62 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %63 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.devx_async_event_data*, %struct.devx_async_event_data** %7, align 8
  %66 = getelementptr inbounds %struct.devx_async_event_data, %struct.devx_async_event_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.devx_async_event_data*, %struct.devx_async_event_data** %7, align 8
  %69 = getelementptr inbounds %struct.devx_async_event_data, %struct.devx_async_event_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @memcpy(i32 %71, i8* %72, i32 4)
  %74 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %75 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %74, i32 0, i32 2
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load %struct.devx_async_event_data*, %struct.devx_async_event_data** %7, align 8
  %79 = getelementptr inbounds %struct.devx_async_event_data, %struct.devx_async_event_data* %78, i32 0, i32 0
  %80 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %81 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %80, i32 0, i32 3
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  %83 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %84 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %83, i32 0, i32 2
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.devx_async_event_file*, %struct.devx_async_event_file** %6, align 8
  %88 = getelementptr inbounds %struct.devx_async_event_file, %struct.devx_async_event_file* %87, i32 0, i32 1
  %89 = call i32 @wake_up_interruptible(i32* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %61, %48, %30, %25
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.devx_async_event_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
