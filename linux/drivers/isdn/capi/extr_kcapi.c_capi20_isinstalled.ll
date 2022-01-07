; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_capi20_isinstalled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_capi20_isinstalled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CAPI_REGNOTINSTALLED = common dso_local global i32 0, align 4
@capi_controller_lock = common dso_local global i32 0, align 4
@CAPI_MAXCONTR = common dso_local global i32 0, align 4
@capi_controller = common dso_local global %struct.TYPE_2__** null, align 8
@CAPI_CTR_RUNNING = common dso_local global i64 0, align 8
@CAPI_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capi20_isinstalled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CAPI_REGNOTINSTALLED, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 @mutex_lock(i32* @capi_controller_lock)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CAPI_MAXCONTR, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @capi_controller, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @capi_controller, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CAPI_CTR_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %27, i32* %1, align 4
  br label %32

28:                                               ; preds = %16, %9
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %5

32:                                               ; preds = %26, %5
  %33 = call i32 @mutex_unlock(i32* @capi_controller_lock)
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
