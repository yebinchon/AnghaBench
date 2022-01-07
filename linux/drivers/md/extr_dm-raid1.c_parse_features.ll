; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_parse_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_parse_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, %struct.dm_target* }
%struct.dm_target = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid number of features\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Not enough arguments to support feature count\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"handle_errors\00", align 1
@DM_RAID1_HANDLE_ERRORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"keep_log\00", align 1
@DM_RAID1_KEEP_LOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unrecognised feature requested\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"keep_log feature requires the handle_errors feature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mirror_set*, i32, i8**, i32*)* @parse_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_features(%struct.mirror_set* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mirror_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_target*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.mirror_set* %0, %struct.mirror_set** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %15 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %14, i32 0, i32 1
  %16 = load %struct.dm_target*, %struct.dm_target** %15, align 8
  store %struct.dm_target* %16, %struct.dm_target** %11, align 8
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

21:                                               ; preds = %4
  %22 = load i8**, i8*** %8, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %10, i8* %12)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %29 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %108

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = load i8**, i8*** %8, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %45 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %108

48:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %91, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %49
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @DM_RAID1_HANDLE_ERRORS, align 4
  %61 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %62 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %83

65:                                               ; preds = %53
  %66 = load i8**, i8*** %8, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @DM_RAID1_KEEP_LOG, align 4
  %73 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %74 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %82

77:                                               ; preds = %65
  %78 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %79 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %79, align 8
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %108

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, -1
  store i32 %85, i32* %7, align 4
  %86 = load i8**, i8*** %8, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %49

94:                                               ; preds = %49
  %95 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %96 = call i32 @errors_handled(%struct.mirror_set* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %100 = call i64 @keep_log(%struct.mirror_set* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %104 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8** %104, align 8
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %108

107:                                              ; preds = %98, %94
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %102, %77, %43, %27, %20
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @errors_handled(%struct.mirror_set*) #1

declare dso_local i64 @keep_log(%struct.mirror_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
