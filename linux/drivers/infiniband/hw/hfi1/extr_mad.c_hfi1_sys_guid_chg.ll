; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_sys_guid_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_sys_guid_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.trap_node = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_NOTICE_TYPE_INFO = common dso_local global i32 0, align 4
@OPA_TRAP_CHANGE_SYSGUID = common dso_local global i32 0, align 4
@ib_hfi1_sys_image_guid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_sys_guid_chg(%struct.hfi1_ibport* %0) #0 {
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
  %10 = load i32, i32* @OPA_TRAP_CHANGE_SYSGUID, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.trap_node* @create_trap_node(i32 %9, i32 %10, i32 %11)
  store %struct.trap_node* %12, %struct.trap_node** %3, align 8
  %13 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %14 = icmp ne %struct.trap_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @ib_hfi1_sys_image_guid, align 4
  %18 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %19 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %23 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %27 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %31 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %30, i32 0, i32 0
  store i32 12, i32* %31, align 4
  %32 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %2, align 8
  %33 = load %struct.trap_node*, %struct.trap_node** %3, align 8
  %34 = call i32 @send_trap(%struct.hfi1_ibport* %32, %struct.trap_node* %33)
  br label %35

35:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.TYPE_6__* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.trap_node* @create_trap_node(i32, i32, i32) #1

declare dso_local i32 @send_trap(%struct.hfi1_ibport*, %struct.trap_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
