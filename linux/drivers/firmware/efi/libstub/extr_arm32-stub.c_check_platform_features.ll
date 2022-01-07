; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_check_platform_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_check_platform_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_ARM_LPAE = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4
@CPUID_EXT_MMFR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"This LPAE kernel is not supported by your CPU\0A\00", align 1
@EFI_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_platform_features(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @CONFIG_ARM_LPAE, align 4
  %6 = call i32 @IS_ENABLED(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load i32, i32* @CPUID_EXT_MMFR0, align 4
  %12 = call i32 @cpuid_feature_extract(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pr_efi_err(i32* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %15, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @cpuid_feature_extract(i32, i32) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
