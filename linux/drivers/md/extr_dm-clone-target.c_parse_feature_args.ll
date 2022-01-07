; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_feature_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_feature_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i8*, i32 }
%struct.dm_arg_set = type { i32 }
%struct.clone = type { i32, %struct.dm_target* }
%struct.dm_target = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"Invalid number of feature arguments\00", align 1
@__const.parse_feature_args.args = private unnamed_addr constant %struct.dm_arg { i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"no_hydration\00", align 1
@DM_CLONE_HYDRATION_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"no_discard_passdown\00", align 1
@DM_CLONE_DISCARD_PASSDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid feature argument\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_arg_set*, %struct.clone*)* @parse_feature_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_feature_args(%struct.dm_arg_set* %0, %struct.clone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_arg_set*, align 8
  %5 = alloca %struct.clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dm_target*, align 8
  %10 = alloca %struct.dm_arg, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %4, align 8
  store %struct.clone* %1, %struct.clone** %5, align 8
  %11 = load %struct.clone*, %struct.clone** %5, align 8
  %12 = getelementptr inbounds %struct.clone, %struct.clone* %11, i32 0, i32 1
  %13 = load %struct.dm_target*, %struct.dm_target** %12, align 8
  store %struct.dm_target* %13, %struct.dm_target** %9, align 8
  %14 = bitcast %struct.dm_arg* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.dm_arg* @__const.parse_feature_args.args to i8*), i64 24, i1 false)
  %15 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %16 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %22 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  %24 = call i32 @dm_read_arg_group(%struct.dm_arg* %10, %struct.dm_arg_set* %21, i32* %7, i8** %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %35 = call i8* @dm_shift_arg(%struct.dm_arg_set* %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @DM_CLONE_HYDRATION_ENABLED, align 4
  %43 = load %struct.clone*, %struct.clone** %5, align 8
  %44 = getelementptr inbounds %struct.clone, %struct.clone* %43, i32 0, i32 0
  %45 = call i32 @__clear_bit(i32 %42, i32* %44)
  br label %61

46:                                               ; preds = %33
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @DM_CLONE_DISCARD_PASSDOWN, align 4
  %52 = load %struct.clone*, %struct.clone** %5, align 8
  %53 = getelementptr inbounds %struct.clone, %struct.clone* %52, i32 0, i32 0
  %54 = call i32 @__clear_bit(i32 %51, i32* %53)
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %57 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %41
  br label %30

62:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %55, %27, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #2

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @__clear_bit(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
