; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi.c_systab_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi.c_systab_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFI_INVALID_TABLE_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"MPS=0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ACPI20=0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ACPI=0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SMBIOS3=0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SMBIOS=0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"HCDP=0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"BOOTINFO=0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"UGA=0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @systab_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @systab_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  store i8* %9, i8** %8, align 8
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = icmp ne %struct.kobject* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %113

18:                                               ; preds = %12
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %20 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %22, %18
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 1), align 8
  %31 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 1), align 8
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 2), align 8
  %42 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 2), align 8
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i8*, i8** %8, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 3), align 8
  %53 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 3), align 8
  %58 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %55, %51
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 4), align 8
  %64 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 4), align 8
  %69 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = load i8*, i8** %8, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 5), align 8
  %75 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 5), align 8
  %80 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %79)
  %81 = load i8*, i8** %8, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %77, %73
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 6), align 8
  %86 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 6), align 8
  %91 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %90)
  %92 = load i8*, i8** %8, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %8, align 8
  br label %95

95:                                               ; preds = %88, %84
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 7), align 8
  %97 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 7), align 8
  %102 = call i32 @sprintf(i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %101)
  %103 = load i8*, i8** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %8, align 8
  br label %106

106:                                              ; preds = %99, %95
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %106, %15
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
