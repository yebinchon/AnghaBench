; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.pool* }
%struct.pool = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PM_OUT_OF_METADATA_SPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"%s: unable to service pool target messages in READ_ONLY or FAIL mode\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"create_thin\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"create_snap\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"set_transaction_id\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"reserve_metadata_snap\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"release_metadata_snap\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Unrecognised thin pool target message received: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @pool_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pool_c*, align 8
  %14 = alloca %struct.pool*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  %19 = load %struct.pool_c*, %struct.pool_c** %18, align 8
  store %struct.pool_c* %19, %struct.pool_c** %13, align 8
  %20 = load %struct.pool_c*, %struct.pool_c** %13, align 8
  %21 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %20, i32 0, i32 0
  %22 = load %struct.pool*, %struct.pool** %21, align 8
  store %struct.pool* %22, %struct.pool** %14, align 8
  %23 = load %struct.pool*, %struct.pool** %14, align 8
  %24 = call i64 @get_pool_mode(%struct.pool* %23)
  %25 = load i64, i64* @PM_OUT_OF_METADATA_SPACE, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load %struct.pool*, %struct.pool** %14, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dm_device_name(i32 %30)
  %32 = call i32 @DMERR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %119

35:                                               ; preds = %5
  %36 = load i8**, i8*** %9, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load i8**, i8*** %9, align 8
  %44 = load %struct.pool*, %struct.pool** %14, align 8
  %45 = call i32 @process_create_thin_mesg(i32 %42, i8** %43, %struct.pool* %44)
  store i32 %45, i32* %12, align 4
  br label %111

46:                                               ; preds = %35
  %47 = load i8**, i8*** %9, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load i8**, i8*** %9, align 8
  %55 = load %struct.pool*, %struct.pool** %14, align 8
  %56 = call i32 @process_create_snap_mesg(i32 %53, i8** %54, %struct.pool* %55)
  store i32 %56, i32* %12, align 4
  br label %110

57:                                               ; preds = %46
  %58 = load i8**, i8*** %9, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load i8**, i8*** %9, align 8
  %66 = load %struct.pool*, %struct.pool** %14, align 8
  %67 = call i32 @process_delete_mesg(i32 %64, i8** %65, %struct.pool* %66)
  store i32 %67, i32* %12, align 4
  br label %109

68:                                               ; preds = %57
  %69 = load i8**, i8*** %9, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = load i8**, i8*** %9, align 8
  %77 = load %struct.pool*, %struct.pool** %14, align 8
  %78 = call i32 @process_set_transaction_id_mesg(i32 %75, i8** %76, %struct.pool* %77)
  store i32 %78, i32* %12, align 4
  br label %108

79:                                               ; preds = %68
  %80 = load i8**, i8*** %9, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcasecmp(i8* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = load i8**, i8*** %9, align 8
  %88 = load %struct.pool*, %struct.pool** %14, align 8
  %89 = call i32 @process_reserve_metadata_snap_mesg(i32 %86, i8** %87, %struct.pool* %88)
  store i32 %89, i32* %12, align 4
  br label %107

90:                                               ; preds = %79
  %91 = load i8**, i8*** %9, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcasecmp(i8* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load i8**, i8*** %9, align 8
  %99 = load %struct.pool*, %struct.pool** %14, align 8
  %100 = call i32 @process_release_metadata_snap_mesg(i32 %97, i8** %98, %struct.pool* %99)
  store i32 %100, i32* %12, align 4
  br label %106

101:                                              ; preds = %90
  %102 = load i8**, i8*** %9, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %85
  br label %108

108:                                              ; preds = %107, %74
  br label %109

109:                                              ; preds = %108, %63
  br label %110

110:                                              ; preds = %109, %52
  br label %111

111:                                              ; preds = %110, %41
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load %struct.pool*, %struct.pool** %14, align 8
  %116 = call i32 @commit(%struct.pool* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %27
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i64 @get_pool_mode(%struct.pool*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @process_create_thin_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_create_snap_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_delete_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_set_transaction_id_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_reserve_metadata_snap_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_release_metadata_snap_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @DMWARN(i8*, i8*) #1

declare dso_local i32 @commit(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
