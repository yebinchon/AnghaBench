; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { i64, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to init task %p, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @iscsi_iser_task_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_task_init(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_iser_task*, align 8
  %5 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %6 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %6, i32 0, i32 1
  %8 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  store %struct.iscsi_iser_task* %8, %struct.iscsi_iser_task** %4, align 8
  %9 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %10 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %10, i32 0, i32 2
  %12 = call i32 @iser_initialize_task_headers(%struct.iscsi_task* %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @iser_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.iscsi_iser_task* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %30 = call i32 @iser_task_rdma_init(%struct.iscsi_iser_task* %29)
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %25, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @iser_initialize_task_headers(%struct.iscsi_task*, i32*) #1

declare dso_local i32 @iser_err(i8*, %struct.iscsi_iser_task*, i32) #1

declare dso_local i32 @iser_task_rdma_init(%struct.iscsi_iser_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
