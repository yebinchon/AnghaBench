; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_is_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_is_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_msgmgr_desc = type { i32, i32 }
%struct.ti_queue_inst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_msgmgr_desc*, %struct.ti_queue_inst*)* @ti_msgmgr_queue_is_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_msgmgr_queue_is_error(%struct.ti_msgmgr_desc* %0, %struct.ti_queue_inst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_msgmgr_desc*, align 8
  %5 = alloca %struct.ti_queue_inst*, align 8
  %6 = alloca i32, align 4
  store %struct.ti_msgmgr_desc* %0, %struct.ti_msgmgr_desc** %4, align 8
  store %struct.ti_queue_inst* %1, %struct.ti_queue_inst** %5, align 8
  %7 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %4, align 8
  %8 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %5, align 8
  %14 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl(i32 %15)
  %17 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %4, align 8
  %18 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
