; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_core_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_core_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i8*, i32 }
%struct.dm_arg_set = type { i32 }
%struct.clone = type { i32, i32, %struct.dm_target* }
%struct.dm_target = type { i8* }

@.str = private unnamed_addr constant [33 x i8] c"Invalid number of core arguments\00", align 1
@__const.parse_core_args.args = private unnamed_addr constant %struct.dm_arg { i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@DEFAULT_HYDRATION_BATCH_SIZE = common dso_local global i32 0, align 4
@DEFAULT_HYDRATION_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Number of core arguments must be even\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"hydration_threshold\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Invalid value for argument `hydration_threshold'\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hydration_batch_size\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Invalid value for argument `hydration_batch_size'\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid core argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_arg_set*, %struct.clone*)* @parse_core_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_core_args(%struct.dm_arg_set* %0, %struct.clone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_arg_set*, align 8
  %5 = alloca %struct.clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dm_target*, align 8
  %11 = alloca %struct.dm_arg, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %4, align 8
  store %struct.clone* %1, %struct.clone** %5, align 8
  %12 = load %struct.clone*, %struct.clone** %5, align 8
  %13 = getelementptr inbounds %struct.clone, %struct.clone* %12, i32 0, i32 2
  %14 = load %struct.dm_target*, %struct.dm_target** %13, align 8
  store %struct.dm_target* %14, %struct.dm_target** %10, align 8
  %15 = bitcast %struct.dm_arg* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.dm_arg* @__const.parse_core_args.args to i8*), i64 24, i1 false)
  %16 = load i32, i32* @DEFAULT_HYDRATION_BATCH_SIZE, align 4
  %17 = load %struct.clone*, %struct.clone** %5, align 8
  %18 = getelementptr inbounds %struct.clone, %struct.clone* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @DEFAULT_HYDRATION_THRESHOLD, align 4
  %20 = load %struct.clone*, %struct.clone** %5, align 8
  %21 = getelementptr inbounds %struct.clone, %struct.clone* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %23 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

27:                                               ; preds = %2
  %28 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %29 = load %struct.dm_target*, %struct.dm_target** %10, align 8
  %30 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %29, i32 0, i32 0
  %31 = call i32 @dm_read_arg_group(%struct.dm_arg* %11, %struct.dm_arg_set* %28, i32* %7, i8** %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.dm_target*, %struct.dm_target** %10, align 8
  %42 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %97

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %95, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %46
  %50 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %51 = call i8* @dm_shift_arg(%struct.dm_arg_set* %50)
  store i8* %51, i8** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub i32 %52, 2
  store i32 %53, i32* %7, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strcasecmp(i8* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %49
  %58 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %59 = call i8* @dm_shift_arg(%struct.dm_arg_set* %58)
  %60 = call i64 @kstrtouint(i8* %59, i32 10, i32* %8)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.dm_target*, %struct.dm_target** %10, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %97

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.clone*, %struct.clone** %5, align 8
  %70 = getelementptr inbounds %struct.clone, %struct.clone* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %95

71:                                               ; preds = %49
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strcasecmp(i8* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %77 = call i8* @dm_shift_arg(%struct.dm_arg_set* %76)
  %78 = call i64 @kstrtouint(i8* %77, i32 10, i32* %8)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.dm_target*, %struct.dm_target** %10, align 8
  %82 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8** %82, align 8
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %97

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.clone*, %struct.clone** %5, align 8
  %88 = getelementptr inbounds %struct.clone, %struct.clone* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %94

89:                                               ; preds = %71
  %90 = load %struct.dm_target*, %struct.dm_target** %10, align 8
  %91 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %91, align 8
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %97

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %67
  br label %46

96:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %89, %80, %62, %40, %34, %26
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #2

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
