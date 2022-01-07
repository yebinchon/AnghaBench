; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm_msgs.h_cm_req_set_primary_subnet_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm_msgs.h_cm_req_set_primary_subnet_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, i32)* @cm_req_set_primary_subnet_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_req_set_primary_subnet_local(%struct.cm_req_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.cm_req_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %6 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 247
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 1
  %11 = shl i32 %10, 3
  %12 = or i32 %8, %11
  %13 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %14 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
