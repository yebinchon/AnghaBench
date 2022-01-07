; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_port_pkey_list_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_port_pkey_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_port_pkey = type { i64, i32 }
%struct.pkey_index_qp_list = type { i32 }

@IB_PORT_PKEY_LISTED = common dso_local global i64 0, align 8
@IB_PORT_PKEY_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_port_pkey*)* @port_pkey_list_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_pkey_list_remove(%struct.ib_port_pkey* %0) #0 {
  %2 = alloca %struct.ib_port_pkey*, align 8
  %3 = alloca %struct.pkey_index_qp_list*, align 8
  store %struct.ib_port_pkey* %0, %struct.ib_port_pkey** %2, align 8
  %4 = load %struct.ib_port_pkey*, %struct.ib_port_pkey** %2, align 8
  %5 = getelementptr inbounds %struct.ib_port_pkey, %struct.ib_port_pkey* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IB_PORT_PKEY_LISTED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.ib_port_pkey*, %struct.ib_port_pkey** %2, align 8
  %12 = call %struct.pkey_index_qp_list* @get_pkey_idx_qp_list(%struct.ib_port_pkey* %11)
  store %struct.pkey_index_qp_list* %12, %struct.pkey_index_qp_list** %3, align 8
  %13 = load %struct.pkey_index_qp_list*, %struct.pkey_index_qp_list** %3, align 8
  %14 = getelementptr inbounds %struct.pkey_index_qp_list, %struct.pkey_index_qp_list* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ib_port_pkey*, %struct.ib_port_pkey** %2, align 8
  %17 = getelementptr inbounds %struct.ib_port_pkey, %struct.ib_port_pkey* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.pkey_index_qp_list*, %struct.pkey_index_qp_list** %3, align 8
  %20 = getelementptr inbounds %struct.pkey_index_qp_list, %struct.pkey_index_qp_list* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i64, i64* @IB_PORT_PKEY_VALID, align 8
  %23 = load %struct.ib_port_pkey*, %struct.ib_port_pkey** %2, align 8
  %24 = getelementptr inbounds %struct.ib_port_pkey, %struct.ib_port_pkey* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.pkey_index_qp_list* @get_pkey_idx_qp_list(%struct.ib_port_pkey*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
