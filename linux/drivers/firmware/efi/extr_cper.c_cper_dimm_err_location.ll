; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_dimm_err_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_dimm_err_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_mem_err_compact = type { i32, i32 }

@CPER_MEM_VALID_MODULE_HANDLE = common dso_local global i32 0, align 4
@CPER_REC_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"DIMM location: %s %s \00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"DIMM location: not present. DMI handle: 0x%.4x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cper_mem_err_compact*, i8*)* @cper_dimm_err_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cper_dimm_err_location(%struct.cper_mem_err_compact* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cper_mem_err_compact*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.cper_mem_err_compact* %0, %struct.cper_mem_err_compact** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %14 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CPER_MEM_VALID_MODULE_HANDLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %51

20:                                               ; preds = %12
  store i64 0, i64* %7, align 8
  %21 = load i64, i64* @CPER_REC_LEN, align 8
  %22 = sub i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %24 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dmi_memdev_name(i32 %25, i8** %8, i8** %9)
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  store i64 %37, i64* %7, align 8
  br label %45

38:                                               ; preds = %29, %20
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %42 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %39, i64 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @dmi_memdev_name(i32, i8**, i8**) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
