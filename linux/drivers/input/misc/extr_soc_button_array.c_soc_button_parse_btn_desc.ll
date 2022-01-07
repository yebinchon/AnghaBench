; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_parse_btn_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_parse_btn_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.soc_button_info = type { i32, i8*, i32, i32, i32, i32 }

@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid ACPI Button Descriptor\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"rotation lock switch\00", align 1
@EV_SW = common dso_local global i32 0, align 4
@SW_ROTATE_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"volume_up\00", align 1
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"volume_down\00", align 1
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Unknown button index %d upage %02x usage %02x, ignoring\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %union.acpi_object*, i32, %struct.soc_button_info*)* @soc_button_parse_btn_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_button_parse_btn_desc(%struct.device* %0, %union.acpi_object* %1, i32 %2, %struct.soc_button_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.soc_button_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %union.acpi_object* %1, %union.acpi_object** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.soc_button_info* %3, %struct.soc_button_info** %9, align 8
  %12 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %13 = bitcast %union.acpi_object* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %40, label %17

17:                                               ; preds = %4
  %18 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %19 = bitcast %union.acpi_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 5
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @soc_button_get_acpi_object_int(i32* %28)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %40, label %31

31:                                               ; preds = %23
  %32 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %33 = bitcast %union.acpi_object* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = call i32 @soc_button_get_acpi_object_int(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31, %23, %17, %4
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %157

45:                                               ; preds = %31
  %46 = load i32, i32* @EV_KEY, align 4
  %47 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %48 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %50 = bitcast %union.acpi_object* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i32 @soc_button_get_acpi_object_int(i32* %53)
  %55 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %56 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = call i32 @soc_button_get_acpi_object_int(i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = call i32 @soc_button_get_acpi_object_int(i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %45
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %76 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %75, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %76, align 8
  %77 = load i32, i32* @KEY_POWER, align 4
  %78 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %79 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %81 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  br label %156

82:                                               ; preds = %71, %45
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 202
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %90 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %89, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %90, align 8
  %91 = load i32, i32* @EV_SW, align 4
  %92 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %93 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @SW_ROTATE_LOCK, align 4
  %95 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %96 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  br label %155

97:                                               ; preds = %85, %82
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 7
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 227
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %105 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %104, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %105, align 8
  %106 = load i32, i32* @KEY_LEFTMETA, align 4
  %107 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %108 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %110 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  br label %154

111:                                              ; preds = %100, %97
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 12
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 233
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %119 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %118, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %119, align 8
  %120 = load i32, i32* @KEY_VOLUMEUP, align 4
  %121 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %122 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %124 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %123, i32 0, i32 3
  store i32 1, i32* %124, align 4
  br label %153

125:                                              ; preds = %114, %111
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 12
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = icmp eq i32 %129, 234
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %133 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %132, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %133, align 8
  %134 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %135 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %136 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %138 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  br label %152

139:                                              ; preds = %128, %125
  %140 = load %struct.device*, %struct.device** %6, align 8
  %141 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %142 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @dev_warn(%struct.device* %140, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %144, i32 %145)
  %147 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %148 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %147, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %148, align 8
  %149 = load i32, i32* @KEY_RESERVED, align 4
  %150 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %151 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %139, %131
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153, %103
  br label %155

155:                                              ; preds = %154, %88
  br label %156

156:                                              ; preds = %155, %74
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %40
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @soc_button_get_acpi_object_int(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
