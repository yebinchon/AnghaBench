; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_sysfs.c_usnic_ib_sysfs_qpn_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_sysfs.c_usnic_ib_sysfs_qpn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usnic_ib_dev* }
%struct.usnic_ib_dev = type { i32 }

@usnic_ib_qpn_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usnic_ib_sysfs_qpn_add(%struct.usnic_ib_qp_grp* %0) #0 {
  %2 = alloca %struct.usnic_ib_qp_grp*, align 8
  %3 = alloca %struct.usnic_ib_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %2, align 8
  %5 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %6 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  store %struct.usnic_ib_dev* %9, %struct.usnic_ib_dev** %3, align 8
  %10 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %11 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %10, i32 0, i32 1
  %12 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %3, align 8
  %13 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kobject_get(i32 %14)
  %16 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %17 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kobject_init_and_add(i32* %11, i32* @usnic_ib_qpn_type, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kobject_put(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kobject_get(i32) #1

declare dso_local i32 @kobject_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
