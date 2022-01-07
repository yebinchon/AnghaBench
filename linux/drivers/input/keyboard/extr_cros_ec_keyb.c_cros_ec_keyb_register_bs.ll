; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_register_bs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_register_bs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_bs_map = type { i64, i32, i32 }
%struct.cros_ec_keyb = type { %struct.input_dev*, %struct.device*, %struct.cros_ec_device* }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.device = type { i32 }
%struct.cros_ec_device = type { i32 }
%union.ec_response_get_next_data = type { i32 }

@EC_MKBP_INFO_SUPPORTED = common dso_local global i32 0, align 4
@EC_MKBP_EVENT_BUTTON = common dso_local global i32 0, align 4
@EC_MKBP_EVENT_SWITCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cros_ec_buttons\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@BUS_VIRTUAL = common dso_local global i32 0, align 4
@cros_ec_keyb_bs = common dso_local global %struct.cros_ec_bs_map* null, align 8
@EV_KEY = common dso_local global i64 0, align 8
@EV_SW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot query switches\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_keyb*)* @cros_ec_keyb_register_bs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_keyb_register_bs(%struct.cros_ec_keyb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_keyb*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %union.ec_response_get_next_data, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cros_ec_bs_map*, align 8
  store %struct.cros_ec_keyb* %0, %struct.cros_ec_keyb** %3, align 8
  %14 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %15 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %14, i32 0, i32 2
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %15, align 8
  store %struct.cros_ec_device* %16, %struct.cros_ec_device** %4, align 8
  %17 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %18 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = bitcast %union.ec_response_get_next_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %22 = load i32, i32* @EC_MKBP_INFO_SUPPORTED, align 4
  %23 = load i32, i32* @EC_MKBP_EVENT_BUTTON, align 4
  %24 = call i32 @cros_ec_keyb_info(%struct.cros_ec_device* %21, i32 %22, i32 %23, %union.ec_response_get_next_data* %7, i32 4)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %2, align 4
  br label %171

29:                                               ; preds = %1
  %30 = bitcast %union.ec_response_get_next_data* %7 to i32*
  %31 = call i32 @get_unaligned_le32(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %33 = load i32, i32* @EC_MKBP_INFO_SUPPORTED, align 4
  %34 = load i32, i32* @EC_MKBP_EVENT_SWITCH, align 4
  %35 = call i32 @cros_ec_keyb_info(%struct.cros_ec_device* %32, i32 %33, i32 %34, %union.ec_response_get_next_data* %7, i32 4)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %171

40:                                               ; preds = %29
  %41 = bitcast %union.ec_response_get_next_data* %7 to i32*
  %42 = call i32 @get_unaligned_le32(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %171

49:                                               ; preds = %45, %40
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %53 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @devm_kasprintf(%struct.device* %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %171

61:                                               ; preds = %49
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %62)
  store %struct.input_dev* %63, %struct.input_dev** %6, align 8
  %64 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %65 = icmp ne %struct.input_dev* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %171

69:                                               ; preds = %61
  %70 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %71, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @EV_REP, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @__set_bit(i32 %75, i32 %78)
  %80 = load i32, i32* @BUS_VIRTUAL, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.device* %90, %struct.device** %93, align 8
  %94 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %95 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %96 = call i32 @input_set_drvdata(%struct.input_dev* %94, %struct.cros_ec_keyb* %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %98 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %99 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %98, i32 0, i32 0
  store %struct.input_dev* %97, %struct.input_dev** %99, align 8
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %147, %69
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** @cros_ec_keyb_bs, align 8
  %103 = call i32 @ARRAY_SIZE(%struct.cros_ec_bs_map* %102)
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %150

105:                                              ; preds = %100
  %106 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** @cros_ec_keyb_bs, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cros_ec_bs_map, %struct.cros_ec_bs_map* %106, i64 %108
  store %struct.cros_ec_bs_map* %109, %struct.cros_ec_bs_map** %13, align 8
  %110 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** %13, align 8
  %111 = getelementptr inbounds %struct.cros_ec_bs_map, %struct.cros_ec_bs_map* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EV_KEY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** %13, align 8
  %118 = getelementptr inbounds %struct.cros_ec_bs_map, %struct.cros_ec_bs_map* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = and i32 %116, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %115, %105
  %124 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** %13, align 8
  %125 = getelementptr inbounds %struct.cros_ec_bs_map, %struct.cros_ec_bs_map* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @EV_SW, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %123
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** %13, align 8
  %132 = getelementptr inbounds %struct.cros_ec_bs_map, %struct.cros_ec_bs_map* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @BIT(i32 %133)
  %135 = and i32 %130, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %129, %115
  %138 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %139 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** %13, align 8
  %140 = getelementptr inbounds %struct.cros_ec_bs_map, %struct.cros_ec_bs_map* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.cros_ec_bs_map*, %struct.cros_ec_bs_map** %13, align 8
  %143 = getelementptr inbounds %struct.cros_ec_bs_map, %struct.cros_ec_bs_map* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @input_set_capability(%struct.input_dev* %138, i64 %141, i32 %144)
  br label %146

146:                                              ; preds = %137, %129, %123
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %100

150:                                              ; preds = %100
  %151 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %152 = call i32 @cros_ec_keyb_query_switches(%struct.cros_ec_keyb* %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.device*, %struct.device** %5, align 8
  %157 = call i32 @dev_err(%struct.device* %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %2, align 4
  br label %171

159:                                              ; preds = %150
  %160 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %161 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %160, i32 0, i32 0
  %162 = load %struct.input_dev*, %struct.input_dev** %161, align 8
  %163 = call i32 @input_register_device(%struct.input_dev* %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load %struct.device*, %struct.device** %5, align 8
  %168 = call i32 @dev_err(%struct.device* %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %2, align 4
  br label %171

170:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %166, %155, %66, %58, %48, %38, %27
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cros_ec_keyb_info(%struct.cros_ec_device*, i32, i32, %union.ec_response_get_next_data*, i32) #2

declare dso_local i32 @get_unaligned_le32(i32*) #2

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32) #2

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #2

declare dso_local i32 @__set_bit(i32, i32) #2

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.cros_ec_keyb*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.cros_ec_bs_map*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @input_set_capability(%struct.input_dev*, i64, i32) #2

declare dso_local i32 @cros_ec_keyb_query_switches(%struct.cros_ec_keyb*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @input_register_device(%struct.input_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
