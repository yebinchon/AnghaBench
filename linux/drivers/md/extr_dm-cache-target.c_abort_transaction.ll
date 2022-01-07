; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_abort_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_abort_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"%s: failed to set 'needs_check' flag in metadata\00", align 1
@CM_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: aborting current metadata transaction\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: failed to abort metadata transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @abort_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_transaction(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca i8*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %4 = load %struct.cache*, %struct.cache** %2, align 8
  %5 = call i8* @cache_device_name(%struct.cache* %4)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.cache*, %struct.cache** %2, align 8
  %7 = call i64 @get_cache_mode(%struct.cache* %6)
  %8 = load i64, i64* @CM_READ_ONLY, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.cache*, %struct.cache** %2, align 8
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @dm_cache_metadata_set_needs_check(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @DMERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.cache*, %struct.cache** %2, align 8
  %21 = load i32, i32* @CM_FAIL, align 4
  %22 = call i32 @set_cache_mode(%struct.cache* %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load %struct.cache*, %struct.cache** %2, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @dm_cache_metadata_abort(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load %struct.cache*, %struct.cache** %2, align 8
  %35 = load i32, i32* @CM_FAIL, align 4
  %36 = call i32 @set_cache_mode(%struct.cache* %34, i32 %35)
  br label %37

37:                                               ; preds = %10, %31, %23
  ret void
}

declare dso_local i8* @cache_device_name(%struct.cache*) #1

declare dso_local i64 @get_cache_mode(%struct.cache*) #1

declare dso_local i64 @dm_cache_metadata_set_needs_check(i32) #1

declare dso_local i32 @DMERR(i8*, i8*) #1

declare dso_local i32 @set_cache_mode(%struct.cache*, i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i8*) #1

declare dso_local i64 @dm_cache_metadata_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
