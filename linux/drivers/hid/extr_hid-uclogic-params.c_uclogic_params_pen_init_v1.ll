; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_pen_init_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_pen_init_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_params_pen = type { i32, i32, i32, i32* }
%struct.hid_device = type { i32 }

@UCLOGIC_RDESC_PEN_PH_ID_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"string descriptor with pen parameters not found, assuming not compatible\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed retrieving pen parameters: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"string descriptor with pen parameters has invalid length (got %d, expected %d), assuming not compatible\0A\00", align 1
@UCLOGIC_RDESC_PEN_PH_ID_X_LM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_Y_LM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_X_PM = common dso_local global i64 0, align 8
@UCLOGIC_RDESC_PEN_PH_ID_Y_PM = common dso_local global i64 0, align 8
@uclogic_rdesc_pen_v1_template_arr = common dso_local global i32 0, align 4
@uclogic_rdesc_pen_v1_template_size = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UCLOGIC_RDESC_PEN_V1_ID = common dso_local global i32 0, align 4
@UCLOGIC_PARAMS_PEN_INRANGE_INVERTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uclogic_params_pen*, i32*, %struct.hid_device*)* @uclogic_params_pen_init_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_params_pen_init_v1(%struct.uclogic_params_pen* %0, i32* %1, %struct.hid_device* %2) #0 {
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
  store %struct.uclogic_params_pen* %0, %struct.uclogic_params_pen** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hid_device* %2, %struct.hid_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 12, i32* %10, align 4
  %15 = load i32, i32* @UCLOGIC_RDESC_PEN_PH_ID_NUM, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %19 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %20 = icmp eq %struct.uclogic_params_pen* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %26 = icmp eq %struct.hid_device* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %129

30:                                               ; preds = %24
  %31 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %32 = call i32 @uclogic_params_get_str_desc(i32** %9, %struct.hid_device* %31, i32 100, i32 12)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EPIPE, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %39 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %38, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %126

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @hid_err(%struct.hid_device* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %129

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 12
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %51, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 12)
  br label %126

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = call i32 @get_unaligned_le16(i32* %58)
  %60 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_LM, align 8
  %61 = getelementptr inbounds i32, i32* %18, i64 %60
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = call i32 @get_unaligned_le16(i32* %63)
  %65 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_LM, align 8
  %66 = getelementptr inbounds i32, i32* %18, i64 %65
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = call i32 @get_unaligned_le16(i32* %68)
  %70 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM, align 8
  %71 = getelementptr inbounds i32, i32* %18, i64 %70
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 10
  %74 = call i32 @get_unaligned_le16(i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %56
  %78 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_PM, align 8
  %79 = getelementptr inbounds i32, i32* %18, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_PM, align 8
  %81 = getelementptr inbounds i32, i32* %18, i64 %80
  store i32 0, i32* %81, align 4
  br label %99

82:                                               ; preds = %56
  %83 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_LM, align 8
  %84 = getelementptr inbounds i32, i32* %18, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 1000
  %87 = load i32, i32* %11, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_X_PM, align 8
  %90 = getelementptr inbounds i32, i32* %18, i64 %89
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_LM, align 8
  %92 = getelementptr inbounds i32, i32* %18, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 1000
  %95 = load i32, i32* %11, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i64, i64* @UCLOGIC_RDESC_PEN_PH_ID_Y_PM, align 8
  %98 = getelementptr inbounds i32, i32* %18, i64 %97
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %82, %77
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @kfree(i32* %100)
  store i32* null, i32** %9, align 8
  %102 = load i32, i32* @uclogic_rdesc_pen_v1_template_arr, align 4
  %103 = load i32, i32* @uclogic_rdesc_pen_v1_template_size, align 4
  %104 = call i32 @ARRAY_SIZE(i32* %18)
  %105 = call i32* @uclogic_rdesc_template_apply(i32 %102, i32 %103, i32* %18, i32 %104)
  store i32* %105, i32** %14, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %129

111:                                              ; preds = %99
  %112 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %113 = call i32 @memset(%struct.uclogic_params_pen* %112, i32 0, i32 24)
  %114 = load i32*, i32** %14, align 8
  %115 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %116 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  store i32* null, i32** %14, align 8
  %117 = load i32, i32* @uclogic_rdesc_pen_v1_template_size, align 4
  %118 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %119 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @UCLOGIC_RDESC_PEN_V1_ID, align 4
  %121 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %122 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @UCLOGIC_PARAMS_PEN_INRANGE_INVERTED, align 4
  %124 = load %struct.uclogic_params_pen*, %struct.uclogic_params_pen** %4, align 8
  %125 = getelementptr inbounds %struct.uclogic_params_pen, %struct.uclogic_params_pen* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  store i32 1, i32* %8, align 4
  br label %126

126:                                              ; preds = %111, %50, %37
  %127 = load i32, i32* %8, align 4
  %128 = load i32*, i32** %5, align 8
  store i32 %127, i32* %128, align 4
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %126, %108, %43, %27
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @kfree(i32* %130)
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @kfree(i32* %132)
  %134 = load i32, i32* %7, align 4
  %135 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uclogic_params_get_str_desc(i32**, %struct.hid_device*, i32, i32) #2

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, ...) #2

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #2

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
