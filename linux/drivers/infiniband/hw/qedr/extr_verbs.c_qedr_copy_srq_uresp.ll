; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_srq_uresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_srq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_srq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_create_srq_uresp = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"create srq: problem copying data to user space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_srq*, %struct.ib_udata*)* @qedr_copy_srq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_copy_srq_uresp(%struct.qedr_dev* %0, %struct.qedr_srq* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qedr_srq*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.qedr_create_srq_uresp, align 4
  %8 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qedr_srq* %1, %struct.qedr_srq** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %9 = bitcast %struct.qedr_create_srq_uresp* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.qedr_srq*, %struct.qedr_srq** %5, align 8
  %11 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.qedr_create_srq_uresp, %struct.qedr_create_srq_uresp* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %15 = call i32 @ib_copy_to_udata(%struct.ib_udata* %14, %struct.qedr_create_srq_uresp* %7, i32 4)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %20 = call i32 @DP_ERR(%struct.qedr_dev* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.qedr_create_srq_uresp*, i32) #2

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
