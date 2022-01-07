; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_caam_strstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_caam_strstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_src = type { i32 (%struct.device*, i64, i8*)*, i8* }
%struct.device = type { i32 }

@caam_strstatus.status_src = internal constant <{ [8 x %struct.stat_src], [8 x %struct.stat_src] }> <{ [8 x %struct.stat_src] [%struct.stat_src { i32 (%struct.device*, i64, i8*)* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, %struct.stat_src zeroinitializer, %struct.stat_src { i32 (%struct.device*, i64, i8*)* inttoptr (i64 133 to i32 (%struct.device*, i64, i8*)*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0) }, %struct.stat_src { i32 (%struct.device*, i64, i8*)* inttoptr (i64 129 to i32 (%struct.device*, i64, i8*)*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0) }, %struct.stat_src { i32 (%struct.device*, i64, i8*)* inttoptr (i64 131 to i32 (%struct.device*, i64, i8*)*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0) }, %struct.stat_src { i32 (%struct.device*, i64, i8*)* inttoptr (i64 128 to i32 (%struct.device*, i64, i8*)*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0) }, %struct.stat_src { i32 (%struct.device*, i64, i8*)* inttoptr (i64 130 to i32 (%struct.device*, i64, i8*)*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0) }, %struct.stat_src { i32 (%struct.device*, i64, i8*)* inttoptr (i64 132 to i32 (%struct.device*, i64, i8*)*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0) }], [8 x %struct.stat_src] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CCB\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Jump\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DECO\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Queue Manager Interface\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Job Ring\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Condition Code\00", align 1
@JRSTA_SSRC_SHIFT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%d: unknown error source\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_strstatus(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @JRSTA_SSRC_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = getelementptr inbounds [16 x %struct.stat_src], [16 x %struct.stat_src]* bitcast (<{ [8 x %struct.stat_src], [8 x %struct.stat_src] }>* @caam_strstatus.status_src to [16 x %struct.stat_src]*), i64 0, i64 %13
  %15 = getelementptr inbounds %struct.stat_src, %struct.stat_src* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds [16 x %struct.stat_src], [16 x %struct.stat_src]* bitcast (<{ [8 x %struct.stat_src], [8 x %struct.stat_src] }>* @caam_strstatus.status_src to [16 x %struct.stat_src]*), i64 0, i64 %17
  %19 = getelementptr inbounds %struct.stat_src, %struct.stat_src* %18, i32 0, i32 0
  %20 = load i32 (%struct.device*, i64, i8*)*, i32 (%struct.device*, i64, i8*)** %19, align 16
  %21 = icmp ne i32 (%struct.device*, i64, i8*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds [16 x %struct.stat_src], [16 x %struct.stat_src]* bitcast (<{ [8 x %struct.stat_src], [8 x %struct.stat_src] }>* @caam_strstatus.status_src to [16 x %struct.stat_src]*), i64 0, i64 %23
  %25 = getelementptr inbounds %struct.stat_src, %struct.stat_src* %24, i32 0, i32 0
  %26 = load i32 (%struct.device*, i64, i8*)*, i32 (%struct.device*, i64, i8*)** %25, align 16
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 %26(%struct.device* %27, i64 %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %3
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %36, i8* %37)
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %22
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
