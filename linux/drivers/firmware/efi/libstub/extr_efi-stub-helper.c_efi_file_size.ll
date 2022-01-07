; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_file_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EFI_FILE_INFO_ID = common dso_local global i32 0, align 4
@efi_file_handle = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@EFI_FILE_MODE_READ = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Failed to open file: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@get_info = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to get file info size\0A\00", align 1
@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to alloc mem for file info\0A\00", align 1
@free_pool = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to get initrd info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32*, i8**, i32*)* @efi_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efi_file_size(i32* %0, i8* %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i32, i32* @EFI_FILE_INFO_ID, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* @efi_file_handle, align 4
  %21 = load i32, i32* @open, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to i64*
  %25 = load i32, i32* @EFI_FILE_MODE_READ, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_4__*
  %28 = call i64 (i32, i32, i8*, i8**, i64*, %struct.TYPE_4__*, ...) @efi_call_proto(i32 %20, i32 %21, i8* %22, i8** %12, i64* %24, %struct.TYPE_4__* %27, i32 0)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @EFI_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %5
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @efi_printk(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @efi_char16_printk(i32* %35, i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @efi_printk(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* %15, align 8
  store i64 %40, i64* %6, align 8
  br label %102

41:                                               ; preds = %5
  %42 = load i8*, i8** %12, align 8
  %43 = load i8**, i8*** %10, align 8
  store i8* %42, i8** %43, align 8
  store i64 0, i64* %17, align 8
  %44 = load i32, i32* @efi_file_handle, align 4
  %45 = load i32, i32* @get_info, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = bitcast i32* %16 to i8**
  %48 = call i64 (i32, i32, i8*, i8**, i64*, %struct.TYPE_4__*, ...) @efi_call_proto(i32 %44, i32 %45, i8* %46, i8** %47, i64* %17, %struct.TYPE_4__* null)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @efi_printk(i32* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i64, i64* %15, align 8
  store i64 %55, i64* %6, align 8
  br label %102

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %82, %56
  %58 = load i32, i32* @allocate_pool, align 4
  %59 = load i32, i32* @EFI_LOADER_DATA, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_4__*
  %62 = load i64, i64* %17, align 8
  %63 = bitcast %struct.TYPE_4__** %14 to i8**
  %64 = call i64 (i32, %struct.TYPE_4__*, ...) @efi_call_early(i32 %58, %struct.TYPE_4__* %61, i64 %62, i8** %63)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* @EFI_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @efi_printk(i32* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i64, i64* %15, align 8
  store i64 %71, i64* %6, align 8
  br label %102

72:                                               ; preds = %57
  %73 = load i32, i32* @efi_file_handle, align 4
  %74 = load i32, i32* @get_info, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = bitcast i32* %16 to i8**
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %78 = call i64 (i32, i32, i8*, i8**, i64*, %struct.TYPE_4__*, ...) @efi_call_proto(i32 %73, i32 %74, i8* %75, i8** %76, i64* %17, %struct.TYPE_4__* %77)
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @free_pool, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %85 = call i64 (i32, %struct.TYPE_4__*, ...) @efi_call_early(i32 %83, %struct.TYPE_4__* %84)
  br label %57

86:                                               ; preds = %72
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @free_pool, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %93 = call i64 (i32, %struct.TYPE_4__*, ...) @efi_call_early(i32 %91, %struct.TYPE_4__* %92)
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* @EFI_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @efi_printk(i32* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %86
  %101 = load i64, i64* %15, align 8
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %100, %68, %52, %32
  %103 = load i64, i64* %6, align 8
  ret i64 %103
}

declare dso_local i64 @efi_call_proto(i32, i32, i8*, i8**, i64*, %struct.TYPE_4__*, ...) #1

declare dso_local i32 @efi_printk(i32*, i8*) #1

declare dso_local i32 @efi_char16_printk(i32*, i32*) #1

declare dso_local i64 @efi_call_early(i32, %struct.TYPE_4__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
