; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_compose_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_compose_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.led_init_data = type { i8*, i8*, i64, %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.led_properties = type { i8*, i64, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@LED_MAX_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s:%s-%d\00", align 1
@led_colors = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Legacy LED naming requires devicename segment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @led_compose_name(%struct.device* %0, %struct.led_init_data* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.led_init_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.led_properties, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.led_init_data* %1, %struct.led_init_data** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = bitcast %struct.led_properties* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  %14 = load %struct.led_init_data*, %struct.led_init_data** %6, align 8
  %15 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %14, i32 0, i32 3
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %15, align 8
  store %struct.fwnode_handle* %16, %struct.fwnode_handle** %9, align 8
  %17 = load %struct.led_init_data*, %struct.led_init_data** %6, align 8
  %18 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %169

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %28 = call i32 @led_parse_fwnode_props(%struct.device* %26, %struct.fwnode_handle* %27, %struct.led_properties* %8)
  %29 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %40 = call i32 @strscpy(i8* %36, i8* %38, i32 %39)
  br label %48

41:                                               ; preds = %32
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %46)
  br label %48

48:                                               ; preds = %41, %35
  br label %168

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %129

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %11, align 8
  %61 = alloca i8, i64 %59, align 16
  store i64 %59, i64* %12, align 8
  %62 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %57
  %66 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %67 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i8**, i8*** @led_colors, align 8
  %72 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i8* [ %75, %70 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %76 ]
  %79 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = inttoptr i64 %80 to i8*
  br label %85

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i8* [ %83, %82 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %84 ]
  %87 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %61, i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %86, i32 %88)
  br label %113

90:                                               ; preds = %57
  %91 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %92 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8**, i8*** @led_colors, align 8
  %97 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %95
  %103 = phi i8* [ %100, %95 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %101 ]
  %104 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %8, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = inttoptr i64 %105 to i8*
  br label %110

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i8* [ %108, %107 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %109 ]
  %112 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %61, i32 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %103, i8* %111)
  br label %113

113:                                              ; preds = %110, %85
  %114 = load %struct.led_init_data*, %struct.led_init_data** %6, align 8
  %115 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %119, i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %121, i8* %61)
  br label %127

123:                                              ; preds = %113
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %126 = call i32 @strscpy(i8* %124, i8* %61, i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %128)
  br label %167

129:                                              ; preds = %53
  %130 = load %struct.led_init_data*, %struct.led_init_data** %6, align 8
  %131 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %150

134:                                              ; preds = %129
  %135 = load i8*, i8** %10, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %169

142:                                              ; preds = %134
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %145 = load i8*, i8** %10, align 8
  %146 = load %struct.led_init_data*, %struct.led_init_data** %6, align 8
  %147 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %143, i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %145, i8* %148)
  br label %166

150:                                              ; preds = %129
  %151 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %152 = call i64 @is_of_node(%struct.fwnode_handle* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i8*, i8** %7, align 8
  %156 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %157 = call %struct.TYPE_2__* @to_of_node(%struct.fwnode_handle* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %161 = call i32 @strscpy(i8* %155, i8* %159, i32 %160)
  br label %165

162:                                              ; preds = %150
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %169

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %142
  br label %167

167:                                              ; preds = %166, %127
  br label %168

168:                                              ; preds = %167, %48
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %162, %137, %22
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @led_parse_fwnode_props(%struct.device*, %struct.fwnode_handle*, %struct.led_properties*) #2

declare dso_local i32 @strscpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i64 @is_of_node(%struct.fwnode_handle*) #2

declare dso_local %struct.TYPE_2__* @to_of_node(%struct.fwnode_handle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
