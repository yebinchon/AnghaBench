; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu.c_spum_request_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu.c_spum_request_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"  GCM: padding to 16 byte alignment: %u bytes\0A\00", align 1
@HASH_ALG_AES = common dso_local global i32 0, align 4
@HASH_MODE_XCBC = common dso_local global i32 0, align 4
@HASH_ALG_MD5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"  STAT: padding to 4 byte alignment: %u bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spum_request_pad(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  store i32* %16, i32** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %7
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @flow_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %15, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @memset(i32* %22, i32 0, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %15, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %15, align 8
  br label %29

29:                                               ; preds = %19, %7
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @memset(i32* %33, i32 0, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @HASH_ALG_AES, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @HASH_MODE_XCBC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %15, align 8
  br label %71

48:                                               ; preds = %39, %32
  %49 = load i32*, i32** %15, align 8
  store i32 128, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 4
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %15, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @HASH_ALG_MD5, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %59, 8
  %61 = call i32 @cpu_to_le64(i32 %60)
  %62 = load i32*, i32** %15, align 8
  store i32 %61, i32* %62, align 4
  br label %68

63:                                               ; preds = %48
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 %64, 8
  %66 = call i32 @cpu_to_be64(i32 %65)
  %67 = load i32*, i32** %15, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %15, align 8
  br label %71

71:                                               ; preds = %68, %43
  br label %72

72:                                               ; preds = %71, %29
  %73 = load i32, i32* %14, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @flow_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @memset(i32* %78, i32 0, i32 %79)
  %81 = load i32, i32* %14, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %15, align 8
  br label %85

85:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @flow_log(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
