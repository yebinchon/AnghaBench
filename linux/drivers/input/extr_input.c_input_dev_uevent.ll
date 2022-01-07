; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_dev_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_dev_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"PRODUCT=%x/%x/%x/%x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NAME=\22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"PHYS=\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"UNIQ=\22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"PROP=\00", align 1
@INPUT_PROP_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"EV=\00", align 1
@EV_MAX = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"KEY=\00", align 1
@KEY_MAX = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"REL=\00", align 1
@REL_MAX = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"ABS=\00", align 1
@ABS_MAX = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"MSC=\00", align 1
@MSC_MAX = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"LED=\00", align 1
@LED_MAX = common dso_local global i32 0, align 4
@EV_SND = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"SND=\00", align 1
@SND_MAX = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"FF=\00", align 1
@FF_MAX = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"SW=\00", align 1
@SW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @input_dev_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_dev_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.input_dev* @to_input_dev(%struct.device* %6)
  store %struct.input_dev* %7, %struct.input_dev** %5, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 13
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 13
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 13
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %16, i32 %20, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 12
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 10
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @INPUT_PROP_MAX, align 4
  %60 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EV_MAX, align 4
  %65 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @EV_KEY, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @test_bit(i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %55
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @KEY_MAX, align 4
  %77 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %55
  %79 = load i32, i32* @EV_REL, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @test_bit(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @REL_MAX, align 4
  %90 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i32, i32* @EV_ABS, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @test_bit(i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %100 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ABS_MAX, align 4
  %103 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %91
  %105 = load i32, i32* @EV_MSC, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @test_bit(i32 %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MSC_MAX, align 4
  %116 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %104
  %118 = load i32, i32* @EV_LED, align 4
  %119 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @test_bit(i32 %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LED_MAX, align 4
  %129 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %117
  %131 = load i32, i32* @EV_SND, align 4
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @test_bit(i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SND_MAX, align 4
  %142 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %130
  %144 = load i32, i32* @EV_FF, align 4
  %145 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %146 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @test_bit(i32 %144, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @FF_MAX, align 4
  %155 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %150, %143
  %157 = load i32, i32* @EV_SW, align 4
  %158 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %159 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @test_bit(i32 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %165 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SW_MAX, align 4
  %168 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %156
  %170 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %171 = call i32 @INPUT_ADD_HOTPLUG_MODALIAS_VAR(%struct.input_dev* %170)
  ret i32 0
}

declare dso_local %struct.input_dev* @to_input_dev(%struct.device*) #1

declare dso_local i32 @INPUT_ADD_HOTPLUG_VAR(i8*, i64, ...) #1

declare dso_local i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @INPUT_ADD_HOTPLUG_MODALIAS_VAR(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
