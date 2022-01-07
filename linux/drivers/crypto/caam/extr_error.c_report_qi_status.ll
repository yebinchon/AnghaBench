; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_report_qi_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_error.c_report_qi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }
%struct.device = type { i32 }

@JRSTA_QIERR_ERROR_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"unidentified error value 0x\00", align 1
@qi_error_list = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%08x: %s: %s%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i8*)* @report_qi_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_qi_status(%struct.device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @JRSTA_QIERR_ERROR_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %7, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %14 = bitcast [3 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 3, i1 false)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %31, %3
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qi_error_list, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qi_error_list, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qi_error_list, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qi_error_list, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qi_error_list, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  br label %58

54:                                               ; preds = %39, %34
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @snprintf(i8* %55, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %64 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %60, i8* %61, i8* %62, i8* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
