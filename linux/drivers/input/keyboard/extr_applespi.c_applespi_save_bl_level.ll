; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_save_bl_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_save_bl_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EFI_BL_LEVEL_GUID = common dso_local global i32 0, align 4
@EFI_VARIABLE_NON_VOLATILE = common dso_local global i32 0, align 4
@EFI_VARIABLE_BOOTSERVICE_ACCESS = common dso_local global i32 0, align 4
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4
@EFI_BL_LEVEL_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error saving backlight level to EFI vars: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*, i32)* @applespi_save_bl_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_save_bl_level(%struct.applespi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.applespi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.applespi_data* %0, %struct.applespi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @EFI_BL_LEVEL_GUID, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %8, align 8
  store i64 8, i64* %7, align 8
  %13 = load i32, i32* @EFI_VARIABLE_NON_VOLATILE, align 4
  %14 = load i32, i32* @EFI_VARIABLE_BOOTSERVICE_ACCESS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @EFI_VARIABLE_RUNTIME_ACCESS, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @EFI_BL_LEVEL_NAME, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @efivar_entry_set_safe(i32* %19, i32 %20, i32 %21, i32 1, i64 %22, i64* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %28 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @efivar_entry_set_safe(i32*, i32, i32, i32, i64, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
