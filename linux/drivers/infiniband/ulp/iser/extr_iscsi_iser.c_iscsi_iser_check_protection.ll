; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_check_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_check_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { i64* }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32*)* @iscsi_iser_check_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_check_protection(%struct.iscsi_task* %0, i32* %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iscsi_iser_task*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 0
  %9 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %8, align 8
  store %struct.iscsi_iser_task* %9, %struct.iscsi_iser_task** %5, align 8
  %10 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @ISER_DIR_IN, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @ISER_DIR_IN, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @ISER_DIR_OUT, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @iser_check_task_pi_status(%struct.iscsi_iser_task* %24, i32 %25, i32* %26)
  ret i32 %27
}

declare dso_local i32 @iser_check_task_pi_status(%struct.iscsi_iser_task*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
