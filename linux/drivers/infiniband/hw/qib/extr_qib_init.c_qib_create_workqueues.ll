; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_workqueues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_workqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"qib%d_%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"create_singlethread_workqueue failed for port %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_create_workqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_create_workqueues(%struct.qib_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca [8 x i8], align 1
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %7
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 2
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i64 %18
  store %struct.qib_pportdata* %19, %struct.qib_pportdata** %5, align 8
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @snprintf(i8* %25, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %32 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %33 = call i32* @alloc_ordered_workqueue(i8* %31, i32 %32)
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %37 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  br label %47

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %82

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %76, %47
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 2
  %60 = load %struct.qib_pportdata*, %struct.qib_pportdata** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %60, i64 %62
  store %struct.qib_pportdata* %63, %struct.qib_pportdata** %5, align 8
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %65 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %70 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @destroy_workqueue(i32* %71)
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %74 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %51

79:                                               ; preds = %51
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %46
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
