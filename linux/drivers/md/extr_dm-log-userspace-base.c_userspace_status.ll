; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-base.c_userspace_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-base.c_userspace_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.TYPE_2__*, %struct.log_c* }
%struct.TYPE_2__ = type { i8* }
%struct.log_c = type { i32, i32, i32, i32 }

@DM_ULOG_STATUS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s 1 COM_FAILURE\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s %u %s \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"integrated_flush \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, i32, i8*, i32)* @userspace_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userspace_status(%struct.dm_dirty_log* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_dirty_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %11, align 8
  %15 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %16 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %15, i32 0, i32 1
  %17 = load %struct.log_c*, %struct.log_c** %16, align 8
  store %struct.log_c* %17, %struct.log_c** %12, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %70 [
    i32 129, label %19
    i32 128, label %37
  ]

19:                                               ; preds = %4
  %20 = load %struct.log_c*, %struct.log_c** %12, align 8
  %21 = load %struct.log_c*, %struct.log_c** %12, align 8
  %22 = getelementptr inbounds %struct.log_c, %struct.log_c* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DM_ULOG_STATUS_INFO, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @userspace_do_request(%struct.log_c* %20, i32 %23, i32 %24, i32* null, i32 0, i8* %25, i64* %11)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  store i64 0, i64* %11, align 8
  %30 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %31 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %29, %19
  br label %70

37:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  %38 = load %struct.log_c*, %struct.log_c** %12, align 8
  %39 = getelementptr inbounds %struct.log_c, %struct.log_c* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @strchr(i32 %40, i8 signext 32)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  %49 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %50 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.log_c*, %struct.log_c** %12, align 8
  %55 = getelementptr inbounds %struct.log_c, %struct.log_c* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.log_c*, %struct.log_c** %12, align 8
  %58 = getelementptr inbounds %struct.log_c, %struct.log_c* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %56, i32 %59)
  %61 = load %struct.log_c*, %struct.log_c** %12, align 8
  %62 = getelementptr inbounds %struct.log_c, %struct.log_c* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %37
  %66 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %37
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %4, %67, %36
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %77

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = trunc i64 %75 to i32
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ 0, %73 ], [ %76, %74 ]
  ret i32 %78
}

declare dso_local i32 @userspace_do_request(%struct.log_c*, i32, i32, i32*, i32, i8*, i64*) #1

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
