; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm64-stub.c_check_platform_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm64-stub.c_check_platform_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_ARM64_4K_PAGES = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4
@ID_AA64MMFR0_EL1 = common dso_local global i32 0, align 4
@ID_AA64MMFR0_TGRAN_SHIFT = common dso_local global i32 0, align 4
@ID_AA64MMFR0_TGRAN_SUPPORTED = common dso_local global i32 0, align 4
@CONFIG_ARM64_64K_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"This 64 KB granular kernel is not supported by your CPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"This 16 KB granular kernel is not supported by your CPU\0A\00", align 1
@EFI_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_platform_features(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @CONFIG_ARM64_4K_PAGES, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %9, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load i32, i32* @ID_AA64MMFR0_EL1, align 4
  %12 = call i32 @read_cpuid(i32 %11)
  %13 = load i32, i32* @ID_AA64MMFR0_TGRAN_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = and i32 %14, 15
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ID_AA64MMFR0_TGRAN_SUPPORTED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %10
  %20 = load i32, i32* @CONFIG_ARM64_64K_PAGES, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @pr_efi_err(i32* %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @pr_efi_err(i32* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %10
  %32 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @read_cpuid(i32) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
