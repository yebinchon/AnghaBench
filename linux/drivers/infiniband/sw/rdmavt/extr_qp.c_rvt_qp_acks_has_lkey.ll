; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_acks_has_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_acks_has_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.rvt_ack_entry*, %struct.TYPE_3__ }
%struct.rvt_ack_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_dev_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, i32)* @rvt_qp_acks_has_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_qp_acks_has_lkey(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvt_dev_info*, align 8
  %8 = alloca %struct.rvt_ack_entry*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %12)
  store %struct.rvt_dev_info* %13, %struct.rvt_dev_info** %7, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 0
  %17 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %16, align 8
  %18 = icmp ne %struct.rvt_ack_entry* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %7, align 8
  %22 = call i32 @rvt_max_atomic(%struct.rvt_dev_info* %21)
  %23 = icmp slt i32 %20, %22
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %45

26:                                               ; preds = %24
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 0
  %29 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %29, i64 %31
  store %struct.rvt_ack_entry* %32, %struct.rvt_ack_entry** %8, align 8
  %33 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %8, align 8
  %34 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @rvt_mr_has_lkey(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %46

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %14

45:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rvt_max_atomic(%struct.rvt_dev_info*) #1

declare dso_local i64 @rvt_mr_has_lkey(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
