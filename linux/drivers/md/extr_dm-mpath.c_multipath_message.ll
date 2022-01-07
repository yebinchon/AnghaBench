; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.multipath* }
%struct.multipath = type { i32 }
%struct.dm_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"queue_if_no_path\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fail_if_no_path\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Invalid multipath message arguments. Expected 2 arguments, got %d.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"disable_group\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"enable_group\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"switch_group\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"reinstate_path\00", align 1
@reinstate_path = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"fail_path\00", align 1
@fail_path = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"Unrecognised multipath message received: %s\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"message: error getting device %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @multipath_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_dev*, align 8
  %13 = alloca %struct.multipath*, align 8
  %14 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 1
  %19 = load %struct.multipath*, %struct.multipath** %18, align 8
  store %struct.multipath* %19, %struct.multipath** %13, align 8
  %20 = load %struct.multipath*, %struct.multipath** %13, align 8
  %21 = getelementptr inbounds %struct.multipath, %struct.multipath* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %24 = call i64 @dm_suspended(%struct.dm_target* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  br label %144

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i8**, i8*** %8, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcasecmp(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.multipath*, %struct.multipath** %13, align 8
  %40 = call i32 @queue_if_no_path(%struct.multipath* %39, i32 1, i32 0)
  store i32 %40, i32* %11, align 4
  br label %144

41:                                               ; preds = %32
  %42 = load i8**, i8*** %8, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.multipath*, %struct.multipath** %13, align 8
  %49 = call i32 @queue_if_no_path(%struct.multipath* %48, i32 0, i32 0)
  store i32 %49, i32* %11, align 4
  br label %144

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %144

58:                                               ; preds = %52
  %59 = load i8**, i8*** %8, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.multipath*, %struct.multipath** %13, align 8
  %66 = load i8**, i8*** %8, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @bypass_pg_num(%struct.multipath* %65, i8* %68, i32 1)
  store i32 %69, i32* %11, align 4
  br label %144

70:                                               ; preds = %58
  %71 = load i8**, i8*** %8, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcasecmp(i8* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.multipath*, %struct.multipath** %13, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @bypass_pg_num(%struct.multipath* %77, i8* %80, i32 0)
  store i32 %81, i32* %11, align 4
  br label %144

82:                                               ; preds = %70
  %83 = load i8**, i8*** %8, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.multipath*, %struct.multipath** %13, align 8
  %90 = load i8**, i8*** %8, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @switch_pg_num(%struct.multipath* %89, i8* %92)
  store i32 %93, i32* %11, align 4
  br label %144

94:                                               ; preds = %82
  %95 = load i8**, i8*** %8, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcasecmp(i8* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @reinstate_path, align 4
  store i32 %101, i32* %14, align 4
  br label %116

102:                                              ; preds = %94
  %103 = load i8**, i8*** %8, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strcasecmp(i8* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @fail_path, align 4
  store i32 %109, i32* %14, align 4
  br label %115

110:                                              ; preds = %102
  %111 = load i8**, i8*** %8, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %113)
  br label %144

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %121 = load i8**, i8*** %8, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %125 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dm_table_get_mode(i32 %126)
  %128 = call i32 @dm_get_device(%struct.dm_target* %120, i8* %123, i32 %127, %struct.dm_dev** %12)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %119
  %132 = load i8**, i8*** %8, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %134)
  br label %144

136:                                              ; preds = %119
  %137 = load %struct.multipath*, %struct.multipath** %13, align 8
  %138 = load %struct.dm_dev*, %struct.dm_dev** %12, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @action_dev(%struct.multipath* %137, %struct.dm_dev* %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %142 = load %struct.dm_dev*, %struct.dm_dev** %12, align 8
  %143 = call i32 @dm_put_device(%struct.dm_target* %141, %struct.dm_dev* %142)
  br label %144

144:                                              ; preds = %136, %131, %110, %88, %76, %64, %55, %47, %38, %26
  %145 = load %struct.multipath*, %struct.multipath** %13, align 8
  %146 = getelementptr inbounds %struct.multipath, %struct.multipath* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i32, i32* %11, align 4
  ret i32 %148
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dm_suspended(%struct.dm_target*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @queue_if_no_path(%struct.multipath*, i32, i32) #1

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i32 @bypass_pg_num(%struct.multipath*, i8*, i32) #1

declare dso_local i32 @switch_pg_num(%struct.multipath*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.dm_dev**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @action_dev(%struct.multipath*, %struct.dm_dev*, i32) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.dm_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
