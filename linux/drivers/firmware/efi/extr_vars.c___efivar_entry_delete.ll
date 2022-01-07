; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c___efivar_entry_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c___efivar_entry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32, i32, i32*)* }
%struct.efivar_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@__efivars = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__efivar_entry_delete(%struct.efivar_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efivar_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.efivar_entry* %0, %struct.efivar_entry** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @__efivars, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @__efivars, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32*, i32, i32, i32*)*, i32 (i32, i32*, i32, i32, i32*)** %14, align 8
  %16 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %17 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %21 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 %15(i32 %19, i32* %22, i32 0, i32 0, i32* null)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @efi_status_to_err(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %10, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @efi_status_to_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
