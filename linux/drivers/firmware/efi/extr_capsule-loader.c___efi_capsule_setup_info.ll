; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule-loader.c___efi_capsule_setup_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule-loader.c___efi_capsule_setup_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capsule_info = type { i8*, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid capsule size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"capsule not supported\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__efi_capsule_setup_info(%struct.capsule_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.capsule_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.capsule_info* %0, %struct.capsule_info** %3, align 8
  %7 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %8 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = call i64 @ALIGN(i32 %9, i64 %10)
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = udiv i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %22 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %26 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %30 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %34 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %33, i32 0, i32 2
  %35 = call i32 @efi_capsule_supported(i32 %24, i32 %28, i32 %32, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %20
  %42 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %43 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = mul i64 %45, 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* @__GFP_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @krealloc(i8* %44, i64 %46, i32 %49)
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %78

56:                                               ; preds = %41
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %59 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %61 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = mul i64 %63, 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = load i32, i32* @__GFP_ZERO, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @krealloc(i8* %62, i64 %64, i32 %67)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %56
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.capsule_info*, %struct.capsule_info** %3, align 8
  %77 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %71, %53, %38, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @ALIGN(i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @efi_capsule_supported(i32, i32, i32, i32*) #1

declare dso_local i8* @krealloc(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
