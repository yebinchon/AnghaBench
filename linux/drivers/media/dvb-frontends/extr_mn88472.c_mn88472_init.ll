; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88472.c_mn88472_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88472.c_mn88472_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.mn88472_dev = type { i32, i32, i32, i32, i32* }
%struct.firmware = type { i32, i32* }

@MN88472_FIRMWARE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mn88472_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88472_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.mn88472_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = call %struct.mn88472_dev* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.mn88472_dev* %16, %struct.mn88472_dev** %5, align 8
  %17 = load i8*, i8** @MN88472_FIRMWARE, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %22 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regmap_write(i32 %25, i32 5, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %216

30:                                               ; preds = %1
  %31 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_write(i32 %35, i32 11, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %216

40:                                               ; preds = %30
  %41 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %42 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regmap_write(i32 %45, i32 12, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %216

50:                                               ; preds = %40
  %51 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %52 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regmap_read(i32 %55, i32 245, i32* %9)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %216

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %170

65:                                               ; preds = %60
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 @request_firmware(%struct.firmware** %10, i8* %66, i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %216

77:                                               ; preds = %65
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %83 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regmap_write(i32 %86, i32 245, i32 3)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %213

91:                                               ; preds = %77
  %92 = load %struct.firmware*, %struct.firmware** %10, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %130, %91
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %95
  %99 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %100 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @min(i32 %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %106 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.firmware*, %struct.firmware** %10, align 8
  %111 = getelementptr inbounds %struct.firmware, %struct.firmware* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.firmware*, %struct.firmware** %10, align 8
  %114 = getelementptr inbounds %struct.firmware, %struct.firmware* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @regmap_bulk_write(i32 %109, i32 246, i32* %119, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %98
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %213

129:                                              ; preds = %98
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %132 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %95

137:                                              ; preds = %95
  %138 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %139 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @regmap_read(i32 %142, i32 248, i32* %9)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %213

147:                                              ; preds = %137
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %148, 16
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %6, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %213

157:                                              ; preds = %147
  %158 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %159 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @regmap_write(i32 %162, i32 245, i32 0)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %213

167:                                              ; preds = %157
  %168 = load %struct.firmware*, %struct.firmware** %10, align 8
  %169 = call i32 @release_firmware(%struct.firmware* %168)
  br label %170

170:                                              ; preds = %167, %64
  %171 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %172 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %176 [
    i32 129, label %174
    i32 130, label %175
  ]

174:                                              ; preds = %170
  store i32 29, i32* %9, align 4
  br label %179

175:                                              ; preds = %170
  store i32 0, i32* %9, align 4
  br label %179

176:                                              ; preds = %170
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %6, align 4
  br label %216

179:                                              ; preds = %175, %174
  %180 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %181 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @regmap_write(i32 %184, i32 8, i32 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %216

190:                                              ; preds = %179
  %191 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %192 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %196 [
    i32 128, label %194
    i32 131, label %195
  ]

194:                                              ; preds = %190
  store i32 227, i32* %9, align 4
  br label %199

195:                                              ; preds = %190
  store i32 225, i32* %9, align 4
  br label %199

196:                                              ; preds = %190
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %216

199:                                              ; preds = %195, %194
  %200 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %201 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @regmap_write(i32 %204, i32 217, i32 %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  br label %216

210:                                              ; preds = %199
  %211 = load %struct.mn88472_dev*, %struct.mn88472_dev** %5, align 8
  %212 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %211, i32 0, i32 3
  store i32 1, i32* %212, align 4
  store i32 0, i32* %2, align 4
  br label %222

213:                                              ; preds = %166, %151, %146, %124, %90
  %214 = load %struct.firmware*, %struct.firmware** %10, align 8
  %215 = call i32 @release_firmware(%struct.firmware* %214)
  br label %216

216:                                              ; preds = %213, %209, %196, %189, %176, %72, %59, %49, %39, %29
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 0
  %219 = load i32, i32* %6, align 4
  %220 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %218, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %216, %210
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local %struct.mn88472_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
