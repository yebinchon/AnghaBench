; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_parse_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_parse_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i32, i8* }
%struct.dm_arg_set = type { i32 }
%struct.multipath = type { i32, i32, i32, i32, %struct.dm_target* }
%struct.dm_target = type { i8* }

@parse_features._args = internal constant [3 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.dm_arg { i32 1, i32 50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 60000, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [31 x i8] c"invalid number of feature args\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"pg_init_retries must be between 1 and 50\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"pg_init_delay_msecs must be between 0 and 60000\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"queue_if_no_path\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"retain_attached_hw_handler\00", align 1
@MPATHF_RETAIN_ATTACHED_HW_HANDLER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"pg_init_retries\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"pg_init_delay_msecs\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"queue_mode\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bio\00", align 1
@DM_TYPE_BIO_BASED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"rq\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"mq\00", align 1
@DM_TYPE_REQUEST_BASED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Unknown 'queue_mode' requested\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Unrecognised multipath feature request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_arg_set*, %struct.multipath*)* @parse_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_features(%struct.dm_arg_set* %0, %struct.multipath* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_arg_set*, align 8
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %4, align 8
  store %struct.multipath* %1, %struct.multipath** %5, align 8
  %11 = load %struct.multipath*, %struct.multipath** %5, align 8
  %12 = getelementptr inbounds %struct.multipath, %struct.multipath* %11, i32 0, i32 4
  %13 = load %struct.dm_target*, %struct.dm_target** %12, align 8
  store %struct.dm_target* %13, %struct.dm_target** %8, align 8
  %14 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %15 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = call i32 @dm_read_arg_group(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @parse_features._args, i64 0, i64 0), %struct.dm_arg_set* %14, i32* %7, i8** %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %134

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %134

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %130, %27
  %29 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %30 = call i8* @dm_shift_arg(%struct.dm_arg_set* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strcasecmp(i8* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load %struct.multipath*, %struct.multipath** %5, align 8
  %38 = call i32 @queue_if_no_path(%struct.multipath* %37, i32 1, i32 0)
  store i32 %38, i32* %6, align 4
  br label %123

39:                                               ; preds = %28
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @MPATHF_RETAIN_ATTACHED_HW_HANDLER, align 4
  %45 = load %struct.multipath*, %struct.multipath** %5, align 8
  %46 = getelementptr inbounds %struct.multipath, %struct.multipath* %45, i32 0, i32 3
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %123

48:                                               ; preds = %39
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp uge i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %57 = load %struct.multipath*, %struct.multipath** %5, align 8
  %58 = getelementptr inbounds %struct.multipath, %struct.multipath* %57, i32 0, i32 2
  %59 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 0
  %61 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @parse_features._args, i64 0, i64 1), %struct.dm_arg_set* %56, i32* %58, i8** %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %7, align 4
  br label %123

64:                                               ; preds = %52, %48
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = icmp uge i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %73 = load %struct.multipath*, %struct.multipath** %5, align 8
  %74 = getelementptr inbounds %struct.multipath, %struct.multipath* %73, i32 0, i32 1
  %75 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %76 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %75, i32 0, i32 0
  %77 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @parse_features._args, i64 0, i64 2), %struct.dm_arg_set* %72, i32* %74, i8** %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %7, align 4
  br label %123

80:                                               ; preds = %68, %64
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %118, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = icmp uge i32 %85, 1
  br i1 %86, label %87, label %118

87:                                               ; preds = %84
  %88 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %89 = call i8* @dm_shift_arg(%struct.dm_arg_set* %88)
  store i8* %89, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @strcasecmp(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @DM_TYPE_BIO_BASED, align 4
  %95 = load %struct.multipath*, %struct.multipath** %5, align 8
  %96 = getelementptr inbounds %struct.multipath, %struct.multipath* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %115

97:                                               ; preds = %87
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @strcasecmp(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* @DM_TYPE_REQUEST_BASED, align 4
  %107 = load %struct.multipath*, %struct.multipath** %5, align 8
  %108 = getelementptr inbounds %struct.multipath, %struct.multipath* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %114

109:                                              ; preds = %101
  %110 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %111 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8** %111, align 8
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %105
  br label %115

115:                                              ; preds = %114, %93
  %116 = load i32, i32* %7, align 4
  %117 = add i32 %116, -1
  store i32 %117, i32* %7, align 4
  br label %123

118:                                              ; preds = %84, %80
  %119 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %120 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %119, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8** %120, align 8
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %115, %71, %55, %43, %36
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i1 [ false, %123 ], [ %129, %126 ]
  br i1 %131, label %28, label %132

132:                                              ; preds = %130
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %26, %20
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @queue_if_no_path(%struct.multipath*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
