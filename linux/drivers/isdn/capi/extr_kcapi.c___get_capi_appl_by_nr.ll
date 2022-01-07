; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c___get_capi_appl_by_nr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c___get_capi_appl_by_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi20_appl = type { i32 }

@capi_controller_lock = common dso_local global i32 0, align 4
@CAPI_MAXAPPL = common dso_local global i32 0, align 4
@capi_applications = common dso_local global %struct.capi20_appl** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.capi20_appl* (i32)* @__get_capi_appl_by_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.capi20_appl* @__get_capi_appl_by_nr(i32 %0) #0 {
  %2 = alloca %struct.capi20_appl*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 @lockdep_assert_held(i32* @capi_controller_lock)
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @CAPI_MAXAPPL, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store %struct.capi20_appl* null, %struct.capi20_appl** %2, align 8
  br label %20

13:                                               ; preds = %7
  %14 = load %struct.capi20_appl**, %struct.capi20_appl*** @capi_applications, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.capi20_appl*, %struct.capi20_appl** %14, i64 %17
  %19 = load %struct.capi20_appl*, %struct.capi20_appl** %18, align 8
  store %struct.capi20_appl* %19, %struct.capi20_appl** %2, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load %struct.capi20_appl*, %struct.capi20_appl** %2, align 8
  ret %struct.capi20_appl* %21
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
