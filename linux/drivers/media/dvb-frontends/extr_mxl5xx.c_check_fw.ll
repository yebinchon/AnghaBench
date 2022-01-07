; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_check_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_check_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { i32 }
%struct.MBIN_FILE_HEADER_T = type { i32*, i8, i8, i64 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid FW Header\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid FW Checksum\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i64*, i32)* @check_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fw(%struct.mxl* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxl*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.MBIN_FILE_HEADER_T*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = bitcast i64* %13 to %struct.MBIN_FILE_HEADER_T*
  store %struct.MBIN_FILE_HEADER_T* %14, %struct.MBIN_FILE_HEADER_T** %8, align 8
  %15 = load %struct.MBIN_FILE_HEADER_T*, %struct.MBIN_FILE_HEADER_T** %8, align 8
  %16 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, %struct.MBIN_FILE_HEADER_T* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = load %struct.MBIN_FILE_HEADER_T*, %struct.MBIN_FILE_HEADER_T** %8, align 8
  %22 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, %struct.MBIN_FILE_HEADER_T* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %20, %26
  %28 = load %struct.MBIN_FILE_HEADER_T*, %struct.MBIN_FILE_HEADER_T** %8, align 8
  %29 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, %struct.MBIN_FILE_HEADER_T* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %27, %32
  store i32 %33, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %34 = load %struct.MBIN_FILE_HEADER_T*, %struct.MBIN_FILE_HEADER_T** %8, align 8
  %35 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, %struct.MBIN_FILE_HEADER_T* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 77
  br i1 %38, label %48, label %39

39:                                               ; preds = %3
  %40 = load %struct.MBIN_FILE_HEADER_T*, %struct.MBIN_FILE_HEADER_T** %8, align 8
  %41 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, %struct.MBIN_FILE_HEADER_T* %40, i32 0, i32 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 49
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 262128
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %39, %3
  %49 = load %struct.mxl*, %struct.mxl** %5, align 8
  %50 = getelementptr inbounds %struct.mxl, %struct.mxl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_info(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

53:                                               ; preds = %45
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 24
  store i64* %55, i64** %10, align 8
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %68, %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i64*, i64** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.MBIN_FILE_HEADER_T*, %struct.MBIN_FILE_HEADER_T** %8, align 8
  %74 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, %struct.MBIN_FILE_HEADER_T* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.mxl*, %struct.mxl** %5, align 8
  %79 = getelementptr inbounds %struct.mxl, %struct.mxl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_info(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

82:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %77, %48
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
