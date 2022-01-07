; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_copy_out_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_copy_out_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_variable = type { i32, i32, i32, i32, i32 }
%struct.compat_efi_variable = type { i32, i32, i32, i32, i32 }

@EFI_VAR_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efi_variable*, %struct.compat_efi_variable*)* @copy_out_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_out_compat(%struct.efi_variable* %0, %struct.compat_efi_variable* %1) #0 {
  %3 = alloca %struct.efi_variable*, align 8
  %4 = alloca %struct.compat_efi_variable*, align 8
  store %struct.efi_variable* %0, %struct.efi_variable** %3, align 8
  store %struct.compat_efi_variable* %1, %struct.compat_efi_variable** %4, align 8
  %5 = load %struct.efi_variable*, %struct.efi_variable** %3, align 8
  %6 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %4, align 8
  %9 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EFI_VAR_NAME_LEN, align 4
  %12 = call i32 @memcpy(i32 %7, i32 %10, i32 %11)
  %13 = load %struct.efi_variable*, %struct.efi_variable** %3, align 8
  %14 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %4, align 8
  %17 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i32 %15, i32 %18, i32 4)
  %20 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %4, align 8
  %21 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.efi_variable*, %struct.efi_variable** %3, align 8
  %24 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %4, align 8
  %26 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.efi_variable*, %struct.efi_variable** %3, align 8
  %29 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %4, align 8
  %31 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.efi_variable*, %struct.efi_variable** %3, align 8
  %34 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
