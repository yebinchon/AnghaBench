; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stats_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stats_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"@stats_create\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"@stats_delete\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"@stats_clear\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"@stats_list\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"@stats_print\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"@stats_print_clear\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"@stats_set_aux\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Invalid parameters for message %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_stats_message(%struct.mapped_device* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8**, i8*** %9, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @message_stats_create(%struct.mapped_device* %19, i32 %20, i8** %21, i8* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  br label %104

25:                                               ; preds = %5
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i8**, i8*** %9, align 8
  %35 = call i32 @message_stats_delete(%struct.mapped_device* %32, i32 %33, i8** %34)
  store i32 %35, i32* %12, align 4
  br label %103

36:                                               ; preds = %25
  %37 = load i8**, i8*** %9, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcasecmp(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8**, i8*** %9, align 8
  %46 = call i32 @message_stats_clear(%struct.mapped_device* %43, i32 %44, i8** %45)
  store i32 %46, i32* %12, align 4
  br label %102

47:                                               ; preds = %36
  %48 = load i8**, i8*** %9, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8**, i8*** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @message_stats_list(%struct.mapped_device* %54, i32 %55, i8** %56, i8* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %101

60:                                               ; preds = %47
  %61 = load i8**, i8*** %9, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i8**, i8*** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @message_stats_print(%struct.mapped_device* %67, i32 %68, i8** %69, i32 0, i8* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  br label %100

73:                                               ; preds = %60
  %74 = load i8**, i8*** %9, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcasecmp(i8* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i8**, i8*** %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @message_stats_print(%struct.mapped_device* %80, i32 %81, i8** %82, i32 1, i8* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  br label %99

86:                                               ; preds = %73
  %87 = load i8**, i8*** %9, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcasecmp(i8* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i8**, i8*** %9, align 8
  %96 = call i32 @message_stats_set_aux(%struct.mapped_device* %93, i32 %94, i8** %95)
  store i32 %96, i32* %12, align 4
  br label %98

97:                                               ; preds = %86
  store i32 2, i32* %6, align 4
  br label %116

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %79
  br label %100

100:                                              ; preds = %99, %66
  br label %101

101:                                              ; preds = %100, %53
  br label %102

102:                                              ; preds = %101, %42
  br label %103

103:                                              ; preds = %102, %31
  br label %104

104:                                              ; preds = %103, %18
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8**, i8*** %9, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @DMWARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %97
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @message_stats_create(%struct.mapped_device*, i32, i8**, i8*, i32) #1

declare dso_local i32 @message_stats_delete(%struct.mapped_device*, i32, i8**) #1

declare dso_local i32 @message_stats_clear(%struct.mapped_device*, i32, i8**) #1

declare dso_local i32 @message_stats_list(%struct.mapped_device*, i32, i8**, i8*, i32) #1

declare dso_local i32 @message_stats_print(%struct.mapped_device*, i32, i8**, i32, i8*, i32) #1

declare dso_local i32 @message_stats_set_aux(%struct.mapped_device*, i32, i8**) #1

declare dso_local i32 @DMWARN(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
