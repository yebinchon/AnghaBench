; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_ctr_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_ctr_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { i32, i32, i32*, i32, i32, i32* }
%struct.capi20_appl = type { i32 }

@CAPI_CTR_DETECTED = common dso_local global i32 0, align 4
@CAPI_CTR_DETACHED = common dso_local global i32 0, align 4
@CAPI_MAXAPPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.capi_ctr*, i32)* @ctr_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_down(%struct.capi_ctr* %0, i32 %1) #0 {
  %3 = alloca %struct.capi_ctr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.capi20_appl*, align 8
  %6 = alloca i32, align 4
  store %struct.capi_ctr* %0, %struct.capi_ctr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %8 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CAPI_CTR_DETECTED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %14 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CAPI_CTR_DETACHED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  br label %57

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %22 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %24 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @memset(i32* %25, i32 0, i32 8)
  %27 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %28 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %27, i32 0, i32 4
  %29 = call i32 @memset(i32* %28, i32 0, i32 4)
  %30 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %31 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %30, i32 0, i32 3
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  %33 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %34 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @memset(i32* %35, i32 0, i32 8)
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %50, %19
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CAPI_MAXAPPL, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.capi20_appl* @__get_capi_appl_by_nr(i32 %42)
  store %struct.capi20_appl* %43, %struct.capi20_appl** %5, align 8
  %44 = load %struct.capi20_appl*, %struct.capi20_appl** %5, align 8
  %45 = icmp ne %struct.capi20_appl* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %48 = call i32 @capi_ctr_put(%struct.capi_ctr* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %55 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %54, i32 0, i32 1
  %56 = call i32 @wake_up_interruptible_all(i32* %55)
  br label %57

57:                                               ; preds = %53, %18
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.capi20_appl* @__get_capi_appl_by_nr(i32) #1

declare dso_local i32 @capi_ctr_put(%struct.capi_ctr*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
