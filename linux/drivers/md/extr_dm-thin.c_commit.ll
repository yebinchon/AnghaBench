; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }

@PM_OUT_OF_METADATA_SPACE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dm_pool_commit_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pool*)* @commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit(%struct.pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i32, align 4
  store %struct.pool* %0, %struct.pool** %3, align 8
  %5 = load %struct.pool*, %struct.pool** %3, align 8
  %6 = call i64 @get_pool_mode(%struct.pool* %5)
  %7 = load i64, i64* @PM_OUT_OF_METADATA_SPACE, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.pool*, %struct.pool** %3, align 8
  %14 = getelementptr inbounds %struct.pool, %struct.pool* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dm_pool_commit_metadata(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.pool*, %struct.pool** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @metadata_operation_failed(%struct.pool* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %28

23:                                               ; preds = %12
  %24 = load %struct.pool*, %struct.pool** %3, align 8
  %25 = call i32 @check_for_metadata_space(%struct.pool* %24)
  %26 = load %struct.pool*, %struct.pool** %3, align 8
  %27 = call i32 @check_for_data_space(%struct.pool* %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @get_pool_mode(%struct.pool*) #1

declare dso_local i32 @dm_pool_commit_metadata(i32) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

declare dso_local i32 @check_for_metadata_space(%struct.pool*) #1

declare dso_local i32 @check_for_data_space(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
