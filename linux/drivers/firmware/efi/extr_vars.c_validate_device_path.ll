; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_validate_device_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_validate_device_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_generic_dev_path = type { i32, i64, i64 }

@EFI_DEV_END_PATH = common dso_local global i64 0, align 8
@EFI_DEV_END_PATH2 = common dso_local global i64 0, align 8
@EFI_DEV_END_ENTIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64)* @validate_device_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_device_path(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.efi_generic_dev_path*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = bitcast i32* %12 to %struct.efi_generic_dev_path*
  store %struct.efi_generic_dev_path* %13, %struct.efi_generic_dev_path** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 24
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %73

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %66, %17
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 %21, 24
  %23 = icmp ule i64 %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.efi_generic_dev_path*, %struct.efi_generic_dev_path** %10, align 8
  %26 = getelementptr inbounds %struct.efi_generic_dev_path, %struct.efi_generic_dev_path* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 24
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.efi_generic_dev_path*, %struct.efi_generic_dev_path** %10, align 8
  %32 = getelementptr inbounds %struct.efi_generic_dev_path, %struct.efi_generic_dev_path* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %35, %37
  %39 = icmp ule i64 %34, %38
  br label %40

40:                                               ; preds = %30, %24, %18
  %41 = phi i1 [ false, %24 ], [ false, %18 ], [ %39, %30 ]
  br i1 %41, label %42, label %72

42:                                               ; preds = %40
  %43 = load %struct.efi_generic_dev_path*, %struct.efi_generic_dev_path** %10, align 8
  %44 = getelementptr inbounds %struct.efi_generic_dev_path, %struct.efi_generic_dev_path* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load %struct.efi_generic_dev_path*, %struct.efi_generic_dev_path** %10, align 8
  %49 = getelementptr inbounds %struct.efi_generic_dev_path, %struct.efi_generic_dev_path* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EFI_DEV_END_PATH, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %42
  %54 = load %struct.efi_generic_dev_path*, %struct.efi_generic_dev_path** %10, align 8
  %55 = getelementptr inbounds %struct.efi_generic_dev_path, %struct.efi_generic_dev_path* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EFI_DEV_END_PATH2, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53, %42
  %60 = load %struct.efi_generic_dev_path*, %struct.efi_generic_dev_path** %10, align 8
  %61 = getelementptr inbounds %struct.efi_generic_dev_path, %struct.efi_generic_dev_path* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EFI_DEV_END_ENTIRE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %73

66:                                               ; preds = %59, %53
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to %struct.efi_generic_dev_path*
  store %struct.efi_generic_dev_path* %71, %struct.efi_generic_dev_path** %10, align 8
  br label %18

72:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %65, %16
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
