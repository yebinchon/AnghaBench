; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_metadata_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_metadata_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_arg_set = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error opening metadata device\00", align 1
@DM_CLONE_METADATA_MAX_SECTORS_WARNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"Metadata device %s is larger than %u sectors: excess space will not be used.\00", align 1
@DM_CLONE_METADATA_MAX_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone*, %struct.dm_arg_set*, i8**)* @parse_metadata_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_metadata_dev(%struct.clone* %0, %struct.dm_arg_set* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clone*, align 8
  %6 = alloca %struct.dm_arg_set*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.clone* %0, %struct.clone** %5, align 8
  store %struct.dm_arg_set* %1, %struct.dm_arg_set** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* @BDEVNAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.clone*, %struct.clone** %5, align 8
  %18 = getelementptr inbounds %struct.clone, %struct.clone* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dm_arg_set*, %struct.dm_arg_set** %6, align 8
  %21 = call i32 @dm_shift_arg(%struct.dm_arg_set* %20)
  %22 = load i32, i32* @FMODE_READ, align 4
  %23 = load i32, i32* @FMODE_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.clone*, %struct.clone** %5, align 8
  %26 = getelementptr inbounds %struct.clone, %struct.clone* %25, i32 0, i32 0
  %27 = call i32 @dm_get_device(i32 %19, i32 %21, i32 %24, %struct.TYPE_3__** %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %51

33:                                               ; preds = %3
  %34 = load %struct.clone*, %struct.clone** %5, align 8
  %35 = getelementptr inbounds %struct.clone, %struct.clone* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i64 @get_dev_size(%struct.TYPE_3__* %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @DM_CLONE_METADATA_MAX_SECTORS_WARNING, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.clone*, %struct.clone** %5, align 8
  %43 = getelementptr inbounds %struct.clone, %struct.clone* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bdevname(i32 %46, i8* %16)
  %48 = load i32, i32* @DM_CLONE_METADATA_MAX_SECTORS, align 4
  %49 = call i32 @DMWARN(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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
