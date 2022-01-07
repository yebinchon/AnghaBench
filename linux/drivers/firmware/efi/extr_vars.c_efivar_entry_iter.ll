; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type opaque
%struct.list_head = type { i32 }
%struct.efivar_entry.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_entry_iter(i32 (%struct.efivar_entry*, i8*)* %0, %struct.list_head* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.efivar_entry*, i8*)*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 (%struct.efivar_entry*, i8*)* %0, i32 (%struct.efivar_entry*, i8*)** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @efivar_entry_iter_begin()
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %4, align 4
  br label %22

14:                                               ; preds = %3
  %15 = load i32 (%struct.efivar_entry*, i8*)*, i32 (%struct.efivar_entry*, i8*)** %5, align 8
  %16 = bitcast i32 (%struct.efivar_entry*, i8*)* %15 to i32 (%struct.efivar_entry.0*, i8*)*
  %17 = load %struct.list_head*, %struct.list_head** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @__efivar_entry_iter(i32 (%struct.efivar_entry.0*, i8*)* %16, %struct.list_head* %17, i8* %18, i32* null)
  store i32 %19, i32* %8, align 4
  %20 = call i32 (...) @efivar_entry_iter_end()
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @efivar_entry_iter_begin(...) #1

declare dso_local i32 @__efivar_entry_iter(i32 (%struct.efivar_entry.0*, i8*)*, %struct.list_head*, i8*, i32*) #1

declare dso_local i32 @efivar_entry_iter_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
