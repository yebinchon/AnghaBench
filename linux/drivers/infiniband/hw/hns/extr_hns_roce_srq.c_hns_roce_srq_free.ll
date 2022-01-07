; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_srq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_srq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.hns_roce_srq_table }
%struct.hns_roce_srq_table = type { i32, i32, i32 }
%struct.hns_roce_srq = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"HW2SW_SRQ failed (%d) for CQN %06lx\0A\00", align 1
@BITMAP_NO_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_srq*)* @hns_roce_srq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_srq_free(%struct.hns_roce_dev* %0, %struct.hns_roce_srq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_srq*, align 8
  %5 = alloca %struct.hns_roce_srq_table*, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_srq* %1, %struct.hns_roce_srq** %4, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 1
  store %struct.hns_roce_srq_table* %8, %struct.hns_roce_srq_table** %5, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %11 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hns_roce_hw2sw_srq(%struct.hns_roce_dev* %9, i32* null, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %22 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %5, align 8
  %27 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %26, i32 0, i32 2
  %28 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xa_erase(i32* %27, i32 %30)
  %32 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %33 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %32, i32 0, i32 2
  %34 = call i64 @atomic_dec_and_test(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %38 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %37, i32 0, i32 1
  %39 = call i32 @complete(i32* %38)
  br label %40

40:                                               ; preds = %36, %25
  %41 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %42 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %41, i32 0, i32 1
  %43 = call i32 @wait_for_completion(i32* %42)
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %45 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %5, align 8
  %46 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %45, i32 0, i32 1
  %47 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %44, i32* %46, i32 %49)
  %51 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %5, align 8
  %52 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %51, i32 0, i32 0
  %53 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %54 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BITMAP_NO_RR, align 4
  %57 = call i32 @hns_roce_bitmap_free(i32* %52, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @hns_roce_hw2sw_srq(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_bitmap_free(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
