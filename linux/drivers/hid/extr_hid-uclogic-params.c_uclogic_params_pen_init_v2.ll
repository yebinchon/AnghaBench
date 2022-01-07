; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_pen_init_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_pen_init_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_params_pen = type { i32*, i32, i32, i32, i32 }
%struct.hid_device = type { i32 }

@UCLOGIC_RDESC_PEN_PH_ID_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"string descriptor with pen parameters not found, assuming not compatible\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed retrieving pen parameters: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"string descriptor with pen parameters has invalid length (got %d, expected %d), assuming not compatible\0A\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"string descriptor with pen parameters seems to contain only text, assuming not compatible\0A\00", align 1
@UCLOGIC_RDESC_PEN_PH_ID_X_LM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_Y_LM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_X_PM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_Y_PM = common dso_local global i64 0, align 8
@uclogic_rdesc_pen_v2_template_arr = common dso_local global i32 0, align 4
@uclogic_rdesc_pen_v2_template_size = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UCLOGIC_RDESC_PEN_V2_ID = common dso_local global i32 0, align 4
@UCLOGIC_PARAMS_PEN_INRANGE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uclogic_params_pen*, i32*, %struct.hid_device*)* @uclogic_params_pen_init_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_params_pen_init_v2(%struct.uclogic_params_pen* %0, i32* %1, %struct.hid_device* %2) #0 {
  %4 = alloca %struct.uclogic_params_pen*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.uclogic_params_pen* %0, %struct.uclogic_params_pen** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hid_device* %2, %struct.hid_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 18, i32* %10, align 4
  %16 = load i32, i32* @UCLOGIC_RDESC_PEN_PH_ID_NUM, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %20 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %21 = icmp eq %struct.uclogic_params_pen* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %27 = icmp eq %struct.hid_device* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %170

31:                                               ; preds = %25
  %32 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %33 = call i32 @uclogic_params_get_str_desc(i32** %9, %struct.hid_device* %32, i32 200, i32 18)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EPIPE, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %40 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %167

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hid_err(%struct.hid_device* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %170

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 18
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %52, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 18)
  br label %167

55:                                               ; preds = %48
  store i64 2, i64* %15, align 8
  br label %56

56:                                               ; preds = %83, %55
  %57 = load i64, i64* %15, align 8
  %58 = icmp ult i64 %57, 18
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 32
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 127
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %73, 1
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %71, %65, %59
  %79 = phi i1 [ false, %65 ], [ false, %59 ], [ %77, %71 ]
  br label %80

80:                                               ; preds = %78, %56
  %81 = phi i1 [ false, %56 ], [ %79, %78 ]
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, 2
  store i64 %85, i64* %15, align 8
  br label %56

86:                                               ; preds = %80
  %87 = load i64, i64* %15, align 8
  %88 = icmp uge i64 %87, 18
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %91 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %90, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0))
  br label %167

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = call i32 @uclogic_params_get_le24(i32* %97)
  %99 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_LM, align 8
  %100 = getelementptr inbounds i32, i32* %19, i64 %99
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = call i32 @uclogic_params_get_le24(i32* %102)
  %104 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_LM, align 8
  %105 = getelementptr inbounds i32, i32* %19, i64 %104
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  %108 = call i32 @get_unaligned_le16(i32* %107)
  %109 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM, align 8
  %110 = getelementptr inbounds i32, i32* %19, i64 %109
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 10
  %113 = call i32 @get_unaligned_le16(i32* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %95
  %117 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_PM, align 8
  %118 = getelementptr inbounds i32, i32* %19, i64 %117
  store i32 0, i32* %118, align 4
  %119 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_PM, align 8
  %120 = getelementptr inbounds i32, i32* %19, i64 %119
  store i32 0, i32* %120, align 4
  br label %138

121:                                              ; preds = %95
  %122 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_LM, align 8
  %123 = getelementptr inbounds i32, i32* %19, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 1000
  %126 = load i32, i32* %11, align 4
  %127 = sdiv i32 %125, %126
  %128 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_PM, align 8
  %129 = getelementptr inbounds i32, i32* %19, i64 %128
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_LM, align 8
  %131 = getelementptr inbounds i32, i32* %19, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 1000
  %134 = load i32, i32* %11, align 4
  %135 = sdiv i32 %133, %134
  %136 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_PM, align 8
  %137 = getelementptr inbounds i32, i32* %19, i64 %136
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %121, %116
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @kfree(i32* %139)
  store i32* null, i32** %9, align 8
  %141 = load i32, i32* @uclogic_rdesc_pen_v2_template_arr, align 4
  %142 = load i32, i32* @uclogic_rdesc_pen_v2_template_size, align 4
  %143 = call i32 @ARRAY_SIZE(i32* %19)
  %144 = call i32* @uclogic_rdesc_template_apply(i32 %141, i32 %142, i32* %19, i32 %143)
  store i32* %144, i32** %14, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %7, align 4
  br label %170

150:                                              ; preds = %138
  %151 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %152 = call i32 @memset(%struct.uclogic_params_pen* %151, i32 0, i32 24)
  %153 = load i32*, i32** %14, align 8
  %154 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %155 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %154, i32 0, i32 0
  store i32* %153, i32** %155, align 8
  store i32* null, i32** %14, align 8
  %156 = load i32, i32* @uclogic_rdesc_pen_v2_template_size, align 4
  %157 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %158 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @UCLOGIC_RDESC_PEN_V2_ID, align 4
  %160 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %161 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @UCLOGIC_PARAMS_PEN_INRANGE_NONE, align 4
  %163 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %164 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %166 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %165, i32 0, i32 1
  store i32 1, i32* %166, align 8
  store i32 1, i32* %8, align 4
  br label %167

167:                                              ; preds = %150, %89, %51, %38
  %168 = load i32, i32* %8, align 4
  %169 = load i32*, i32** %5, align 8
  store i32 %168, i32* %169, align 4
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %167, %147, %44, %28
  %171 = load i32*, i32** %14, align 8
  %172 = call i32 @kfree(i32* %171)
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @kfree(i32* %173)
  %175 = load i32, i32* %7, align 4
  %176 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %176)
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uclogic_params_get_str_desc(i32**, %struct.hid_device*, i32, i32) #2

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, ...) #2

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #2

declare dso_local i32 @uclogic_params_get_le24(i32*) #2

declare dso_local i32 @get_unaligned_le16(i32*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32* @uclogic_rdesc_template_apply(i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @memset(%struct.uclogic_params_pen*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
