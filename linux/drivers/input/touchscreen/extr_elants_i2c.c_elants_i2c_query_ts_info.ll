; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_query_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_query_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { i8*, i8*, i8*, i8*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CMD_HEADER_6B_READ = common dso_local global i32 0, align 4
@CMD_HEADER_READ = common dso_local global i32 0, align 4
@E_INFO_OSR = common dso_local global i32 0, align 4
@E_INFO_PHY_SCAN = common dso_local global i32 0, align 4
@E_INFO_PHY_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"get resolution command failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"get osr command failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"get physical scan command failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"get physical drive command failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"phy_x=%d, phy_y=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"invalid trace number data: %d, %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elants_data*)* @elants_i2c_query_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_query_ts_info(%struct.elants_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elants_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [17 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  store %struct.elants_data* %0, %struct.elants_data** %3, align 8
  %16 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %17 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %16, i32 0, i32 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %4, align 8
  %19 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 24, i1 false)
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %21 = load i32, i32* @CMD_HEADER_6B_READ, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %28 = load i32, i32* @CMD_HEADER_READ, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @E_INFO_OSR, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %34 = load i32, i32* @CMD_HEADER_READ, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @E_INFO_PHY_SCAN, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %40 = load i32, i32* @CMD_HEADER_READ, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @E_INFO_PHY_DRIVER, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %47 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %48 = call i32 @elants_i2c_execute_command(%struct.i2c_client* %45, i32* %46, i32 24, i32* %47, i32 68)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %1
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %168

57:                                               ; preds = %1
  %58 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 6
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %59, %61
  %63 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 10
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %9, align 8
  %67 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %68, %70
  %72 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 11
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %10, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %78 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %79 = call i32 @elants_i2c_execute_command(%struct.i2c_client* %76, i32* %77, i32 16, i32* %78, i32 68)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %57
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %168

88:                                               ; preds = %57
  %89 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %11, align 8
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %94 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %95 = call i32 @elants_i2c_execute_command(%struct.i2c_client* %92, i32* %93, i32 16, i32* %94, i32 68)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %168

104:                                              ; preds = %88
  %105 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 2
  %106 = call i64 @get_unaligned_be16(i32* %105)
  store i64 %106, i64* %7, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %109 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %110 = call i32 @elants_i2c_execute_command(%struct.i2c_client* %107, i32* %108, i32 16, i32* %109, i32 68)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 0
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %168

119:                                              ; preds = %104
  %120 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 2
  %121 = call i64 @get_unaligned_be16(i32* %120)
  store i64 %121, i64* %8, align 8
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @dev_dbg(i32* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %124, i64 %125)
  %127 = load i64, i64* %9, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %119
  %130 = load i64, i64* %10, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %11, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132, %129, %119
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i32 @dev_warn(i32* %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %138, i64 %139, i64 %140)
  br label %167

142:                                              ; preds = %132
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i8* @ELAN_TS_RESOLUTION(i64 %143, i64 %144)
  %146 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %147 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %149 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call i8* @DIV_ROUND_CLOSEST(i8* %150, i64 %151)
  %153 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %154 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %11, align 8
  %157 = call i8* @ELAN_TS_RESOLUTION(i64 %155, i64 %156)
  %158 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %159 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %161 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i8* @DIV_ROUND_CLOSEST(i8* %162, i64 %163)
  %165 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %166 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %142, %135
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %113, %98, %82, %51
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @elants_i2c_execute_command(%struct.i2c_client*, i32*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i64 @get_unaligned_be16(i32*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #2

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, i64) #2

declare dso_local i8* @ELAN_TS_RESOLUTION(i64, i64) #2

declare dso_local i8* @DIV_ROUND_CLOSEST(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
