; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivars_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivars_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivars = type { %struct.kobject*, %struct.efivar_operations* }
%struct.kobject = type { i32 }
%struct.efivar_operations = type { i32 }

@efivars_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__efivars = common dso_local global %struct.efivars* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Registered efivars operations\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivars_register(%struct.efivars* %0, %struct.efivar_operations* %1, %struct.kobject* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efivars*, align 8
  %6 = alloca %struct.efivar_operations*, align 8
  %7 = alloca %struct.kobject*, align 8
  store %struct.efivars* %0, %struct.efivars** %5, align 8
  store %struct.efivar_operations* %1, %struct.efivar_operations** %6, align 8
  store %struct.kobject* %2, %struct.kobject** %7, align 8
  %8 = call i64 @down_interruptible(i32* @efivars_lock)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINTR, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load %struct.efivar_operations*, %struct.efivar_operations** %6, align 8
  %15 = load %struct.efivars*, %struct.efivars** %5, align 8
  %16 = getelementptr inbounds %struct.efivars, %struct.efivars* %15, i32 0, i32 1
  store %struct.efivar_operations* %14, %struct.efivar_operations** %16, align 8
  %17 = load %struct.kobject*, %struct.kobject** %7, align 8
  %18 = load %struct.efivars*, %struct.efivars** %5, align 8
  %19 = getelementptr inbounds %struct.efivars, %struct.efivars* %18, i32 0, i32 0
  store %struct.kobject* %17, %struct.kobject** %19, align 8
  %20 = load %struct.efivars*, %struct.efivars** %5, align 8
  store %struct.efivars* %20, %struct.efivars** @__efivars, align 8
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @up(i32* @efivars_lock)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %13, %10
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
