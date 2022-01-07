; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_conn_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_conn_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_notifier = type { i32, i64, i32, i32 }

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_notifier_conn_unregister(%struct.cec_notifier* %0) #0 {
  %2 = alloca %struct.cec_notifier*, align 8
  store %struct.cec_notifier* %0, %struct.cec_notifier** %2, align 8
  %3 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %4 = icmp ne %struct.cec_notifier* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %8 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %11 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %10, i32 0, i32 3
  %12 = call i32 @memset(i32* %11, i32 0, i32 4)
  %13 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %14 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %15 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %17 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %6
  %21 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %22 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @cec_phys_addr_invalidate(i64 %23)
  %25 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %26 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cec_s_conn_info(i64 %27, i32* null)
  br label %29

29:                                               ; preds = %20, %6
  %30 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %31 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.cec_notifier*, %struct.cec_notifier** %2, align 8
  %34 = call i32 @cec_notifier_put(%struct.cec_notifier* %33)
  br label %35

35:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cec_phys_addr_invalidate(i64) #1

declare dso_local i32 @cec_s_conn_info(i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cec_notifier_put(%struct.cec_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
