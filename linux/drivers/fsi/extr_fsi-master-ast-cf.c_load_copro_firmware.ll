; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_load_copro_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_load_copro_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i64, i64, i64, i32, i32 }
%struct.firmware = type { i32, i32* }

@FW_FILE_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Error %d to load firwmare '%s' !\0A\00", align 1
@SYS_SIG_SHARED = common dso_local global i64 0, align 8
@SYS_SIG_SPLIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Looking for image sig %04x\0A\00", align 1
@HDR_OFFSET = common dso_local global i32 0, align 4
@HDR_SYS_SIG = common dso_local global i32 0, align 4
@HDR_FW_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to locate image sig %04x in FW blob\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"FW size (%zd) bigger than memory reserve (%zd)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*)* @load_copro_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_copro_firmware(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_master_acf*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* @FW_FILE_NAME, align 8
  %11 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %12 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @request_firmware(%struct.firmware** %4, i64 %10, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %19 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* @FW_FILE_NAME, align 8
  %23 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  br label %126

25:                                               ; preds = %1
  %26 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %27 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %30 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @SYS_SIG_SHARED, align 8
  store i64 %34, i64* %6, align 8
  br label %37

35:                                               ; preds = %25
  %36 = load i64, i64* @SYS_SIG_SPLIT, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %39 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.firmware*, %struct.firmware** %4, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %7, align 8
  br label %46

46:                                               ; preds = %78, %37
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.firmware*, %struct.firmware** %4, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.firmware*, %struct.firmware** %4, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = icmp ult i32* %47, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %46
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @HDR_OFFSET, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* @HDR_SYS_SIG, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i64 @be16_to_cpup(i32* %64)
  store i64 %65, i64* %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @HDR_OFFSET, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* @HDR_FW_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i64 @be32_to_cpup(i32* %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %82

78:                                               ; preds = %57
  %79 = load i64, i64* %8, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %7, align 8
  br label %46

82:                                               ; preds = %77, %46
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %88 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %6, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %122

95:                                               ; preds = %82
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %98 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %103 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.firmware*, %struct.firmware** %4, align 8
  %106 = getelementptr inbounds %struct.firmware, %struct.firmware* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %109 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %107, i64 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %121

114:                                              ; preds = %95
  %115 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %116 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @memcpy_toio(i32 %117, i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %114, %101
  br label %122

122:                                              ; preds = %121, %86
  %123 = load %struct.firmware*, %struct.firmware** %4, align 8
  %124 = call i32 @release_firmware(%struct.firmware* %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %17
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @request_firmware(%struct.firmware**, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i64 @be16_to_cpup(i32*) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32 @memcpy_toio(i32, i32*, i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
