; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_set_phys_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_set_phys_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_notifier = type { i32, i32, i64, i32 (i64, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_notifier_set_phys_addr(%struct.cec_notifier* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_notifier*, align 8
  %4 = alloca i32, align 4
  store %struct.cec_notifier* %0, %struct.cec_notifier** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %6 = icmp eq %struct.cec_notifier* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %48

8:                                                ; preds = %2
  %9 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %10 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %14 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %16 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %15, i32 0, i32 3
  %17 = load i32 (i64, i32)*, i32 (i64, i32)** %16, align 8
  %18 = icmp ne i32 (i64, i32)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %8
  %20 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %21 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %20, i32 0, i32 3
  %22 = load i32 (i64, i32)*, i32 (i64, i32)** %21, align 8
  %23 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %24 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %27 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %22(i64 %25, i32 %28)
  br label %44

30:                                               ; preds = %8
  %31 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %32 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %37 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %40 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cec_s_phys_addr(i64 %38, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %35, %30
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.cec_notifier*, %struct.cec_notifier** %3, align 8
  %46 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cec_s_phys_addr(i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
