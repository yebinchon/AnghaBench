; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_aspm.c___aspm_ctx_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_aspm.c___aspm_ctx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i8*, i32, i32, i32, i32, i8*, i32 }

@ASPM_TRIGGER_NS = common dso_local global i32 0, align 4
@ASPM_RESCHED_TIMER_MS = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ASPM_TIMER_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__aspm_ctx_disable(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca %struct.hfi1_ctxtdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %2, align 8
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %8, i32 0, i32 2
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %19 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = call i8* (...) @ktime_get()
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %24 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @ktime_sub(i8* %25, i8* %26)
  %28 = call i32 @ktime_to_ns(i32 %27)
  %29 = load i32, i32* @ASPM_TRIGGER_NS, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %34 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @ktime_sub(i8* %32, i8* %35)
  %37 = call i32 @ktime_to_ns(i32 %36)
  %38 = load i32, i32* @ASPM_RESCHED_TIMER_MS, align 4
  %39 = load i32, i32* @NSEC_PER_MSEC, align 4
  %40 = mul nsw i32 %38, %39
  %41 = icmp sgt i32 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %17
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %17
  %49 = phi i1 [ false, %17 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  %51 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %52 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %60 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @aspm_disable_inc(i32 %61)
  %63 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %64 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %55, %48
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %70 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %69, i32 0, i32 3
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i32, i32* @ASPM_TIMER_MS, align 4
  %73 = call i64 @msecs_to_jiffies(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @mod_timer(i32* %70, i64 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %78 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %68, %65
  br label %80

80:                                               ; preds = %79, %16
  %81 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %82 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %81, i32 0, i32 2
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @ktime_get(...) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i8*, i8*) #1

declare dso_local i32 @aspm_disable_inc(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
