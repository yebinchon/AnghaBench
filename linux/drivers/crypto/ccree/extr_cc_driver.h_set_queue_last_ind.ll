; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.h_set_queue_last_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.h_set_queue_last_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64 }
%struct.cc_hw_desc = type { i32 }

@CC_HW_REV_712 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_drvdata*, %struct.cc_hw_desc*)* @set_queue_last_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_queue_last_ind(%struct.cc_drvdata* %0, %struct.cc_hw_desc* %1) #0 {
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_hw_desc*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %4, align 8
  %5 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %6 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CC_HW_REV_712, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %12 = call i32 @set_queue_last_ind_bit(%struct.cc_hw_desc* %11)
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @set_queue_last_ind_bit(%struct.cc_hw_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
