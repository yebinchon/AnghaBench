; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_host1x_intr_put_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_host1x_intr_put_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.host1x_syncpt* }
%struct.host1x_syncpt = type { i32 }
%struct.host1x_waitlist = type { i32, i32 }

@WLS_PENDING = common dso_local global i32 0, align 4
@WLS_CANCELLED = common dso_local global i32 0, align 4
@WLS_REMOVED = common dso_local global i64 0, align 8
@waiter_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_intr_put_ref(%struct.host1x* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.host1x_waitlist*, align 8
  %8 = alloca %struct.host1x_syncpt*, align 8
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.host1x_waitlist*
  store %struct.host1x_waitlist* %10, %struct.host1x_waitlist** %7, align 8
  br label %11

11:                                               ; preds = %19, %3
  %12 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %7, align 8
  %13 = getelementptr inbounds %struct.host1x_waitlist, %struct.host1x_waitlist* %12, i32 0, i32 1
  %14 = load i32, i32* @WLS_PENDING, align 4
  %15 = load i32, i32* @WLS_CANCELLED, align 4
  %16 = call i64 @atomic_cmpxchg(i32* %13, i32 %14, i32 %15)
  %17 = load i64, i64* @WLS_REMOVED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 (...) @schedule()
  br label %11

21:                                               ; preds = %11
  %22 = load %struct.host1x*, %struct.host1x** %4, align 8
  %23 = getelementptr inbounds %struct.host1x, %struct.host1x* %22, i32 0, i32 0
  %24 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %24, i64 %26
  store %struct.host1x_syncpt* %27, %struct.host1x_syncpt** %8, align 8
  %28 = load %struct.host1x*, %struct.host1x** %4, align 8
  %29 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %30 = load %struct.host1x*, %struct.host1x** %4, align 8
  %31 = getelementptr inbounds %struct.host1x, %struct.host1x* %30, i32 0, i32 0
  %32 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %32, i64 %34
  %36 = call i32 @host1x_syncpt_load(%struct.host1x_syncpt* %35)
  %37 = call i32 @process_wait_list(%struct.host1x* %28, %struct.host1x_syncpt* %29, i32 %36)
  %38 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %7, align 8
  %39 = getelementptr inbounds %struct.host1x_waitlist, %struct.host1x_waitlist* %38, i32 0, i32 0
  %40 = load i32, i32* @waiter_release, align 4
  %41 = call i32 @kref_put(i32* %39, i32 %40)
  ret void
}

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @process_wait_list(%struct.host1x*, %struct.host1x_syncpt*, i32) #1

declare dso_local i32 @host1x_syncpt_load(%struct.host1x_syncpt*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
