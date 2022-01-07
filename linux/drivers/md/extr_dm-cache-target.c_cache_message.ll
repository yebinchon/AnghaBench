; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.cache* }
%struct.cache = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CM_READ_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"%s: unable to service cache target messages in READ_ONLY or FAIL mode\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalidate_cblocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @cache_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.cache*, %struct.cache** %14, align 8
  store %struct.cache* %15, %struct.cache** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %60

21:                                               ; preds = %5
  %22 = load %struct.cache*, %struct.cache** %12, align 8
  %23 = call i64 @get_cache_mode(%struct.cache* %22)
  %24 = load i64, i64* @CM_READ_ONLY, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.cache*, %struct.cache** %12, align 8
  %28 = call i32 @cache_device_name(%struct.cache* %27)
  %29 = call i32 @DMERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %60

32:                                               ; preds = %21
  %33 = load i8**, i8*** %9, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcasecmp(i8* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.cache*, %struct.cache** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, 1
  %42 = load i8**, i8*** %9, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = call i32 @process_invalidate_cblocks_message(%struct.cache* %39, i32 %41, i8** %43)
  store i32 %44, i32* %6, align 4
  br label %60

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %60

51:                                               ; preds = %45
  %52 = load %struct.cache*, %struct.cache** %12, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %9, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @set_config_value(%struct.cache* %52, i8* %55, i8* %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %51, %48, %38, %26, %18
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @get_cache_mode(%struct.cache*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @process_invalidate_cblocks_message(%struct.cache*, i32, i8**) #1

declare dso_local i32 @set_config_value(%struct.cache*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
