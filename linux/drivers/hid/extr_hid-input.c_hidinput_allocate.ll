; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_input = type { i8*, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.hid_device = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HID_QUIRK_INPUT_PER_APP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Keypad\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Pen\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Touchscreen\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"System Control\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Consumer Control\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Wireless Radio Control\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"System Multi Axis\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@hidinput_input_event = common dso_local global i32 0, align 4
@hidinput_open = common dso_local global i32 0, align 4
@hidinput_close = common dso_local global i32 0, align 4
@hidinput_setkeycode = common dso_local global i32 0, align 4
@hidinput_getkeycode = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"Out of memory during hid input probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_input* (%struct.hid_device*, i32)* @hidinput_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_input* @hidinput_allocate(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hid_input*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_input*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hid_input* @kzalloc(i32 32, i32 %11)
  store %struct.hid_input* %12, %struct.hid_input** %6, align 8
  %13 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %13, %struct.input_dev** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %15 = icmp ne %struct.hid_input* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = icmp ne %struct.input_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %176

20:                                               ; preds = %16
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HID_QUIRK_INPUT_PER_APP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %44 [
    i32 133, label %34
    i32 132, label %35
    i32 131, label %36
    i32 136, label %37
    i32 134, label %38
    i32 135, label %39
    i32 130, label %40
    i32 137, label %41
    i32 128, label %42
    i32 129, label %43
  ]

34:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %45

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %45

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %45

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %45

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %45

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %45

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %45

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %45

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %45

43:                                               ; preds = %32
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34
  br label %46

46:                                               ; preds = %45, %27, %20
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %87

49:                                               ; preds = %46
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %49
  %60 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %61 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @strcmp(i8* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %59, %49
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %74 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @kasprintf(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %79 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %81 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %71
  br label %176

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86, %46
  %88 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %89 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %90 = call i32 @input_set_drvdata(%struct.input_dev* %88, %struct.hid_device* %89)
  %91 = load i32, i32* @hidinput_input_event, align 4
  %92 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @hidinput_open, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @hidinput_close, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @hidinput_setkeycode, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @hidinput_getkeycode, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %107 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %87
  %111 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %112 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  br label %118

114:                                              ; preds = %87
  %115 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %116 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i8* [ %113, %110 ], [ %117, %114 ]
  %120 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %123 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %128 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %133 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 4
  %138 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %139 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %145 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %148 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %151 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %154 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %157 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %156, i32 0, i32 4
  %158 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %159 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32* %157, i32** %160, align 8
  %161 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %162 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %163 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %162, i32 0, i32 4
  store %struct.input_dev* %161, %struct.input_dev** %163, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %166 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %168 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %167, i32 0, i32 3
  %169 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %170 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %169, i32 0, i32 3
  %171 = call i32 @list_add_tail(i32* %168, i32* %170)
  %172 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %173 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %172, i32 0, i32 2
  %174 = call i32 @INIT_LIST_HEAD(i32* %173)
  %175 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  store %struct.hid_input* %175, %struct.hid_input** %3, align 8
  br label %183

176:                                              ; preds = %84, %19
  %177 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %178 = call i32 @kfree(%struct.hid_input* %177)
  %179 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %180 = call i32 @input_free_device(%struct.input_dev* %179)
  %181 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %182 = call i32 @hid_err(%struct.hid_device* %181, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  store %struct.hid_input* null, %struct.hid_input** %3, align 8
  br label %183

183:                                              ; preds = %176, %118
  %184 = load %struct.hid_input*, %struct.hid_input** %3, align 8
  ret %struct.hid_input* %184
}

declare dso_local %struct.hid_input* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.hid_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.hid_input*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
