; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_fw_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_fw_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@__const.elants_i2c_fw_write_page.ack_ok = private unnamed_addr constant [2 x i32] [i32 170, i32 170], align 4
@MAX_FW_UPDATE_RETRIES = common dso_local global i32 0, align 4
@ELAN_FW_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IAP Write Page failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"IAP Ack read failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"IAP Get Ack Error [%02x:%02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*)* @elants_i2c_fw_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_fw_write_page(%struct.i2c_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.elants_i2c_fw_write_page.ack_ok to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %55, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MAX_FW_UPDATE_RETRIES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @ELAN_FW_PAGESIZE, align 4
  %19 = call i32 @elants_i2c_send(%struct.i2c_client* %16, i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %55

27:                                               ; preds = %15
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = call i32 @elants_i2c_read(%struct.i2c_client* %28, i32* %29, i32 2)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %27
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %42 = call i32 @memcmp(i32* %40, i32* %41, i32 8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %60

45:                                               ; preds = %39
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %45, %22
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %44, %33
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @elants_i2c_send(%struct.i2c_client*, i8*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #2

declare dso_local i32 @elants_i2c_read(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
