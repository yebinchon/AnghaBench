; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@__const.elants_i2c_initialize.hello_packet = private unnamed_addr constant [4 x i32] [i32 85, i32 85, i32 85, i32 85], align 16
@__const.elants_i2c_initialize.recov_packet = private unnamed_addr constant [4 x i32] [i32 85, i32 85, i32 128, i32 128], align 16
@HEADER_SIZE = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@BOOT_TIME_DELAY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to read 'hello' packet: %d\0A\00", align 1
@ELAN_IAP_OPERATIONAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid 'hello' packet: %*ph\0A\00", align 1
@ELAN_IAP_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elants_data*)* @elants_i2c_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_initialize(%struct.elants_data* %0) #0 {
  %2 = alloca %struct.elants_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.elants_data* %0, %struct.elants_data** %2, align 8
  %11 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %12 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %11, i32 0, i32 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %3, align 8
  %14 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.elants_i2c_initialize.hello_packet to i8*), i64 16, i1 false)
  %15 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i32]* @__const.elants_i2c_initialize.recov_packet to i8*), i64 16, i1 false)
  %16 = load i32, i32* @HEADER_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %88, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MAX_RETRIES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = call i32 @elants_i2c_sw_reset(%struct.i2c_client* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_RETRIES, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %88

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = call i32 @elants_i2c_fastboot(%struct.i2c_client* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAX_RETRIES, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %88

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* @BOOT_TIME_DELAY_MS, align 4
  %50 = call i32 @msleep(i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = mul nuw i64 4, %17
  %53 = trunc i64 %52 to i32
  %54 = call i32 @elants_i2c_read(%struct.i2c_client* %51, i32* %19, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %87

62:                                               ; preds = %48
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %64 = call i32 @memcmp(i32* %19, i32* %63, i32 16)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @ELAN_IAP_OPERATIONAL, align 4
  %68 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %69 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %91

70:                                               ; preds = %62
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %72 = call i32 @memcmp(i32* %19, i32* %71, i32 16)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %91

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  %80 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = mul nuw i64 4, %17
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32* %19)
  br label %85

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %46, %34
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %20

91:                                               ; preds = %74, %66, %20
  %92 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %93 = call i32 @elants_i2c_query_hw_version(%struct.elants_data* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %103 = call i32 @elants_i2c_query_fw_version(%struct.elants_data* %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %109 = call i32 @elants_i2c_query_test_version(%struct.elants_data* %108)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %115 = call i32 @elants_i2c_query_bc_version(%struct.elants_data* %114)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %121 = call i32 @elants_i2c_query_ts_info(%struct.elants_data* %120)
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* @ELAN_IAP_RECOVERY, align 4
  %127 = load %struct.elants_data*, %struct.elants_data** %2, align 8
  %128 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @elants_i2c_sw_reset(%struct.i2c_client*) #3

declare dso_local i32 @elants_i2c_fastboot(%struct.i2c_client*) #3

declare dso_local i32 @msleep(i32) #3

declare dso_local i32 @elants_i2c_read(%struct.i2c_client*, i32*, i32) #3

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #3

declare dso_local i32 @memcmp(i32*, i32*, i32) #3

declare dso_local i32 @elants_i2c_query_hw_version(%struct.elants_data*) #3

declare dso_local i32 @elants_i2c_query_fw_version(%struct.elants_data*) #3

declare dso_local i32 @elants_i2c_query_test_version(%struct.elants_data*) #3

declare dso_local i32 @elants_i2c_query_bc_version(%struct.elants_data*) #3

declare dso_local i32 @elants_i2c_query_ts_info(%struct.elants_data*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
