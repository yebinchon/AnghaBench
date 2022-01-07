; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_get_pack_member.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_get_pack_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_object* }

@_HWMON_OLD_PACK_FLAGS = common dso_local global i32 0, align 4
@_HWMON_NEW_PACK_FLAGS = common dso_local global i32 0, align 4
@_HWMON_OLD_PACK_NAME = common dso_local global i32 0, align 4
@_HWMON_NEW_PACK_NAME = common dso_local global i32 0, align 4
@_HWMON_OLD_PACK_LIMIT1 = common dso_local global i32 0, align 4
@_HWMON_NEW_PACK_LIMIT1 = common dso_local global i32 0, align 4
@_HWMON_OLD_PACK_LIMIT2 = common dso_local global i32 0, align 4
@_HWMON_NEW_PACK_LIMIT2 = common dso_local global i32 0, align 4
@_HWMON_OLD_PACK_ENABLE = common dso_local global i32 0, align 4
@_HWMON_NEW_PACK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (%struct.atk_data*, %union.acpi_object*, i32)* @atk_get_pack_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @atk_get_pack_member(%struct.atk_data* %0, %union.acpi_object* %1, i32 %2) #0 {
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.atk_data*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atk_data* %0, %struct.atk_data** %5, align 8
  store %union.acpi_object* %1, %union.acpi_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  %11 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %59 [
    i32 131, label %14
    i32 128, label %23
    i32 130, label %32
    i32 129, label %41
    i32 132, label %50
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @_HWMON_OLD_PACK_FLAGS, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @_HWMON_NEW_PACK_FLAGS, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @_HWMON_OLD_PACK_NAME, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @_HWMON_NEW_PACK_NAME, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %9, align 4
  br label %60

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @_HWMON_OLD_PACK_LIMIT1, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @_HWMON_NEW_PACK_LIMIT1, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %9, align 4
  br label %60

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @_HWMON_OLD_PACK_LIMIT2, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @_HWMON_NEW_PACK_LIMIT2, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %9, align 4
  br label %60

50:                                               ; preds = %3
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @_HWMON_OLD_PACK_ENABLE, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @_HWMON_NEW_PACK_ENABLE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %9, align 4
  br label %60

59:                                               ; preds = %3
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  br label %68

60:                                               ; preds = %57, %48, %39, %30, %21
  %61 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %union.acpi_object*, %union.acpi_object** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %64, i64 %66
  store %union.acpi_object* %67, %union.acpi_object** %4, align 8
  br label %68

68:                                               ; preds = %60, %59
  %69 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  ret %union.acpi_object* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
