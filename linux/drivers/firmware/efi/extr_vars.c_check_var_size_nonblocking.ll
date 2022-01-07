; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_check_var_size_nonblocking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_check_var_size_nonblocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.efivar_operations* }
%struct.efivar_operations = type { i32 (i32, i64, i32)* }

@__efivars = common dso_local global %struct.TYPE_2__* null, align 8
@EFI_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @check_var_size_nonblocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_var_size_nonblocking(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.efivar_operations*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__efivars, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %10, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__efivars, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.efivar_operations*, %struct.efivar_operations** %13, align 8
  store %struct.efivar_operations* %14, %struct.efivar_operations** %6, align 8
  %15 = load %struct.efivar_operations*, %struct.efivar_operations** %6, align 8
  %16 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %15, i32 0, i32 0
  %17 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i64, i32)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %11
  %22 = load %struct.efivar_operations*, %struct.efivar_operations** %6, align 8
  %23 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %22, i32 0, i32 0
  %24 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 %24(i32 %25, i64 %26, i32 1)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %19, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
