; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_abort_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_abort_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: aborting current metadata transaction\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: failed to abort metadata transaction\00", align 1
@PM_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: failed to set 'needs_check' flag in metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*)* @abort_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_transaction(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca i8*, align 8
  store %struct.pool* %0, %struct.pool** %2, align 8
  %4 = load %struct.pool*, %struct.pool** %2, align 8
  %5 = getelementptr inbounds %struct.pool, %struct.pool* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @dm_device_name(i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.pool*, %struct.pool** %2, align 8
  %11 = getelementptr inbounds %struct.pool, %struct.pool* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @dm_pool_abort_metadata(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load %struct.pool*, %struct.pool** %2, align 8
  %19 = load i32, i32* @PM_FAIL, align 4
  %20 = call i32 @set_pool_mode(%struct.pool* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.pool*, %struct.pool** %2, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dm_pool_metadata_set_needs_check(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @DMERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load %struct.pool*, %struct.pool** %2, align 8
  %31 = load i32, i32* @PM_FAIL, align 4
  %32 = call i32 @set_pool_mode(%struct.pool* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  ret void
}

declare dso_local i8* @dm_device_name(i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i8*) #1

declare dso_local i64 @dm_pool_abort_metadata(i32) #1

declare dso_local i32 @DMERR(i8*, i8*) #1

declare dso_local i32 @set_pool_mode(%struct.pool*, i32) #1

declare dso_local i64 @dm_pool_metadata_set_needs_check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
