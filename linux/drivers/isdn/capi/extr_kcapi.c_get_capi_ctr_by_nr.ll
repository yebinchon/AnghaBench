; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_get_capi_ctr_by_nr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_get_capi_ctr_by_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { i32 }

@CAPI_MAXCONTR = common dso_local global i32 0, align 4
@capi_controller = common dso_local global %struct.capi_ctr** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.capi_ctr* (i32)* @get_capi_ctr_by_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.capi_ctr* @get_capi_ctr_by_nr(i32 %0) #0 {
  %2 = alloca %struct.capi_ctr*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* @CAPI_MAXCONTR, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store %struct.capi_ctr* null, %struct.capi_ctr** %2, align 8
  br label %19

12:                                               ; preds = %6
  %13 = load %struct.capi_ctr**, %struct.capi_ctr*** @capi_controller, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.capi_ctr*, %struct.capi_ctr** %13, i64 %16
  %18 = load %struct.capi_ctr*, %struct.capi_ctr** %17, align 8
  store %struct.capi_ctr* %18, %struct.capi_ctr** %2, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load %struct.capi_ctr*, %struct.capi_ctr** %2, align 8
  ret %struct.capi_ctr* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
