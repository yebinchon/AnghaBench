; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_report_deco_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_report_deco_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }
%struct.device = type { i32 }

@JRSTA_DECOERR_ERROR_MASK = common dso_local global i32 0, align 4
@JRSTA_DECOERR_INDEX_MASK = common dso_local global i32 0, align 4
@JRSTA_DECOERR_INDEX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unidentified error value 0x\00", align 1
@JRSTA_DECOERR_JUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"jump tgt desc idx\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"desc idx\00", align 1
@desc_error_list = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%08x: %s: %s %d: %s%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @report_deco_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_deco_status(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @JRSTA_DECOERR_ERROR_MASK, align 4
  %15 = and i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @JRSTA_DECOERR_INDEX_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @JRSTA_DECOERR_INDEX_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %23 = bitcast [3 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %23, i8 0, i64 3, i1 false)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @JRSTA_DECOERR_JUMP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %30

29:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %30

30:                                               ; preds = %29, %28
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc_error_list, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc_error_list, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %31

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc_error_list, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %52)
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc_error_list, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc_error_list, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %10, align 8
  br label %74

70:                                               ; preds = %55, %50
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @snprintf(i8* %71, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %82 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %76, i8* %77, i8* %78, i64 %79, i8* %80, i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i8*, i8*, i64, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
