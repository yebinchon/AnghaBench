; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_query_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_query_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CMD_HEADER_READ = common dso_local global i32 0, align 4
@E_ELAN_INFO_FW_VER = common dso_local global i32 0, align 4
@HEADER_SIZE = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"read fw version error=%d, buf=%*phC\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to read fw version or fw version is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elants_data*)* @elants_i2c_query_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_query_fw_version(%struct.elants_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elants_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.elants_data* %0, %struct.elants_data** %3, align 8
  %11 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %12 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %11, i32 0, i32 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* @CMD_HEADER_READ, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @E_ELAN_INFO_FW_VER, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @HEADER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %58, %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MAX_RETRIES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %31 = mul nuw i64 4, %21
  %32 = trunc i64 %31 to i32
  %33 = call i32 @elants_i2c_execute_command(%struct.i2c_client* %29, i32* %30, i32 16, i32* %23, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %28
  %37 = call i32 @elants_i2c_parse_version(i32* %23)
  %38 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %39 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %41 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %46 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 65535
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %67

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = mul nuw i64 4, %21
  %56 = trunc i64 %55 to i32
  %57 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56, i32* %23)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %24

61:                                               ; preds = %24
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %61, %49
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @elants_i2c_execute_command(%struct.i2c_client*, i32*, i32, i32*, i32) #2

declare dso_local i32 @elants_i2c_parse_version(i32*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
