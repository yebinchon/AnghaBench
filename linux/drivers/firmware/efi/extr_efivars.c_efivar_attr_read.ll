; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_attr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_attr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.efi_variable }
%struct.efi_variable = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFI_VARIABLE_NON_VOLATILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EFI_VARIABLE_NON_VOLATILE\0A\00", align 1
@EFI_VARIABLE_BOOTSERVICE_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"EFI_VARIABLE_BOOTSERVICE_ACCESS\0A\00", align 1
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"EFI_VARIABLE_RUNTIME_ACCESS\0A\00", align 1
@EFI_VARIABLE_HARDWARE_ERROR_RECORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"EFI_VARIABLE_HARDWARE_ERROR_RECORD\0A\00", align 1
@EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS\0A\00", align 1
@EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS\0A\00", align 1
@EFI_VARIABLE_APPEND_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"EFI_VARIABLE_APPEND_WRITE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i8*)* @efivar_attr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_attr_read(%struct.efivar_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_variable*, align 8
  %7 = alloca i8*, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %9 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %8, i32 0, i32 0
  store %struct.efi_variable* %9, %struct.efi_variable** %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %12 = icmp ne %struct.efivar_entry* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %133

19:                                               ; preds = %13
  %20 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %21 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %20, i32 0, i32 0
  store i32 1024, i32* %21, align 4
  %22 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %23 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %24 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %23, i32 0, i32 1
  %25 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %26 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %25, i32 0, i32 0
  %27 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %28 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @efivar_entry_get(%struct.efivar_entry* %22, i32* %24, i32* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %133

35:                                               ; preds = %19
  %36 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %37 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EFI_VARIABLE_NON_VOLATILE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %50 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EFI_VARIABLE_BOOTSERVICE_ACCESS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %63 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EFI_VARIABLE_RUNTIME_ACCESS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i8*, i8** %7, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %76 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EFI_VARIABLE_HARDWARE_ERROR_RECORD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i8*, i8** %7, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %7, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %89 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @sprintf(i8* %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i8*, i8** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %102 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @sprintf(i8* %108, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i8*, i8** %7, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %7, align 8
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %115 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @EFI_VARIABLE_APPEND_WRITE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @sprintf(i8* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i8*, i8** %7, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %7, align 8
  br label %126

126:                                              ; preds = %120, %113
  %127 = load i8*, i8** %7, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %126, %32, %16
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i64 @efivar_entry_get(%struct.efivar_entry*, i32*, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
