; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_comp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_comp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_comp = type { i64 }
%struct.isert_conn = type { %struct.isert_device* }
%struct.isert_device = type { i32, %struct.isert_comp* }

@device_list_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"conn %p, using comp %p min_index: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isert_comp* (%struct.isert_conn*)* @isert_comp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isert_comp* @isert_comp_get(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca %struct.isert_device*, align 8
  %4 = alloca %struct.isert_comp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %7 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %8 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %7, i32 0, i32 0
  %9 = load %struct.isert_device*, %struct.isert_device** %8, align 8
  store %struct.isert_device* %9, %struct.isert_device** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @mutex_lock(i32* @device_list_mutex)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %14 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %19 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %18, i32 0, i32 1
  %20 = load %struct.isert_comp*, %struct.isert_comp** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %20, i64 %22
  %24 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %27 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %26, i32 0, i32 1
  %28 = load %struct.isert_comp*, %struct.isert_comp** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %28, i64 %30
  %32 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %25, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %43 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %42, i32 0, i32 1
  %44 = load %struct.isert_comp*, %struct.isert_comp** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %44, i64 %46
  store %struct.isert_comp* %47, %struct.isert_comp** %4, align 8
  %48 = load %struct.isert_comp*, %struct.isert_comp** %4, align 8
  %49 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = call i32 @mutex_unlock(i32* @device_list_mutex)
  %53 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %54 = load %struct.isert_comp*, %struct.isert_comp** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @isert_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %53, %struct.isert_comp* %54, i32 %55)
  %57 = load %struct.isert_comp*, %struct.isert_comp** %4, align 8
  ret %struct.isert_comp* %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @isert_info(i8*, %struct.isert_conn*, %struct.isert_comp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
