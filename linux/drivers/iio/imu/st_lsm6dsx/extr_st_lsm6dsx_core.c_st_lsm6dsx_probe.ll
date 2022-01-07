; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.st_lsm6dsx_shub_settings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.st_lsm6dsx_hw = type { i32, i32*, %struct.device*, %struct.TYPE_3__*, %struct.regmap*, i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.st_lsm6dsx_shub_settings }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ST_LSM6DSX_BUFF_SIZE = common dso_local global i32 0, align 4
@ST_LSM6DSX_ID_EXT0 = common dso_local global i32 0, align 4
@ST_LSM6DSX_ID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_probe(%struct.device* %0, i32 %1, i32 %2, %struct.regmap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.st_lsm6dsx_shub_settings*, align 8
  %11 = alloca %struct.st_lsm6dsx_hw*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.regmap* %3, %struct.regmap** %9, align 8
  store i8* null, i8** %12, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.device* %15, i32 64, i32 %16)
  %18 = bitcast i8* %17 to %struct.st_lsm6dsx_hw*
  store %struct.st_lsm6dsx_hw* %18, %struct.st_lsm6dsx_hw** %11, align 8
  %19 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %20 = icmp ne %struct.st_lsm6dsx_hw* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %174

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %27 = bitcast %struct.st_lsm6dsx_hw* %26 to i8*
  %28 = call i32 @dev_set_drvdata(%struct.device* %25, i8* %27)
  %29 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %30 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %29, i32 0, i32 8
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %33 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %32, i32 0, i32 7
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %36 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %35, i32 0, i32 6
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* @ST_LSM6DSX_BUFF_SIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kzalloc(%struct.device* %38, i32 %39, i32 %40)
  %42 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %43 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %45 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %44, i32 0, i32 5
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %24
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %174

51:                                               ; preds = %24
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %54 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %53, i32 0, i32 2
  store %struct.device* %52, %struct.device** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %57 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.regmap*, %struct.regmap** %9, align 8
  %59 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %60 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %59, i32 0, i32 4
  store %struct.regmap* %58, %struct.regmap** %60, align 8
  %61 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @st_lsm6dsx_check_whoami(%struct.st_lsm6dsx_hw* %61, i32 %62, i8** %12)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %174

68:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %96, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @ST_LSM6DSX_ID_EXT0, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @st_lsm6dsx_alloc_iiodev(%struct.st_lsm6dsx_hw* %74, i32 %75, i8* %76)
  %78 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %79 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %85 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %73
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %174

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %69

99:                                               ; preds = %69
  %100 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %101 = call i32 @st_lsm6dsx_init_device(%struct.st_lsm6dsx_hw* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %5, align 4
  br label %174

106:                                              ; preds = %99
  %107 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %108 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store %struct.st_lsm6dsx_shub_settings* %110, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %111 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %112 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %106
  %117 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @st_lsm6dsx_shub_probe(%struct.st_lsm6dsx_hw* %117, i8* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %5, align 4
  br label %174

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %106
  %126 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %127 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %132 = call i32 @st_lsm6dsx_fifo_setup(%struct.st_lsm6dsx_hw* %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %5, align 4
  br label %174

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %125
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %170, %138
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @ST_LSM6DSX_ID_MAX, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %173

143:                                              ; preds = %139
  %144 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %145 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %143
  br label %170

153:                                              ; preds = %143
  %154 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %155 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %154, i32 0, i32 2
  %156 = load %struct.device*, %struct.device** %155, align 8
  %157 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %158 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @devm_iio_device_register(%struct.device* %156, i32 %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %5, align 4
  br label %174

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169, %152
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %139

173:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %167, %135, %122, %104, %92, %66, %48, %21
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @st_lsm6dsx_check_whoami(%struct.st_lsm6dsx_hw*, i32, i8**) #1

declare dso_local i32 @st_lsm6dsx_alloc_iiodev(%struct.st_lsm6dsx_hw*, i32, i8*) #1

declare dso_local i32 @st_lsm6dsx_init_device(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @st_lsm6dsx_shub_probe(%struct.st_lsm6dsx_hw*, i8*) #1

declare dso_local i32 @st_lsm6dsx_fifo_setup(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
