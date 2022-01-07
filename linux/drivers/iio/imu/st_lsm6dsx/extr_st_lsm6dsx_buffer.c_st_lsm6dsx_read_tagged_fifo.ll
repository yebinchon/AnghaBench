; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_read_tagged_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_read_tagged_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ST_LSM6DSX_TAGGED_SAMPLE_SIZE = common dso_local global i32 0, align 4
@ST_LSM6DSX_IIO_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to read fifo status (err=%d)\0A\00", align 1
@ST_LSM6DSX_REG_FIFO_OUT_TAG_ADDR = common dso_local global i32 0, align 4
@ST_LSM6DSX_MAX_TAGGED_WORD_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to read pattern from fifo (err=%d)\0A\00", align 1
@ST_LSM6DSX_TAG_SIZE = common dso_local global i32 0, align 4
@ST_LSM6DSX_SAMPLE_SIZE = common dso_local global i32 0, align 4
@ST_LSM6DSX_TS_TAG = common dso_local global i32 0, align 4
@ST_LSM6DSX_TS_SENSITIVITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_read_tagged_fifo(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_lsm6dsx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %3, align 8
  %17 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %18 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ST_LSM6DSX_TAGGED_SAMPLE_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @ST_LSM6DSX_IIO_BUFF_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %27 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %28 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @st_lsm6dsx_read_locked(%struct.st_lsm6dsx_hw* %26, i32 %33, i32* %14, i32 4)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %39 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %153

44:                                               ; preds = %1
  %45 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %46 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @ST_LSM6DSX_TAGGED_SAMPLE_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %153

61:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %135, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %139

66:                                               ; preds = %62
  %67 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %68 = load i32, i32* @ST_LSM6DSX_REG_FIFO_OUT_TAG_ADDR, align 4
  %69 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %70 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @ST_LSM6DSX_MAX_TAGGED_WORD_LEN, align 4
  %74 = call i32 @st_lsm6dsx_read_block(%struct.st_lsm6dsx_hw* %67, i32 %68, i32* %71, i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %79 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %153

84:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %130, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %134

89:                                               ; preds = %85
  %90 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %91 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @ST_LSM6DSX_TAG_SIZE, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %99 = call i32 @memcpy(i32* %25, i32* %97, i32 %98)
  %100 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %101 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 3
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ST_LSM6DSX_TS_TAG, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %89
  %112 = load i32, i32* %25, align 16
  %113 = call i32 @le32_to_cpu(i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = icmp uge i32 %117, -65536
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %116, %111
  %121 = load i32, i32* @ST_LSM6DSX_TS_SENSITIVITY, align 4
  %122 = load i32, i32* %15, align 4
  %123 = mul nsw i32 %122, %121
  store i32 %123, i32* %15, align 4
  br label %129

124:                                              ; preds = %89
  %125 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @st_lsm6dsx_push_tagged_data(%struct.st_lsm6dsx_hw* %125, i32 %126, i32* %25, i32 %127)
  br label %129

129:                                              ; preds = %124, %120
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* @ST_LSM6DSX_TAGGED_SAMPLE_SIZE, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %85

134:                                              ; preds = %85
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %62

139:                                              ; preds = %62
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %145 = call i32 @st_lsm6dsx_reset_hw_ts(%struct.st_lsm6dsx_hw* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %153

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %139
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %153

153:                                              ; preds = %151, %148, %77, %60, %37
  %154 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @st_lsm6dsx_read_locked(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @st_lsm6dsx_read_block(%struct.st_lsm6dsx_hw*, i32, i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @st_lsm6dsx_push_tagged_data(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @st_lsm6dsx_reset_hw_ts(%struct.st_lsm6dsx_hw*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
