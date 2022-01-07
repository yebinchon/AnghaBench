; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.adv7511_link_config = type { i32, i64, i64, i32, i32, i8*, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [16 x i8] c"adi,input-depth\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"adi,input-colorspace\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@HDMI_COLORSPACE_RGB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"yuv422\00", align 1
@HDMI_COLORSPACE_YUV422 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"yuv444\00", align 1
@HDMI_COLORSPACE_YUV444 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"adi,input-clock\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"1x\00", align 1
@ADV7511_INPUT_CLOCK_1X = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"2x\00", align 1
@ADV7511_INPUT_CLOCK_2X = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"ddr\00", align 1
@ADV7511_INPUT_CLOCK_DDR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"adi,input-style\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"adi,input-justification\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@ADV7511_INPUT_JUSTIFICATION_LEFT = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"evenly\00", align 1
@ADV7511_INPUT_JUSTIFICATION_EVENLY = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@ADV7511_INPUT_JUSTIFICATION_RIGHT = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"adi,clock-delay\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"adi,embedded-sync\00", align 1
@ADV7511_INPUT_SYNC_PULSE_NONE = common dso_local global i32 0, align 4
@ADV7511_SYNC_POLARITY_PASSTHROUGH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.adv7511_link_config*)* @adv7511_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_parse_dt(%struct.device_node* %0, %struct.adv7511_link_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.adv7511_link_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.adv7511_link_config* %1, %struct.adv7511_link_config** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %10 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %9, i32 0, i32 0
  %11 = call i32 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %13 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 8
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %18 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %23 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 12
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %209

29:                                               ; preds = %21, %16, %2
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i32 @of_property_read_string(%struct.device_node* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %209

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %42 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %43 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %65

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @HDMI_COLORSPACE_YUV422, align 8
  %50 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %51 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %64

52:                                               ; preds = %44
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %58 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %59 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %209

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.device_node*, %struct.device_node** %4, align 8
  %67 = call i32 @of_property_read_string(%struct.device_node* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %6)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %209

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* @ADV7511_INPUT_CLOCK_1X, align 8
  %78 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %79 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %101

80:                                               ; preds = %72
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* @ADV7511_INPUT_CLOCK_2X, align 8
  %86 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %87 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %100

88:                                               ; preds = %80
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* @ADV7511_INPUT_CLOCK_DDR, align 8
  %94 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %95 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %99

96:                                               ; preds = %88
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %209

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %84
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %103 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HDMI_COLORSPACE_YUV422, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %109 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ADV7511_INPUT_CLOCK_1X, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %172

113:                                              ; preds = %107, %101
  %114 = load %struct.device_node*, %struct.device_node** %4, align 8
  %115 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %116 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %115, i32 0, i32 3
  %117 = call i32 @of_property_read_u32(%struct.device_node* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %209

122:                                              ; preds = %113
  %123 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %124 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %129 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %130, 3
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %122
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %209

135:                                              ; preds = %127
  %136 = load %struct.device_node*, %struct.device_node** %4, align 8
  %137 = call i32 @of_property_read_string(%struct.device_node* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %6)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %209

142:                                              ; preds = %135
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** @ADV7511_INPUT_JUSTIFICATION_LEFT, align 8
  %148 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %149 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %148, i32 0, i32 9
  store i8* %147, i8** %149, align 8
  br label %171

150:                                              ; preds = %142
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** @ADV7511_INPUT_JUSTIFICATION_EVENLY, align 8
  %156 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %157 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %156, i32 0, i32 9
  store i8* %155, i8** %157, align 8
  br label %170

158:                                              ; preds = %150
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i8*, i8** @ADV7511_INPUT_JUSTIFICATION_RIGHT, align 8
  %164 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %165 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %164, i32 0, i32 9
  store i8* %163, i8** %165, align 8
  br label %169

166:                                              ; preds = %158
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %209

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %146
  br label %178

172:                                              ; preds = %107
  %173 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %174 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %173, i32 0, i32 3
  store i32 1, i32* %174, align 8
  %175 = load i8*, i8** @ADV7511_INPUT_JUSTIFICATION_LEFT, align 8
  %176 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %177 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %176, i32 0, i32 9
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %172, %171
  %179 = load %struct.device_node*, %struct.device_node** %4, align 8
  %180 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %181 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %180, i32 0, i32 4
  %182 = call i32 @of_property_read_u32(%struct.device_node* %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32* %181)
  %183 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %184 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, -1200
  br i1 %186, label %192, label %187

187:                                              ; preds = %178
  %188 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %189 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 1600
  br i1 %191, label %192, label %195

192:                                              ; preds = %187, %178
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %209

195:                                              ; preds = %187
  %196 = load %struct.device_node*, %struct.device_node** %4, align 8
  %197 = call i32 @of_property_read_bool(%struct.device_node* %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %198 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %199 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @ADV7511_INPUT_SYNC_PULSE_NONE, align 4
  %201 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %202 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 8
  %203 = load i8*, i8** @ADV7511_SYNC_POLARITY_PASSTHROUGH, align 8
  %204 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %205 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %204, i32 0, i32 6
  store i8* %203, i8** %205, align 8
  %206 = load i8*, i8** @ADV7511_SYNC_POLARITY_PASSTHROUGH, align 8
  %207 = load %struct.adv7511_link_config*, %struct.adv7511_link_config** %5, align 8
  %208 = getelementptr inbounds %struct.adv7511_link_config, %struct.adv7511_link_config* %207, i32 0, i32 5
  store i8* %206, i8** %208, align 8
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %195, %192, %166, %140, %132, %120, %96, %70, %60, %34, %26
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
