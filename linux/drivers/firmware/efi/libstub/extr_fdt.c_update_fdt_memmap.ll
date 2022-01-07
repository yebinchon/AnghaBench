; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_fdt.c_update_fdt_memmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_fdt.c_update_fdt_memmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_boot_memmap = type { i32*, i32*, i32*, i64* }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@EFI_LOAD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"linux,uefi-mmap-start\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"linux,uefi-mmap-size\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"linux,uefi-mmap-desc-size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"linux,uefi-mmap-desc-ver\00", align 1
@EFI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.efi_boot_memmap*)* @update_fdt_memmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_fdt_memmap(i8* %0, %struct.efi_boot_memmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.efi_boot_memmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.efi_boot_memmap* %1, %struct.efi_boot_memmap** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @fdt_path_offset(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %18 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cpu_to_fdt64(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @fdt_setprop_inplace_var(i8* %22, i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %29, i32* %3, align 4
  br label %74

30:                                               ; preds = %16
  %31 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %32 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_fdt32(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @fdt_setprop_inplace_var(i8* %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %74

44:                                               ; preds = %30
  %45 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %46 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_fdt32(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @fdt_setprop_inplace_var(i8* %50, i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %57, i32* %3, align 4
  br label %74

58:                                               ; preds = %44
  %59 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %60 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cpu_to_fdt32(i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @fdt_setprop_inplace_var(i8* %64, i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %70, %56, %42, %28, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @cpu_to_fdt64(i64) #1

declare dso_local i32 @fdt_setprop_inplace_var(i8*, i32, i8*, i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
