; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/test/extr_efi_test.c_efi_test_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/test/extr_efi_test.c_efi_test_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @efi_test_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efi_test_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %42 [
    i32 135, label %9
    i32 129, label %12
    i32 136, label %15
    i32 130, label %18
    i32 134, label %21
    i32 128, label %24
    i32 137, label %27
    i32 138, label %30
    i32 132, label %33
    i32 133, label %36
    i32 131, label %39
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %7, align 8
  %11 = call i64 @efi_runtime_get_variable(i64 %10)
  store i64 %11, i64* %4, align 8
  br label %45

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @efi_runtime_set_variable(i64 %13)
  store i64 %14, i64* %4, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @efi_runtime_get_time(i64 %16)
  store i64 %17, i64* %4, align 8
  br label %45

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @efi_runtime_set_time(i64 %19)
  store i64 %20, i64* %4, align 8
  br label %45

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @efi_runtime_get_waketime(i64 %22)
  store i64 %23, i64* %4, align 8
  br label %45

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @efi_runtime_set_waketime(i64 %25)
  store i64 %26, i64* %4, align 8
  br label %45

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @efi_runtime_get_nextvariablename(i64 %28)
  store i64 %29, i64* %4, align 8
  br label %45

30:                                               ; preds = %3
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @efi_runtime_get_nexthighmonocount(i64 %31)
  store i64 %32, i64* %4, align 8
  br label %45

33:                                               ; preds = %3
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @efi_runtime_query_variableinfo(i64 %34)
  store i64 %35, i64* %4, align 8
  br label %45

36:                                               ; preds = %3
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @efi_runtime_query_capsulecaps(i64 %37)
  store i64 %38, i64* %4, align 8
  br label %45

39:                                               ; preds = %3
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @efi_runtime_reset_system(i64 %40)
  store i64 %41, i64* %4, align 8
  br label %45

42:                                               ; preds = %3
  %43 = load i64, i64* @ENOTTY, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i64 @efi_runtime_get_variable(i64) #1

declare dso_local i64 @efi_runtime_set_variable(i64) #1

declare dso_local i64 @efi_runtime_get_time(i64) #1

declare dso_local i64 @efi_runtime_set_time(i64) #1

declare dso_local i64 @efi_runtime_get_waketime(i64) #1

declare dso_local i64 @efi_runtime_set_waketime(i64) #1

declare dso_local i64 @efi_runtime_get_nextvariablename(i64) #1

declare dso_local i64 @efi_runtime_get_nexthighmonocount(i64) #1

declare dso_local i64 @efi_runtime_query_variableinfo(i64) #1

declare dso_local i64 @efi_runtime_query_capsulecaps(i64) #1

declare dso_local i64 @efi_runtime_reset_system(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
