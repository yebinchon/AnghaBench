; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_report_ccb_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_report_ccb_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@JRSTA_CCBERR_CHAID_MASK = common dso_local global i32 0, align 4
@JRSTA_CCBERR_CHAID_SHIFT = common dso_local global i32 0, align 4
@JRSTA_CCBERR_ERRID_MASK = common dso_local global i32 0, align 4
@JRSTA_DECOERR_INDEX_MASK = common dso_local global i32 0, align 4
@JRSTA_DECOERR_INDEX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unidentified cha_id value 0x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unidentified err_id value 0x\00", align 1
@JRSTA_DECOERR_JUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"jump tgt desc idx\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"desc idx\00", align 1
@cha_id_list = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@JRSTA_CCBERR_CHAID_RNG = common dso_local global i64 0, align 8
@rng_err_id_list = common dso_local global i8** null, align 8
@err_id_list = common dso_local global i8** null, align 8
@JRSTA_CCBERR_ERRID_ICVCHK = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"%08x: %s: %s %d: %s%s: %s%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @report_ccb_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_ccb_status(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [3 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca [3 x i8], align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @JRSTA_CCBERR_CHAID_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @JRSTA_CCBERR_CHAID_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @JRSTA_CCBERR_ERRID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @JRSTA_DECOERR_INDEX_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @JRSTA_DECOERR_INDEX_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %32 = bitcast [3 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 3, i1 false)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %33 = bitcast [3 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %33, i8 0, i64 3, i1 false)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @JRSTA_DECOERR_JUMP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %40

39:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %8, align 8
  %42 = load i8**, i8*** @cha_id_list, align 8
  %43 = call i64 @ARRAY_SIZE(i8** %42)
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8**, i8*** @cha_id_list, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %12, align 8
  br label %54

50:                                               ; preds = %40
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @snprintf(i8* %51, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* @JRSTA_CCBERR_CHAID_SHIFT, align 4
  %57 = zext i32 %56 to i64
  %58 = shl i64 %55, %57
  %59 = load i64, i64* @JRSTA_CCBERR_CHAID_RNG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  %63 = load i8**, i8*** @rng_err_id_list, align 8
  %64 = call i64 @ARRAY_SIZE(i8** %63)
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i8**, i8*** @rng_err_id_list, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i8**, i8*** @rng_err_id_list, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %14, align 8
  br label %83

78:                                               ; preds = %66, %61, %54
  %79 = load i8**, i8*** @err_id_list, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %14, align 8
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @JRSTA_CCBERR_ERRID_ICVCHK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @EBADMSG, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %103

90:                                               ; preds = %83
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %100 = call i32 @dev_err_ratelimited(%struct.device* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %92, i8* %93, i8* %94, i64 %95, i8* %96, i8* %97, i8* %98, i8* %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %90, %87
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i32, i8*, i8*, i64, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
