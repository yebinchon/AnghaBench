; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.siw_mr = type { i32 }
%struct.siw_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"deregister MR\0A\00", align 1
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_dereg_mr(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.siw_mr*, align 8
  %6 = alloca %struct.siw_device*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %8 = call %struct.siw_mr* @to_siw_mr(%struct.ib_mr* %7)
  store %struct.siw_mr* %8, %struct.siw_mr** %5, align 8
  %9 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %10 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.siw_device* @to_siw_dev(i32 %11)
  store %struct.siw_device* %12, %struct.siw_device** %6, align 8
  %13 = load %struct.siw_mr*, %struct.siw_mr** %5, align 8
  %14 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @siw_dbg_mem(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %18 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %17, i32 0, i32 0
  %19 = call i32 @atomic_dec(i32* %18)
  %20 = load %struct.siw_mr*, %struct.siw_mr** %5, align 8
  %21 = call i32 @siw_mr_drop_mem(%struct.siw_mr* %20)
  %22 = load %struct.siw_mr*, %struct.siw_mr** %5, align 8
  %23 = load i32, i32* @rcu, align 4
  %24 = call i32 @kfree_rcu(%struct.siw_mr* %22, i32 %23)
  ret i32 0
}

declare dso_local %struct.siw_mr* @to_siw_mr(%struct.ib_mr*) #1

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local i32 @siw_dbg_mem(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @siw_mr_drop_mem(%struct.siw_mr*) #1

declare dso_local i32 @kfree_rcu(%struct.siw_mr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
