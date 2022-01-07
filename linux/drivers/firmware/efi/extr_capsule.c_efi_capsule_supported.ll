; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule.c_efi_capsule_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule.c_efi_capsule_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_4__**, i32, i64*, i32*)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EFI_CAPSULE_SUPPORTED_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_capsule_supported(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca [1 x %struct.TYPE_4__*], align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = getelementptr inbounds [1 x %struct.TYPE_4__*], [1 x %struct.TYPE_4__*]* %11, i64 0, i64 0
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EFI_CAPSULE_SUPPORTED_FLAG_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 16, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 16, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %27 = call i32 @memcpy(i32* %26, i32* %6, i32 4)
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i64 (%struct.TYPE_4__**, i32, i64*, i32*)*, i64 (%struct.TYPE_4__**, i32, i64*, i32*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @efi, i32 0, i32 0), align 8
  %31 = getelementptr inbounds [1 x %struct.TYPE_4__*], [1 x %struct.TYPE_4__*]* %11, i64 0, i64 0
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 %30(%struct.TYPE_4__** %31, i32 1, i64* %13, i32* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @EFI_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @efi_status_to_err(i64 %38)
  store i32 %39, i32* %5, align 4
  br label %48

40:                                               ; preds = %23
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44, %37, %20
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @efi_status_to_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
