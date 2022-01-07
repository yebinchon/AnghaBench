; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_get_card_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_get_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_cinfo = type { i64 }

@inf_card_info = common dso_local global %struct.inf_cinfo* null, align 8
@INF_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inf_cinfo* (i32)* @get_card_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inf_cinfo* @get_card_info(i32 %0) #0 {
  %2 = alloca %struct.inf_cinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inf_cinfo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.inf_cinfo*, %struct.inf_cinfo** @inf_card_info, align 8
  store %struct.inf_cinfo* %5, %struct.inf_cinfo** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.inf_cinfo*, %struct.inf_cinfo** %4, align 8
  %8 = getelementptr inbounds %struct.inf_cinfo, %struct.inf_cinfo* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INF_NONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.inf_cinfo*, %struct.inf_cinfo** %4, align 8
  %14 = getelementptr inbounds %struct.inf_cinfo, %struct.inf_cinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.inf_cinfo*, %struct.inf_cinfo** %4, align 8
  store %struct.inf_cinfo* %20, %struct.inf_cinfo** %2, align 8
  br label %25

21:                                               ; preds = %12
  %22 = load %struct.inf_cinfo*, %struct.inf_cinfo** %4, align 8
  %23 = getelementptr inbounds %struct.inf_cinfo, %struct.inf_cinfo* %22, i32 1
  store %struct.inf_cinfo* %23, %struct.inf_cinfo** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.inf_cinfo* null, %struct.inf_cinfo** %2, align 8
  br label %25

25:                                               ; preds = %24, %19
  %26 = load %struct.inf_cinfo*, %struct.inf_cinfo** %2, align 8
  ret %struct.inf_cinfo* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
