; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_node_desc_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_node_desc_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.trap_node = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_NOTICE_TYPE_INFO = common dso_local global i32 0, align 4
@OPA_TRAP_CHANGE_CAPABILITY = common dso_local global i32 0, align 4
@OPA_NOTICE_TRAP_NODE_DESC_CHG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_node_desc_chg(%struct.hfi1_ibport* %0) #0 {
  %2 = alloca %struct.hfi1_ibport*, align 8
  %3 = alloca %struct.trap_node*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %2, align 8
  %5 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %2, align 8
  %6 = call %struct.TYPE_6__* @ppd_from_ibp(%struct.hfi1_ibport* %5)
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @IB_NOTICE_TYPE_INFO, align 4
  %10 = load i32, i32* @OPA_TRAP_CHANGE_CAPABILITY, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.trap_node* @create_trap_node(i32 %9, i32 %10, i32 %11)
  store %struct.trap_node* %12, %struct.trap_node** %3, align 8
  %13 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %14 = icmp ne %struct.trap_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %18 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %22 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @OPA_NOTICE_TRAP_NODE_DESC_CHG, align 4
  %26 = call i32 @cpu_to_be16(i32 %25)
  %27 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %28 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %32 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %31, i32 0, i32 0
  store i32 12, i32* %32, align 4
  %33 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %2, align 8
  %34 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %35 = call i32 @send_trap(%struct.hfi1_ibport* %33, %struct.trap_node* %34)
  br label %36

36:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.TYPE_6__* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.trap_node* @create_trap_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @send_trap(%struct.hfi1_ibport*, %struct.trap_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
