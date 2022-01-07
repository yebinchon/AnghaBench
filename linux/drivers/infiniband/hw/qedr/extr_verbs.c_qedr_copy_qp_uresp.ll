; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_qp_uresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_qp_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i64 }
%struct.qedr_qp = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_create_qp_uresp = type { i32, i32 }

@IB_ATOMIC_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"create qp: failed a copy to user space with qp icid=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_udata*)* @qedr_copy_qp_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_copy_qp_uresp(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qedr_qp*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.qedr_create_qp_uresp, align 4
  %8 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %9 = call i32 @memset(%struct.qedr_create_qp_uresp* %7, i32 0, i32 8)
  %10 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %11 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %12 = call i32 @qedr_copy_sq_uresp(%struct.qedr_dev* %10, %struct.qedr_create_qp_uresp* %7, %struct.qedr_qp* %11)
  %13 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %14 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %15 = call i32 @qedr_copy_rq_uresp(%struct.qedr_dev* %13, %struct.qedr_create_qp_uresp* %7, %struct.qedr_qp* %14)
  %16 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %17 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_ATOMIC_NONE, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %24 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %28 = call i32 @qedr_ib_copy_to_udata(%struct.ib_udata* %27, %struct.qedr_create_qp_uresp* %7, i32 8)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %33 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %34 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DP_ERR(%struct.qedr_dev* %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %3
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.qedr_create_qp_uresp*, i32, i32) #1

declare dso_local i32 @qedr_copy_sq_uresp(%struct.qedr_dev*, %struct.qedr_create_qp_uresp*, %struct.qedr_qp*) #1

declare dso_local i32 @qedr_copy_rq_uresp(%struct.qedr_dev*, %struct.qedr_create_qp_uresp*, %struct.qedr_qp*) #1

declare dso_local i32 @qedr_ib_copy_to_udata(%struct.ib_udata*, %struct.qedr_create_qp_uresp*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
