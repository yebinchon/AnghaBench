; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.usnic_ib_mr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"va 0x%lx length 0x%zx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_dereg_mr(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.usnic_ib_mr*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %7 = call %struct.usnic_ib_mr* @to_umr(%struct.ib_mr* %6)
  store %struct.usnic_ib_mr* %7, %struct.usnic_ib_mr** %5, align 8
  %8 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %5, align 8
  %9 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %5, align 8
  %14 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usnic_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  %19 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %5, align 8
  %20 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @usnic_uiom_reg_release(%struct.TYPE_2__* %21)
  %23 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %5, align 8
  %24 = call i32 @kfree(%struct.usnic_ib_mr* %23)
  ret i32 0
}

declare dso_local %struct.usnic_ib_mr* @to_umr(%struct.ib_mr*) #1

declare dso_local i32 @usnic_dbg(i8*, i32, i32) #1

declare dso_local i32 @usnic_uiom_reg_release(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.usnic_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
