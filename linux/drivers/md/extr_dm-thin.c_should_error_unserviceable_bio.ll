; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_should_error_unserviceable_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_should_error_unserviceable_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"bio unserviceable, yet pool is in PM_WRITE mode\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_NOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"bio unserviceable, yet pool has an unknown mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pool*)* @should_error_unserviceable_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_error_unserviceable_bio(%struct.pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i32, align 4
  store %struct.pool* %0, %struct.pool** %3, align 8
  %5 = load %struct.pool*, %struct.pool** %3, align 8
  %6 = call i32 @get_pool_mode(%struct.pool* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %24 [
    i32 128, label %8
    i32 131, label %11
    i32 130, label %22
    i32 129, label %22
    i32 132, label %22
  ]

8:                                                ; preds = %1
  %9 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.pool*, %struct.pool** %3, align 8
  %13 = getelementptr inbounds %struct.pool, %struct.pool* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @BLK_STS_NOSPC, align 4
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %1, %1, %1
  %23 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %22, %20, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @get_pool_mode(%struct.pool*) #1

declare dso_local i32 @DMERR_LIMIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
