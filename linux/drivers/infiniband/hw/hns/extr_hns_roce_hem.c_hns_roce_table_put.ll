; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_3__*, %struct.device* }
%struct.TYPE_3__ = type { i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)* }
%struct.device = type { i32 }
%struct.hns_roce_hem_table = type { i32, i64, i64, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"Clear HEM base address failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_table_put(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_hem_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %13 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %14 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %20 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @hns_roce_table_mhop_put(%struct.hns_roce_dev* %19, %struct.hns_roce_hem_table* %20, i64 %21, i32 1)
  br label %84

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %26 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = and i64 %24, %29
  %31 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %32 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = udiv i64 %33, %36
  %38 = udiv i64 %30, %37
  store i64 %38, i64* %8, align 8
  %39 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %40 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %39, i32 0, i32 3
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %43 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %23
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %56, align 8
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %59 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i64 %57(%struct.hns_roce_dev* %58, %struct.hns_roce_hem_table* %59, i64 %60, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = call i32 @dev_warn(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %52
  %67 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %68 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %69 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @hns_roce_free_hem(%struct.hns_roce_dev* %67, %struct.TYPE_4__* %73)
  %75 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %76 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %75, i32 0, i32 4
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %78
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %79, align 8
  br label %80

80:                                               ; preds = %66, %23
  %81 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %5, align 8
  %82 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %81, i32 0, i32 3
  %83 = call i32 @mutex_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %18
  ret void
}

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_table_mhop_put(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_free_hem(%struct.hns_roce_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
