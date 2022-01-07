; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm-stub.c_install_memreserve_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm-stub.c_install_memreserve_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_efi_memreserve = type { i32, i64, i64 }

@LINUX_EFI_MEMRESERVE_TABLE_GUID = common dso_local global i32 0, align 4
@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate memreserve entry!\0A\00", align 1
@install_configuration_table = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to install memreserve config table!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_memreserve_table(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.linux_efi_memreserve*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @LINUX_EFI_MEMRESERVE_TABLE_GUID, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @allocate_pool, align 4
  %8 = load i32, i32* @EFI_LOADER_DATA, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  %11 = bitcast %struct.linux_efi_memreserve** %3 to i8**
  %12 = call i64 (i32, i32*, ...) @efi_call_early(i32 %7, i32* %10, i64 24, i8** %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @EFI_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @pr_efi_err(i32* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.linux_efi_memreserve*, %struct.linux_efi_memreserve** %3, align 8
  %21 = getelementptr inbounds %struct.linux_efi_memreserve, %struct.linux_efi_memreserve* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.linux_efi_memreserve*, %struct.linux_efi_memreserve** %3, align 8
  %23 = getelementptr inbounds %struct.linux_efi_memreserve, %struct.linux_efi_memreserve* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.linux_efi_memreserve*, %struct.linux_efi_memreserve** %3, align 8
  %25 = getelementptr inbounds %struct.linux_efi_memreserve, %struct.linux_efi_memreserve* %24, i32 0, i32 0
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load i32, i32* @install_configuration_table, align 4
  %28 = load %struct.linux_efi_memreserve*, %struct.linux_efi_memreserve** %3, align 8
  %29 = call i64 (i32, i32*, ...) @efi_call_early(i32 %27, i32* %4, %struct.linux_efi_memreserve* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @EFI_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @pr_efi_err(i32* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %16, %33, %19
  ret void
}

declare dso_local i64 @efi_call_early(i32, i32*, ...) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
