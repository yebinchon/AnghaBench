; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.efa_dev = type { i32, i32 }
%struct.efa_com_dereg_mr_params = type { i32 }
%struct.efa_mr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Deregister mr[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_dereg_mr(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.efa_dev*, align 8
  %7 = alloca %struct.efa_com_dereg_mr_params, align 4
  %8 = alloca %struct.efa_mr*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %10 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %11 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.efa_dev* @to_edev(i32 %12)
  store %struct.efa_dev* %13, %struct.efa_dev** %6, align 8
  %14 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %15 = call %struct.efa_mr* @to_emr(%struct.ib_mr* %14)
  store %struct.efa_mr* %15, %struct.efa_mr** %8, align 8
  %16 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %17 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %16, i32 0, i32 1
  %18 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ibdev_dbg(i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.efa_mr*, %struct.efa_mr** %8, align 8
  %23 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.efa_com_dereg_mr_params, %struct.efa_com_dereg_mr_params* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %28 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %27, i32 0, i32 0
  %29 = call i32 @efa_com_dereg_mr(i32* %28, %struct.efa_com_dereg_mr_params* %7)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.efa_mr*, %struct.efa_mr** %8, align 8
  %36 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ib_umem_release(i32 %37)
  %39 = load %struct.efa_mr*, %struct.efa_mr** %8, align 8
  %40 = call i32 @kfree(%struct.efa_mr* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %32
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

declare dso_local %struct.efa_mr* @to_emr(%struct.ib_mr*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @efa_com_dereg_mr(i32*, %struct.efa_com_dereg_mr_params*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.efa_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
