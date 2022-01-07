; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_parse_dcbxcfg_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_parse_dcbxcfg_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_dcbx_cfg = type { i32, i32, i64, %struct.ocrdma_app_parameter* }
%struct.ocrdma_app_parameter = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_DCBX_STATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s ocrdma%d DCBX is disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s ocrdma%d priority flow control(%s) is %s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"operational\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@OCRDMA_STATE_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@OCRDMA_STATE_FLAG_SYNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c", not sync'ed\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"%s ocrdma%d priority flow control is enabled and sync'ed\0A\00", align 1
@OCRDMA_DCBX_APP_ENTRY_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_APP_PARAM_VALID_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_APP_PARAM_VALID_MASK = common dso_local global i32 0, align 4
@OCRDMA_APP_PARAM_PROTO_SEL_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_APP_PARAM_PROTO_SEL_MASK = common dso_local global i32 0, align 4
@OCRDMA_APP_PARAM_APP_PROTO_MASK = common dso_local global i32 0, align 4
@ETH_P_IBOE = common dso_local global i32 0, align 4
@OCRDMA_PROTO_SELECT_L2 = common dso_local global i32 0, align 4
@OCRDMA_MAX_SERVICE_LEVEL_INDEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [60 x i8] c"%s ocrdma%d application priority not set for 0x%x protocol\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, i32, %struct.ocrdma_dcbx_cfg*, i32*)* @ocrdma_parse_dcbxcfg_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_parse_dcbxcfg_rsp(%struct.ocrdma_dev* %0, i32 %1, %struct.ocrdma_dcbx_cfg* %2, i32* %3) #0 {
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_dcbx_cfg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocrdma_app_parameter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocrdma_dcbx_cfg* %2, %struct.ocrdma_dcbx_cfg** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ocrdma_dcbx_cfg*, %struct.ocrdma_dcbx_cfg** %7, align 8
  %22 = getelementptr inbounds %struct.ocrdma_dcbx_cfg, %struct.ocrdma_dcbx_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @OCRDMA_DCBX_STATE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %4
  %28 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %29 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @dev_name(i32* %32)
  %34 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %35 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  br label %186

38:                                               ; preds = %4
  %39 = load %struct.ocrdma_dcbx_cfg*, %struct.ocrdma_dcbx_cfg** %7, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dcbx_cfg, %struct.ocrdma_dcbx_cfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ocrdma_is_enabled_and_synced(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %38
  %45 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %46 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @dev_name(i32* %49)
  %51 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %52 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %58 = load %struct.ocrdma_dcbx_cfg*, %struct.ocrdma_dcbx_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.ocrdma_dcbx_cfg, %struct.ocrdma_dcbx_cfg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OCRDMA_STATE_FLAG_ENABLED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %66 = load %struct.ocrdma_dcbx_cfg*, %struct.ocrdma_dcbx_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.ocrdma_dcbx_cfg, %struct.ocrdma_dcbx_cfg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OCRDMA_STATE_FLAG_SYNC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)
  %74 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53, i8* %57, i8* %65, i8* %73)
  br label %186

75:                                               ; preds = %38
  %76 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %77 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @dev_name(i32* %80)
  %82 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %83 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %75
  %87 = load %struct.ocrdma_dcbx_cfg*, %struct.ocrdma_dcbx_cfg** %7, align 8
  %88 = getelementptr inbounds %struct.ocrdma_dcbx_cfg, %struct.ocrdma_dcbx_cfg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @OCRDMA_DCBX_APP_ENTRY_SHIFT, align 4
  %91 = ashr i32 %89, %90
  %92 = load i32, i32* @OCRDMA_DCBX_STATE_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %182, %86
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %185

98:                                               ; preds = %94
  %99 = load %struct.ocrdma_dcbx_cfg*, %struct.ocrdma_dcbx_cfg** %7, align 8
  %100 = getelementptr inbounds %struct.ocrdma_dcbx_cfg, %struct.ocrdma_dcbx_cfg* %99, i32 0, i32 3
  %101 = load %struct.ocrdma_app_parameter*, %struct.ocrdma_app_parameter** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ocrdma_app_parameter, %struct.ocrdma_app_parameter* %101, i64 %103
  store %struct.ocrdma_app_parameter* %104, %struct.ocrdma_app_parameter** %13, align 8
  %105 = load %struct.ocrdma_app_parameter*, %struct.ocrdma_app_parameter** %13, align 8
  %106 = getelementptr inbounds %struct.ocrdma_app_parameter, %struct.ocrdma_app_parameter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @OCRDMA_APP_PARAM_VALID_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* @OCRDMA_APP_PARAM_VALID_MASK, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %14, align 4
  %112 = load %struct.ocrdma_app_parameter*, %struct.ocrdma_app_parameter** %13, align 8
  %113 = getelementptr inbounds %struct.ocrdma_app_parameter, %struct.ocrdma_app_parameter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @OCRDMA_APP_PARAM_PROTO_SEL_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = load i32, i32* @OCRDMA_APP_PARAM_PROTO_SEL_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %15, align 4
  %119 = load %struct.ocrdma_app_parameter*, %struct.ocrdma_app_parameter** %13, align 8
  %120 = getelementptr inbounds %struct.ocrdma_app_parameter, %struct.ocrdma_app_parameter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @OCRDMA_APP_PARAM_APP_PROTO_MASK, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %181

126:                                              ; preds = %98
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @ETH_P_IBOE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %181

130:                                              ; preds = %126
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @OCRDMA_PROTO_SELECT_L2, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %181

134:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %161, %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @OCRDMA_MAX_SERVICE_LEVEL_INDEX, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %135
  %140 = load %struct.ocrdma_app_parameter*, %struct.ocrdma_app_parameter** %13, align 8
  %141 = getelementptr inbounds %struct.ocrdma_app_parameter, %struct.ocrdma_app_parameter* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @ocrdma_get_app_prio(i32* %143, i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load %struct.ocrdma_dcbx_cfg*, %struct.ocrdma_dcbx_cfg** %7, align 8
  %147 = getelementptr inbounds %struct.ocrdma_dcbx_cfg, %struct.ocrdma_dcbx_cfg* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @ocrdma_get_pfc_prio(i32* %149, i32 %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %139
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %11, align 4
  %159 = load i32*, i32** %8, align 8
  store i32 %158, i32* %159, align 4
  store i32 0, i32* %9, align 4
  br label %186

160:                                              ; preds = %154, %139
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %135

164:                                              ; preds = %135
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @OCRDMA_MAX_SERVICE_LEVEL_INDEX, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %170 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = call i32 @dev_name(i32* %173)
  %175 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %176 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %18, align 4
  %179 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i32 %174, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %168, %164
  br label %181

181:                                              ; preds = %180, %130, %126, %98
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %94

185:                                              ; preds = %94
  br label %186

186:                                              ; preds = %185, %157, %44, %27
  %187 = load i32, i32* %9, align 4
  ret i32 %187
}

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ocrdma_is_enabled_and_synced(i32) #1

declare dso_local i32 @ocrdma_get_app_prio(i32*, i32) #1

declare dso_local i32 @ocrdma_get_pfc_prio(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
