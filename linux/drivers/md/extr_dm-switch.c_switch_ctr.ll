; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i32, i8* }
%struct.dm_target = type { i8*, i32 }
%struct.switch_ctx = type { i32 }
%struct.dm_arg_set = type { i32, i8** }

@switch_ctr._args = internal constant [3 x %struct.dm_arg] [%struct.dm_arg { i32 1, i32 31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0) }, %struct.dm_arg { i32 1, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [24 x i8] c"Invalid number of paths\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid region size\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid number of optional args\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Incorrect number of path arguments\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Cannot allocate redirection context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @switch_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.switch_ctx*, align 8
  %9 = alloca %struct.dm_arg_set, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 1
  store i8** %16, i8*** %17, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  %20 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @switch_ctr._args, i64 0, i64 0), %struct.dm_arg_set* %9, i32* %10, i8** %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %3
  %27 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 0
  %29 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @switch_ctr._args, i64 0, i64 1), %struct.dm_arg_set* %9, i32* %11, i8** %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %100

34:                                               ; preds = %26
  %35 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %36 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %35, i32 0, i32 0
  %37 = call i32 @dm_read_arg_group(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @switch_ctr._args, i64 0, i64 2), %struct.dm_arg_set* %9, i32* %12, i8** %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %4, align 4
  br label %100

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = mul i32 %45, 2
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %50 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %100

53:                                               ; preds = %42
  %54 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.switch_ctx* @alloc_switch_ctx(%struct.dm_target* %54, i32 %55, i32 %56)
  store %struct.switch_ctx* %57, %struct.switch_ctx** %8, align 8
  %58 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  %59 = icmp ne %struct.switch_ctx* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %62 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8** %62, align 8
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %100

65:                                               ; preds = %53
  %66 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %96

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %83, %72
  %74 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %79 = call i32 @parse_path(%struct.dm_arg_set* %9, %struct.dm_target* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %96

83:                                               ; preds = %77
  br label %73

84:                                               ; preds = %73
  %85 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @alloc_region_table(%struct.dm_target* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %96

91:                                               ; preds = %84
  %92 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  %93 = call i32 @initialise_region_table(%struct.switch_ctx* %92)
  %94 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %95 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  store i32 0, i32* %4, align 4
  br label %100

96:                                               ; preds = %90, %82, %71
  %97 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %98 = call i32 @switch_dtr(%struct.dm_target* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %91, %60, %48, %40, %32, %23
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i32 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local %struct.switch_ctx* @alloc_switch_ctx(%struct.dm_target*, i32, i32) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @parse_path(%struct.dm_arg_set*, %struct.dm_target*) #1

declare dso_local i32 @alloc_region_table(%struct.dm_target*, i32) #1

declare dso_local i32 @initialise_region_table(%struct.switch_ctx*) #1

declare dso_local i32 @switch_dtr(%struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
