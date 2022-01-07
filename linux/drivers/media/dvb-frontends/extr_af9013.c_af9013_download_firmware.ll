; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.af9013_state = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.firmware = type { i32, i32* }

@AF9013_FIRMWARE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"firmware status %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"found a '%s' in cold state, will try to load a firmware\0A\00", align 1
@af9013_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"firmware file '%s' not found %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"firmware boot timeout\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"found a '%s' in warm state\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@LEN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.af9013_state*)* @af9013_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_download_firmware(%struct.af9013_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.af9013_state*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca i8*, align 8
  store %struct.af9013_state* %0, %struct.af9013_state** %3, align 8
  %14 = load %struct.af9013_state*, %struct.af9013_state** %3, align 8
  %15 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %14, i32 0, i32 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %4, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** @AF9013_FIRMWARE, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.af9013_state*, %struct.af9013_state** %3, align 8
  %22 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @regmap_read(i32 %23, i32 39102, i32* %9)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %206

28:                                               ; preds = %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 12
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %212

36:                                               ; preds = %28
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @af9013_ops, i32 0, i32 0, i32 0), align 8
  %40 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @request_firmware(%struct.firmware** %12, i8* %41, i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %51)
  br label %206

53:                                               ; preds = %36
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %74, %53
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.firmware*, %struct.firmware** %12, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.firmware*, %struct.firmware** %12, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %80, i32* %81, align 16
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 0
  %84 = and i32 %83, 255
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.firmware*, %struct.firmware** %12, align 8
  %87 = getelementptr inbounds %struct.firmware, %struct.firmware* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %90, i32* %91, align 8
  %92 = load %struct.firmware*, %struct.firmware** %12, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 0
  %96 = and i32 %95, 255
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %96, i32* %97, align 4
  %98 = load %struct.af9013_state*, %struct.af9013_state** %3, align 8
  %99 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %102 = call i32 @regmap_bulk_write(i32 %100, i32 20732, i32* %101, i32 4)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %77
  br label %203

106:                                              ; preds = %77
  %107 = load %struct.firmware*, %struct.firmware** %12, align 8
  %108 = getelementptr inbounds %struct.firmware, %struct.firmware* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %145, %106
  %111 = load i32, i32* %8, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @min(i64 16, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.af9013_state*, %struct.af9013_state** %3, align 8
  %117 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.firmware*, %struct.firmware** %12, align 8
  %120 = getelementptr inbounds %struct.firmware, %struct.firmware* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 20736, %121
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load %struct.firmware*, %struct.firmware** %12, align 8
  %126 = getelementptr inbounds %struct.firmware, %struct.firmware* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.firmware*, %struct.firmware** %12, align 8
  %129 = getelementptr inbounds %struct.firmware, %struct.firmware* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %127, i64 %133
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @regmap_bulk_write(i32 %118, i32 %124, i32* %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %113
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  br label %203

144:                                              ; preds = %113
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = sub nsw i32 %146, 16
  store i32 %147, i32* %8, align 4
  br label %110

148:                                              ; preds = %110
  %149 = load %struct.firmware*, %struct.firmware** %12, align 8
  %150 = call i32 @release_firmware(%struct.firmware* %149)
  %151 = load %struct.af9013_state*, %struct.af9013_state** %3, align 8
  %152 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @regmap_write(i32 %153, i32 57861, i32 1)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %206

158:                                              ; preds = %148
  %159 = load %struct.af9013_state*, %struct.af9013_state** %3, align 8
  %160 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 12
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %166, 4
  br label %168

168:                                              ; preds = %165, %158
  %169 = phi i1 [ true, %158 ], [ %167, %165 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @regmap_read_poll_timeout(i32 %161, i32 39102, i32 %162, i32 %170, i32 5000, i32 1000000)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %206

175:                                              ; preds = %168
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = load i32, i32* %9, align 4
  %179 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %180, 4
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* @ENODEV, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %5, align 4
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = call i32 (i32*, i8*, ...) @dev_err(i32* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %206

188:                                              ; preds = %175
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 12
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load i32, i32* @ENODEV, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %5, align 4
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = call i32 (i32*, i8*, ...) @dev_err(i32* %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %206

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197
  %199 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %200 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %199, i32 0, i32 0
  %201 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @af9013_ops, i32 0, i32 0, i32 0), align 8
  %202 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %201)
  store i32 0, i32* %2, align 4
  br label %212

203:                                              ; preds = %139, %105
  %204 = load %struct.firmware*, %struct.firmware** %12, align 8
  %205 = call i32 @release_firmware(%struct.firmware* %204)
  br label %206

206:                                              ; preds = %203, %191, %182, %174, %157, %47, %27
  %207 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 0
  %209 = load i32, i32* %5, align 4
  %210 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %5, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %206, %198, %35
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
