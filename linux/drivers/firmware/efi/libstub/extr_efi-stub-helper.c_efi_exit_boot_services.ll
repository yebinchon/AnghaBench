; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_exit_boot_services.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_exit_boot_services.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_boot_memmap = type { i32*, i32*, i32, i32, i32*, i32* }

@EFI_SUCCESS = common dso_local global i64 0, align 8
@exit_boot_services = common dso_local global i32 0, align 4
@EFI_INVALID_PARAMETER = common dso_local global i64 0, align 8
@get_memory_map = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_exit_boot_services(i32* %0, i8* %1, %struct.efi_boot_memmap* %2, i8* %3, i64 (i32*, %struct.efi_boot_memmap*, i8*)* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.efi_boot_memmap*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64 (i32*, %struct.efi_boot_memmap*, i8*)*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.efi_boot_memmap* %2, %struct.efi_boot_memmap** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 (i32*, %struct.efi_boot_memmap*, i8*)* %4, i64 (i32*, %struct.efi_boot_memmap*, i8*)** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %15 = call i64 @efi_get_memory_map(i32* %13, %struct.efi_boot_memmap* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @EFI_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %106

20:                                               ; preds = %5
  %21 = load i64 (i32*, %struct.efi_boot_memmap*, i8*)*, i64 (i32*, %struct.efi_boot_memmap*, i8*)** %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 %21(i32* %22, %struct.efi_boot_memmap* %23, i8* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @EFI_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %97

30:                                               ; preds = %20
  %31 = load i32, i32* @exit_boot_services, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %34 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 (i32, i8*, ...) @efi_call_early(i32 %31, i8* %32, i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @EFI_INVALID_PARAMETER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %30
  %42 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %43 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %47 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @get_memory_map, align 4
  %50 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %51 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %55 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %59 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %62 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %65 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 (i32, i8*, ...) @efi_call_early(i32 %49, i8* %53, i32 %57, i32* %60, i32 %63, i32 %66)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @EFI_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %41
  br label %106

72:                                               ; preds = %41
  %73 = load i64 (i32*, %struct.efi_boot_memmap*, i8*)*, i64 (i32*, %struct.efi_boot_memmap*, i8*)** %11, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 %73(i32* %74, %struct.efi_boot_memmap* %75, i8* %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @EFI_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %106

82:                                               ; preds = %72
  %83 = load i32, i32* @exit_boot_services, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %86 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i64 (i32, i8*, ...) @efi_call_early(i32 %83, i8* %84, i32 %88)
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %82, %30
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @EFI_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %106

95:                                               ; preds = %90
  %96 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %96, i64* %6, align 8
  br label %108

97:                                               ; preds = %29
  %98 = load i32, i32* @free_pool, align 4
  %99 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %9, align 8
  %100 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i64 (i32, i8*, ...) @efi_call_early(i32 %98, i8* %104)
  br label %106

106:                                              ; preds = %97, %94, %81, %71, %19
  %107 = load i64, i64* %12, align 8
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %106, %95
  %109 = load i64, i64* %6, align 8
  ret i64 %109
}

declare dso_local i64 @efi_get_memory_map(i32*, %struct.efi_boot_memmap*) #1

declare dso_local i64 @efi_call_early(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
