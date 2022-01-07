; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_metadata_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_metadata_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_args = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_arg_set = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error opening metadata device\00", align 1
@DM_CACHE_METADATA_MAX_SECTORS_WARNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"Metadata device %s is larger than %u sectors: excess space will not be used.\00", align 1
@THIN_METADATA_MAX_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_args*, %struct.dm_arg_set*, i8**)* @parse_metadata_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_metadata_dev(%struct.cache_args* %0, %struct.dm_arg_set* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_args*, align 8
  %6 = alloca %struct.dm_arg_set*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cache_args* %0, %struct.cache_args** %5, align 8
  store %struct.dm_arg_set* %1, %struct.dm_arg_set** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* @BDEVNAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.dm_arg_set*, %struct.dm_arg_set** %6, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = call i32 @at_least_one_arg(%struct.dm_arg_set* %17, i8** %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

24:                                               ; preds = %3
  %25 = load %struct.cache_args*, %struct.cache_args** %5, align 8
  %26 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dm_arg_set*, %struct.dm_arg_set** %6, align 8
  %29 = call i32 @dm_shift_arg(%struct.dm_arg_set* %28)
  %30 = load i32, i32* @FMODE_READ, align 4
  %31 = load i32, i32* @FMODE_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.cache_args*, %struct.cache_args** %5, align 8
  %34 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %33, i32 0, i32 0
  %35 = call i32 @dm_get_device(i32 %27, i32 %29, i32 %32, %struct.TYPE_3__** %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

41:                                               ; preds = %24
  %42 = load %struct.cache_args*, %struct.cache_args** %5, align 8
  %43 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i64 @get_dev_size(%struct.TYPE_3__* %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @DM_CACHE_METADATA_MAX_SECTORS_WARNING, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.cache_args*, %struct.cache_args** %5, align 8
  %51 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bdevname(i32 %54, i8* %16)
  %56 = load i32, i32* @THIN_METADATA_MAX_SECTORS, align 4
  %57 = call i32 @DMWARN(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %41
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %38, %21
  %60 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @at_least_one_arg(%struct.dm_arg_set*, i8**) #2

declare dso_local i32 @dm_get_device(i32, i32, i32, %struct.TYPE_3__**) #2

declare dso_local i32 @dm_shift_arg(%struct.dm_arg_set*) #2

declare dso_local i64 @get_dev_size(%struct.TYPE_3__*) #2

declare dso_local i32 @DMWARN(i8*, i32, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
