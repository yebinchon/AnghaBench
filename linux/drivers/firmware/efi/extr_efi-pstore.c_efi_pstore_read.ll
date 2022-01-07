; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_record = type { i32* }

@EFIVARS_DATA_SIZE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore_record*)* @efi_pstore_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_pstore_read(%struct.pstore_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore_record*, align 8
  %4 = alloca i32, align 4
  store %struct.pstore_record* %0, %struct.pstore_record** %3, align 8
  %5 = load i32, i32* @EFIVARS_DATA_SIZE_MAX, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32* @kzalloc(i32 %5, i32 %6)
  %8 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %9 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %8, i32 0, i32 0
  store i32* %7, i32** %9, align 8
  %10 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %11 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = call i64 (...) @efivar_entry_iter_begin()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %25 = call i32 @efi_pstore_sysfs_entry_iter(%struct.pstore_record* %24)
  store i32 %25, i32* %4, align 4
  %26 = call i32 (...) @efivar_entry_iter_end()
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %32 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %36 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @efivar_entry_iter_begin(...) #1

declare dso_local i32 @efi_pstore_sysfs_entry_iter(%struct.pstore_record*) #1

declare dso_local i32 @efivar_entry_iter_end(...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
