; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_cblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_cblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s: invalidation failed; couldn't update on disk metadata\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dm_cache_remove_mapping\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: policy_invalidate_mapping failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i32)* @invalidate_cblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_cblock(%struct.cache* %0, i32 %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cache*, %struct.cache** %3, align 8
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @policy_invalidate_mapping(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = load %struct.cache*, %struct.cache** %3, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dm_cache_remove_mapping(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.cache*, %struct.cache** %3, align 8
  %23 = call i32 @cache_device_name(%struct.cache* %22)
  %24 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.cache*, %struct.cache** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @metadata_operation_failed(%struct.cache* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %21, %13
  br label %40

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.cache*, %struct.cache** %3, align 8
  %37 = call i32 @cache_device_name(%struct.cache* %36)
  %38 = call i32 @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %34
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @policy_invalidate_mapping(i32, i32) #1

declare dso_local i32 @dm_cache_remove_mapping(i32, i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @metadata_operation_failed(%struct.cache*, i8*, i32) #1

declare dso_local i32 @DMERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
