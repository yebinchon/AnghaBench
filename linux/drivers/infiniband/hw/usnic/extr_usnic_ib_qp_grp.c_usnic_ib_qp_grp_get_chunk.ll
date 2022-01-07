; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_get_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_get_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic_res_chunk = type { i32 }
%struct.usnic_ib_qp_grp = type { %struct.usnic_vnic_res_chunk** }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usnic_vnic_res_chunk* @usnic_ib_qp_grp_get_chunk(%struct.usnic_ib_qp_grp* %0, i32 %1) #0 {
  %3 = alloca %struct.usnic_vnic_res_chunk*, align 8
  %4 = alloca %struct.usnic_ib_qp_grp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %9 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %8, i32 0, i32 0
  %10 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %10, i64 %12
  %14 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %13, align 8
  %15 = icmp ne %struct.usnic_vnic_res_chunk* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %7
  %17 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %18 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %17, i32 0, i32 0
  %19 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %19, i64 %21
  %23 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %22, align 8
  %24 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %30 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %29, i32 0, i32 0
  %31 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %31, i64 %33
  %35 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %34, align 8
  store %struct.usnic_vnic_res_chunk* %35, %struct.usnic_vnic_res_chunk** %3, align 8
  br label %44

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.usnic_vnic_res_chunk* @ERR_PTR(i32 %42)
  store %struct.usnic_vnic_res_chunk* %43, %struct.usnic_vnic_res_chunk** %3, align 8
  br label %44

44:                                               ; preds = %40, %28
  %45 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %3, align 8
  ret %struct.usnic_vnic_res_chunk* %45
}

declare dso_local %struct.usnic_vnic_res_chunk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
