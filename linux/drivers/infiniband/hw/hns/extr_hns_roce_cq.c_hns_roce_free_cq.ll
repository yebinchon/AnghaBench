; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_free_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_free_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.device*, %struct.hns_roce_cq_table }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_cq_table = type { i32, i32, i32 }
%struct.hns_roce_cq = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"HW2SW_CQ failed (%d) for CQN %06lx\0A\00", align 1
@BITMAP_NO_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_free_cq(%struct.hns_roce_dev* %0, %struct.hns_roce_cq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_cq*, align 8
  %5 = alloca %struct.hns_roce_cq_table*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_cq* %1, %struct.hns_roce_cq** %4, align 8
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %8, i32 0, i32 2
  store %struct.hns_roce_cq_table* %9, %struct.hns_roce_cq_table** %5, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %14 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @hns_roce_hw2sw_cq(%struct.hns_roce_dev* %13, i32* null, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %5, align 8
  %29 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %28, i32 0, i32 2
  %30 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %31 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @xa_erase(i32* %29, i32 %32)
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @synchronize_irq(i32 %43)
  %45 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %46 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %45, i32 0, i32 3
  %47 = call i64 @atomic_dec_and_test(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %50, i32 0, i32 2
  %52 = call i32 @complete(i32* %51)
  br label %53

53:                                               ; preds = %49, %27
  %54 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %55 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %54, i32 0, i32 2
  %56 = call i32 @wait_for_completion(i32* %55)
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %58 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %5, align 8
  %59 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %58, i32 0, i32 1
  %60 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %61 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %57, i32* %59, i32 %62)
  %64 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %5, align 8
  %65 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %64, i32 0, i32 0
  %66 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %67 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BITMAP_NO_RR, align 4
  %70 = call i32 @hns_roce_bitmap_free(i32* %65, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @hns_roce_hw2sw_cq(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

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
