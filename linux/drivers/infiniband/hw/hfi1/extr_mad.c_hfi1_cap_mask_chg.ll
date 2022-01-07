; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_cap_mask_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_cap_mask_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { i32 }
%struct.trap_node = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.hfi1_ibdev = type { i32 }
%struct.hfi1_devdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.hfi1_ibport }
%struct.hfi1_ibport = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@IB_NOTICE_TYPE_INFO = common dso_local global i32 0, align 4
@OPA_TRAP_CHANGE_CAPABILITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_cap_mask_chg(%struct.rvt_dev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trap_node*, align 8
  %6 = alloca %struct.hfi1_ibdev*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca %struct.hfi1_ibport*, align 8
  %9 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %11 = call %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info* %10)
  store %struct.hfi1_ibdev* %11, %struct.hfi1_ibdev** %6, align 8
  %12 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %13 = call %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev* %12)
  store %struct.hfi1_devdata* %13, %struct.hfi1_devdata** %7, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.hfi1_ibport* %21, %struct.hfi1_ibport** %8, align 8
  %22 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %23 = call %struct.TYPE_10__* @ppd_from_ibp(%struct.hfi1_ibport* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @IB_NOTICE_TYPE_INFO, align 4
  %27 = load i32, i32* @OPA_TRAP_CHANGE_CAPABILITY, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.trap_node* @create_trap_node(i32 %26, i32 %27, i32 %28)
  store %struct.trap_node* %29, %struct.trap_node** %5, align 8
  %30 = load %struct.trap_node*, %struct.trap_node** %5, align 8
  %31 = icmp ne %struct.trap_node* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %65

33:                                               ; preds = %2
  %34 = load %struct.trap_node*, %struct.trap_node** %5, align 8
  %35 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.trap_node*, %struct.trap_node** %5, align 8
  %39 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %43 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = load %struct.trap_node*, %struct.trap_node** %5, align 8
  %48 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %52 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_be16(i32 %54)
  %56 = load %struct.trap_node*, %struct.trap_node** %5, align 8
  %57 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.trap_node*, %struct.trap_node** %5, align 8
  %61 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %60, i32 0, i32 0
  store i32 16, i32* %61, align 4
  %62 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %63 = load %struct.trap_node*, %struct.trap_node** %5, align 8
  %64 = call i32 @send_trap(%struct.hfi1_ibport* %62, %struct.trap_node* %63)
  br label %65

65:                                               ; preds = %33, %32
  ret void
}

declare dso_local %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev*) #1

declare dso_local %struct.TYPE_10__* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.trap_node* @create_trap_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @send_trap(%struct.hfi1_ibport*, %struct.trap_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
