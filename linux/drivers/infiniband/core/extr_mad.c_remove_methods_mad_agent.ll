; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_remove_methods_mad_agent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_remove_methods_mad_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_mgmt_method_table = type { %struct.ib_mad_agent_private** }
%struct.ib_mad_agent_private = type { i32 }

@IB_MGMT_MAX_METHODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_mgmt_method_table*, %struct.ib_mad_agent_private*)* @remove_methods_mad_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_methods_mad_agent(%struct.ib_mad_mgmt_method_table* %0, %struct.ib_mad_agent_private* %1) #0 {
  %3 = alloca %struct.ib_mad_mgmt_method_table*, align 8
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mad_mgmt_method_table* %0, %struct.ib_mad_mgmt_method_table** %3, align 8
  store %struct.ib_mad_agent_private* %1, %struct.ib_mad_agent_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @IB_MGMT_MAX_METHODS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %3, align 8
  %12 = getelementptr inbounds %struct.ib_mad_mgmt_method_table, %struct.ib_mad_mgmt_method_table* %11, i32 0, i32 0
  %13 = load %struct.ib_mad_agent_private**, %struct.ib_mad_agent_private*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %13, i64 %15
  %17 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %16, align 8
  %18 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %19 = icmp eq %struct.ib_mad_agent_private* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %3, align 8
  %22 = getelementptr inbounds %struct.ib_mad_mgmt_method_table, %struct.ib_mad_mgmt_method_table* %21, i32 0, i32 0
  %23 = load %struct.ib_mad_agent_private**, %struct.ib_mad_agent_private*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %23, i64 %25
  store %struct.ib_mad_agent_private* null, %struct.ib_mad_agent_private** %26, align 8
  br label %27

27:                                               ; preds = %20, %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
