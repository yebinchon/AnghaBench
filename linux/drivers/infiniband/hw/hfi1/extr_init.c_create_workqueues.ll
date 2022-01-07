; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_create_workqueues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_create_workqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.hfi1_pportdata*, i32 }
%struct.hfi1_pportdata = type { i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"hfi%d_%d\00", align 1
@WQ_SYSFS = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_CPU_INTENSIVE = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@HFI1_MAX_ACTIVE_WORKQUEUE_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"hfi_link_%d_%d\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"alloc_workqueue failed for port %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @create_workqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_workqueues(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %72, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %6
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 1
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i64 %17
  store %struct.hfi1_pportdata* %18, %struct.hfi1_pportdata** %5, align 8
  %19 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %20 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @WQ_SYSFS, align 4
  %25 = load i32, i32* @WQ_HIGHPRI, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WQ_CPU_INTENSIVE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HFI1_MAX_ACTIVE_WORKQUEUE_ENTRIES, align 4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %34, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %39 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %41 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %23
  br label %76

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %48 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @WQ_SYSFS, align 4
  %53 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WQ_UNBOUND, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 1, i32 %59, i32 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %64 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %66 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %51
  br label %76

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %6

75:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %123

76:                                               ; preds = %69, %44
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %117, %76
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %83 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %80
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %88 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %87, i32 0, i32 1
  %89 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %89, i64 %91
  store %struct.hfi1_pportdata* %92, %struct.hfi1_pportdata** %5, align 8
  %93 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %94 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %99 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @destroy_workqueue(i32* %100)
  %102 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %103 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %97, %86
  %105 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %106 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %111 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @destroy_workqueue(i32* %112)
  %114 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %115 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  br label %116

116:                                              ; preds = %109, %104
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %80

120:                                              ; preds = %80
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %120, %75
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i8* @alloc_workqueue(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
