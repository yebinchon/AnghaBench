; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.edt_ft5x06_ts_data = type { i8*, i8* }

@EDT_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\BB\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"EP0\00", align 1
@EDT_M06 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EDT_M12 = common dso_local global i8* null, align 8
@GENERIC_FT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\A6\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\A8\00", align 1
@EDT_M09 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"EP0%i%i0M09\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"EP%i%i0ML00\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"GKTW50SCED1R0\00", align 1
@EV_FT = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"EVERVISION-FT5726NEi\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"generic ft5x06 (%02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.edt_ft5x06_ts_data*, i8*)* @edt_ft5x06_ts_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edt_ft5x06_ts_identify(%struct.i2c_client* %0, %struct.edt_ft5x06_ts_data* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.edt_ft5x06_ts_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.edt_ft5x06_ts_data* %1, %struct.edt_ft5x06_ts_data** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @EDT_NAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %6, align 8
  %19 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %12, align 8
  %21 = trunc i64 %15 to i32
  %22 = call i32 @memset(i8* %17, i32 0, i32 %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = load i32, i32* @EDT_NAME_LEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @edt_ft5x06_ts_readwrite(%struct.i2c_client* %23, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %17)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %204

31:                                               ; preds = %3
  %32 = getelementptr inbounds i8, i8* %17, i64 1
  %33 = call i32 @strncasecmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** @EDT_M06, align 8
  %37 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %6, align 8
  %38 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @EDT_NAME_LEN, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %17, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* @EDT_NAME_LEN, align 4
  %44 = sub nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %17, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 36
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load i32, i32* @EDT_NAME_LEN, align 4
  %52 = sub nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %17, i64 %53
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %50, %35
  %56 = call i8* @strchr(i8* %17, i8 signext 42)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  store i8 0, i8* %60, align 1
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %17, i64 1
  %65 = load i32, i32* @EDT_NAME_LEN, align 4
  %66 = call i32 @strlcpy(i8* %63, i8* %64, i32 %65)
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i8*, i8** %10, align 8
  br label %73

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i8* [ %71, %70 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %72 ]
  %75 = load i32, i32* @EDT_NAME_LEN, align 4
  %76 = call i32 @strlcpy(i8* %67, i8* %74, i32 %75)
  br label %203

77:                                               ; preds = %31
  %78 = call i32 @strncasecmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %121, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** @EDT_M12, align 8
  %82 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %6, align 8
  %83 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @EDT_NAME_LEN, align 4
  %85 = sub nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %17, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i32, i32* @EDT_NAME_LEN, align 4
  %89 = sub nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %17, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 36
  br i1 %94, label %95, label %100

95:                                               ; preds = %80
  %96 = load i32, i32* @EDT_NAME_LEN, align 4
  %97 = sub nsw i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %17, i64 %98
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %95, %80
  %101 = call i8* @strchr(i8* %17, i8 signext 42)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  store i8 0, i8* %105, align 1
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* @EDT_NAME_LEN, align 4
  %110 = call i32 @strlcpy(i8* %108, i8* %17, i32 %109)
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i8*, i8** %10, align 8
  br label %117

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i8* [ %115, %114 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %116 ]
  %119 = load i32, i32* @EDT_NAME_LEN, align 4
  %120 = call i32 @strlcpy(i8* %111, i8* %118, i32 %119)
  br label %202

121:                                              ; preds = %77
  %122 = load i8*, i8** @GENERIC_FT, align 8
  %123 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %6, align 8
  %124 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %126 = call i32 @edt_ft5x06_ts_readwrite(%struct.i2c_client* %125, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 2, i8* %17)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %204

131:                                              ; preds = %121
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @strlcpy(i8* %132, i8* %17, i32 2)
  %134 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %135 = call i32 @edt_ft5x06_ts_readwrite(%struct.i2c_client* %134, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1, i8* %17)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %204

140:                                              ; preds = %131
  %141 = getelementptr inbounds i8, i8* %17, i64 0
  %142 = load i8, i8* %141, align 16
  %143 = sext i8 %142 to i32
  switch i32 %143, label %194 [
    i32 53, label %144
    i32 67, label %144
    i32 80, label %144
    i32 87, label %144
    i32 112, label %144
    i32 161, label %159
    i32 90, label %174
    i32 89, label %178
  ]

144:                                              ; preds = %140, %140, %140, %140, %140
  %145 = load i8*, i8** @EDT_M09, align 8
  %146 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %6, align 8
  %147 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load i32, i32* @EDT_NAME_LEN, align 4
  %150 = getelementptr inbounds i8, i8* %17, i64 0
  %151 = load i8, i8* %150, align 16
  %152 = sext i8 %151 to i32
  %153 = ashr i32 %152, 4
  %154 = getelementptr inbounds i8, i8* %17, i64 0
  %155 = load i8, i8* %154, align 16
  %156 = sext i8 %155 to i32
  %157 = and i32 %156, 15
  %158 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %148, i32 %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 %157)
  br label %201

159:                                              ; preds = %140
  %160 = load i8*, i8** @EDT_M09, align 8
  %161 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %6, align 8
  %162 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* @EDT_NAME_LEN, align 4
  %165 = getelementptr inbounds i8, i8* %17, i64 0
  %166 = load i8, i8* %165, align 16
  %167 = sext i8 %166 to i32
  %168 = ashr i32 %167, 4
  %169 = getelementptr inbounds i8, i8* %17, i64 0
  %170 = load i8, i8* %169, align 16
  %171 = sext i8 %170 to i32
  %172 = and i32 %171, 15
  %173 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %163, i32 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %168, i32 %172)
  br label %201

174:                                              ; preds = %140
  %175 = load i8*, i8** %12, align 8
  %176 = load i32, i32* @EDT_NAME_LEN, align 4
  %177 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %175, i32 %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %201

178:                                              ; preds = %140
  %179 = load i8*, i8** @EV_FT, align 8
  %180 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %6, align 8
  %181 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %183 = call i32 @edt_ft5x06_ts_readwrite(%struct.i2c_client* %182, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1, i8* %17)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %204

188:                                              ; preds = %178
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @strlcpy(i8* %189, i8* %17, i32 1)
  %191 = load i8*, i8** %12, align 8
  %192 = load i32, i32* @EDT_NAME_LEN, align 4
  %193 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %191, i32 %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %201

194:                                              ; preds = %140
  %195 = load i8*, i8** %12, align 8
  %196 = load i32, i32* @EDT_NAME_LEN, align 4
  %197 = getelementptr inbounds i8, i8* %17, i64 0
  %198 = load i8, i8* %197, align 16
  %199 = sext i8 %198 to i32
  %200 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %195, i32 %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %194, %188, %174, %159, %144
  br label %202

202:                                              ; preds = %201, %117
  br label %203

203:                                              ; preds = %202, %73
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %204

204:                                              ; preds = %203, %186, %138, %129, %29
  %205 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @edt_ft5x06_ts_readwrite(%struct.i2c_client*, i32, i8*, i32, i8*) #2

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
