; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_message_stats_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_message_stats_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lu%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, i32, i8**, i32, i8*, i32)* @message_stats_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_stats_print(%struct.mapped_device* %0, i32 %1, i8** %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mapped_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %18 = load i64, i64* @ULONG_MAX, align 8
  store i64 %18, i64* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %83

27:                                               ; preds = %21, %6
  %28 = load i8**, i8*** %10, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, i8*, ...) @sscanf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %14, i8* %15)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %83

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load i8**, i8*** %10, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i8**, i8*** %10, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, i8*, ...) @sscanf(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %16, i8* %15)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %83

57:                                               ; preds = %48, %42
  %58 = load i8**, i8*** %10, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i8**, i8*** %10, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, ...) @sscanf(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %17, i8* %15)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %83

72:                                               ; preds = %63, %57
  br label %73

73:                                               ; preds = %72, %39
  %74 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %75 = call i32 @dm_get_stats(%struct.mapped_device* %74)
  %76 = load i32, i32* %14, align 4
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @dm_stats_print(i32 %75, i32 %76, i64 %77, i64 %78, i32 %79, i8* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %73, %69, %54, %36, %24
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dm_stats_print(i32, i32, i64, i64, i32, i8*, i32) #1

declare dso_local i32 @dm_get_stats(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
