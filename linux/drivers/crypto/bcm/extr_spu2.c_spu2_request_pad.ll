; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_request_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_request_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"  GCM: padding to 16 byte alignment: %u bytes\0A\00", align 1
@HASH_ALG_MD5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"  STAT: padding to 4 byte alignment: %u bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu2_request_pad(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @memset(i32* %33, i32 0, i32 %34)
  %36 = load i32*, i32** %15, align 8
  store i32 128, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = load i32*, i32** %15, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  store i32* %41, i32** %15, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @HASH_ALG_MD5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %46, 8
  %48 = call i32 @cpu_to_le64(i32 %47)
  %49 = load i32*, i32** %15, align 8
  store i32 %48, i32* %49, align 4
  br label %55

50:                                               ; preds = %32
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %51, 8
  %53 = call i32 @cpu_to_be64(i32 %52)
  %54 = load i32*, i32** %15, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32*, i32** %15, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32* %57, i32** %15, align 8
  br label %58

58:                                               ; preds = %55, %29
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @flow_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @memset(i32* %64, i32 0, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %15, align 8
  br label %71

71:                                               ; preds = %61, %58
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
