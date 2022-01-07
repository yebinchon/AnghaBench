; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_get_sysparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_get_sysparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wdt87xx_sys_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PKT_READ_SIZE = common dso_local global i32 0, align 4
@WDT_GD_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to get device desc\0A\00", align 1
@DEV_DESC_OFFSET_VID = common dso_local global i32 0, align 4
@DEV_DESC_OFFSET_PID = common dso_local global i32 0, align 4
@STRIDX_PARAMETERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get parameters\0A\00", align 1
@CTL_PARAM_OFFSET_XMLS_ID1 = common dso_local global i32 0, align 4
@CTL_PARAM_OFFSET_XMLS_ID2 = common dso_local global i32 0, align 4
@CTL_PARAM_OFFSET_PHY_CH_X = common dso_local global i32 0, align 4
@CTL_PARAM_OFFSET_PHY_CH_Y = common dso_local global i32 0, align 4
@CTL_PARAM_OFFSET_PHY_W = common dso_local global i32 0, align 4
@CTL_PARAM_OFFSET_PHY_H = common dso_local global i32 0, align 4
@CTL_PARAM_OFFSET_FACTOR = common dso_local global i32 0, align 4
@MAX_UNIT_AXIS = common dso_local global i32 0, align 4
@STRIDX_PLATFORM_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get platform id\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get firmware id\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"wrong id of fw response: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"fw_id: 0x%x, plat_id: 0x%x, xml_id1: %04x, xml_id2: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.wdt87xx_sys_param*)* @wdt87xx_get_sysparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_get_sysparam(%struct.i2c_client* %0, %struct.wdt87xx_sys_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.wdt87xx_sys_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.wdt87xx_sys_param* %1, %struct.wdt87xx_sys_param** %5, align 8
  %10 = load i32, i32* @PKT_READ_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load i32, i32* @WDT_GD_DEVICE, align 4
  %16 = call i32 @wdt87xx_get_desc(%struct.i2c_client* %14, i32 %15, i32* %13, i32 18)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %163

24:                                               ; preds = %2
  %25 = load i32, i32* @DEV_DESC_OFFSET_VID, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %13, i64 %26
  %28 = call i32 @get_unaligned_le16(i32* %27)
  %29 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %30 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DEV_DESC_OFFSET_PID, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %13, i64 %32
  %34 = call i32 @get_unaligned_le16(i32* %33)
  %35 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %36 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @STRIDX_PARAMETERS, align 4
  %39 = call i32 @wdt87xx_get_string(%struct.i2c_client* %37, i32 %38, i32* %13, i32 34)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %163

47:                                               ; preds = %24
  %48 = load i32, i32* @CTL_PARAM_OFFSET_XMLS_ID1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %13, i64 %49
  %51 = call i32 @get_unaligned_le16(i32* %50)
  %52 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %53 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @CTL_PARAM_OFFSET_XMLS_ID2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %13, i64 %55
  %57 = call i32 @get_unaligned_le16(i32* %56)
  %58 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %59 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @CTL_PARAM_OFFSET_PHY_CH_X, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %13, i64 %61
  %63 = call i32 @get_unaligned_le16(i32* %62)
  %64 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %65 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @CTL_PARAM_OFFSET_PHY_CH_Y, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %13, i64 %67
  %69 = call i32 @get_unaligned_le16(i32* %68)
  %70 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %71 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @CTL_PARAM_OFFSET_PHY_W, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %13, i64 %73
  %75 = call i32 @get_unaligned_le16(i32* %74)
  %76 = sdiv i32 %75, 10
  %77 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %78 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @CTL_PARAM_OFFSET_PHY_H, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %13, i64 %80
  %82 = call i32 @get_unaligned_le16(i32* %81)
  %83 = sdiv i32 %82, 10
  %84 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %85 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @CTL_PARAM_OFFSET_FACTOR, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %13, i64 %87
  %89 = call i32 @get_unaligned_le16(i32* %88)
  %90 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %91 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @MAX_UNIT_AXIS, align 4
  %93 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %94 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @MAX_UNIT_AXIS, align 4
  %96 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %97 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %101 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @DIV_ROUND_CLOSEST(i32 %99, i32 %102)
  %104 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %105 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %104, i32 0, i32 12
  store i32 %103, i32* %105, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* @STRIDX_PLATFORM_ID, align 4
  %108 = call i32 @wdt87xx_get_string(%struct.i2c_client* %106, i32 %107, i32* %13, i32 8)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %47
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %163

116:                                              ; preds = %47
  %117 = getelementptr inbounds i32, i32* %13, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %120 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 4
  %121 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 242, i32* %121, align 16
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = call i32 @wdt87xx_get_feature(%struct.i2c_client* %122, i32* %13, i32 16)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %163

131:                                              ; preds = %116
  %132 = getelementptr inbounds i32, i32* %13, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = icmp ne i32 %133, 242
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = getelementptr inbounds i32, i32* %13, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %163

143:                                              ; preds = %131
  %144 = getelementptr inbounds i32, i32* %13, i64 1
  %145 = call i32 @get_unaligned_le16(i32* %144)
  %146 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %147 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %146, i32 0, i32 11
  store i32 %145, i32* %147, align 4
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %151 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %154 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %157 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.wdt87xx_sys_param*, %struct.wdt87xx_sys_param** %5, align 8
  %160 = getelementptr inbounds %struct.wdt87xx_sys_param, %struct.wdt87xx_sys_param* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dev_info(i32* %149, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %155, i32 %158, i32 %161)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %163

163:                                              ; preds = %143, %135, %126, %111, %42, %19
  %164 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wdt87xx_get_desc(%struct.i2c_client*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @get_unaligned_le16(i32*) #2

declare dso_local i32 @wdt87xx_get_string(%struct.i2c_client*, i32, i32*, i32) #2

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #2

declare dso_local i32 @wdt87xx_get_feature(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
