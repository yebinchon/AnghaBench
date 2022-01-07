; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_fdt.c_get_fdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_fdt.c_get_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVICE_TREE_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Invalid header detected on UEFI supplied FDT, ignoring ...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_fdt(i32* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @DEVICE_TREE_GUID, align 4
  %9 = call i8* @get_efi_config_table(i32* %7, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @fdt_check_header(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @pr_efi_err(i32* %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %25

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @fdt_totalsize(i8* %21)
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %20, %17, %12
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local i8* @get_efi_config_table(i32*, i32) #1

declare dso_local i64 @fdt_check_header(i8*) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
