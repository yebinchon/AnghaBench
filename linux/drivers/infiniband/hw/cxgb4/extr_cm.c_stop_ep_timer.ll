; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_stop_ep_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_stop_ep_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ep %p stopping\0A\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_ep*)* @stop_ep_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_ep_timer(%struct.c4iw_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_ep*, align 8
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  %4 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %4)
  %6 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %6, i32 0, i32 1
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load i32, i32* @TIMEOUT, align 4
  %10 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %11 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @test_and_set_bit(i32 %9, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %17 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %16, i32 0, i32 0
  %18 = call i32 @c4iw_put_ep(%struct.TYPE_2__* %17)
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
