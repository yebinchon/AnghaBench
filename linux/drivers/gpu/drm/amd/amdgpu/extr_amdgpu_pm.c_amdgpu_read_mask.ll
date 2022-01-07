; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_read_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_read_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMDGPU_MASK_BUF_MAX = common dso_local global i32 0, align 4
@__const.amdgpu_read_mask.delimiter = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @amdgpu_read_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_read_mask(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [3 x i8], align 1
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %10, align 8
  %17 = load i32, i32* @AMDGPU_MASK_BUF_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = bitcast [3 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.amdgpu_read_mask.delimiter, i32 0, i32 0), i64 3, i1 false)
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* %6, align 8
  %25 = sub i64 %19, 1
  %26 = trunc i64 %25 to i32
  %27 = call i64 @min(i64 %24, i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %15, align 8
  %30 = call i32 @memcpy(i8* %21, i8* %28, i64 %29)
  %31 = load i64, i64* %15, align 8
  %32 = getelementptr inbounds i8, i8* %21, i64 %31
  store i8 0, i8* %32, align 1
  store i8* %21, i8** %11, align 8
  br label %33

33:                                               ; preds = %60, %3
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %40 = call i8* @strsep(i8** %11, i8* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @kstrtol(i8* %45, i32 0, i64* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %62

52:                                               ; preds = %44
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %60

59:                                               ; preds = %38
  br label %61

60:                                               ; preds = %52
  br label %33

61:                                               ; preds = %59, %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @min(i64, i32) #3

declare dso_local i32 @memcpy(i8*, i8*, i64) #3

declare dso_local i8* @strsep(i8**, i8*) #3

declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @kstrtol(i8*, i32, i64*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
