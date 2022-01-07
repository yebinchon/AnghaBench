; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.clone* }
%struct.clone = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"enable_hydration\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"disable_hydration\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"hydration_threshold\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"hydration_batch_size\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Unsupported message `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @clone_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.clone*, align 8
  %13 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load %struct.clone*, %struct.clone** %15, align 8
  store %struct.clone* %16, %struct.clone** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %93

22:                                               ; preds = %5
  %23 = load i8**, i8*** %9, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcasecmp(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.clone*, %struct.clone** %12, align 8
  %30 = call i32 @enable_hydration(%struct.clone* %29)
  store i32 0, i32* %6, align 4
  br label %93

31:                                               ; preds = %22
  %32 = load i8**, i8*** %9, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.clone*, %struct.clone** %12, align 8
  %39 = call i32 @disable_hydration(%struct.clone* %38)
  store i32 0, i32* %6, align 4
  br label %93

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %93

46:                                               ; preds = %40
  %47 = load i8**, i8*** %9, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %46
  %53 = load i8**, i8*** %9, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @kstrtouint(i8* %55, i32 10, i32* %13)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %93

61:                                               ; preds = %52
  %62 = load %struct.clone*, %struct.clone** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @set_hydration_threshold(%struct.clone* %62, i32 %63)
  store i32 0, i32* %6, align 4
  br label %93

65:                                               ; preds = %46
  %66 = load i8**, i8*** %9, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcasecmp(i8* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %65
  %72 = load i8**, i8*** %9, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @kstrtouint(i8* %74, i32 10, i32* %13)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %93

80:                                               ; preds = %71
  %81 = load %struct.clone*, %struct.clone** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @set_hydration_batch_size(%struct.clone* %81, i32 %82)
  store i32 0, i32* %6, align 4
  br label %93

84:                                               ; preds = %65
  %85 = load %struct.clone*, %struct.clone** %12, align 8
  %86 = call i32 @clone_device_name(%struct.clone* %85)
  %87 = load i8**, i8*** %9, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @DMERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %86, i8* %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %84, %80, %77, %61, %58, %43, %37, %28, %19
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @enable_hydration(%struct.clone*) #1

declare dso_local i32 @disable_hydration(%struct.clone*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @set_hydration_threshold(%struct.clone*, i32) #1

declare dso_local i32 @set_hydration_batch_size(%struct.clone*, i32) #1

declare dso_local i32 @DMERR(i8*, i32, i8*) #1

declare dso_local i32 @clone_device_name(%struct.clone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
