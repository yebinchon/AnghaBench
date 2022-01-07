; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_do_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_do_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32*, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.arizona* }
%struct.TYPE_4__ = type { i32 }
%struct.arizona = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Measuring mic\0A\00", align 1
@ARIZONA_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_MASK = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_SRC = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_HPR = common dso_local global i32 0, align 4
@ARIZONA_HEADPHONE_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_HP_POLL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"HPDET measured %d %d\0A\00", align 1
@ARIZONA_HPDET_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Retrying high impedance\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Detected mic\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Detected headphone\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_extcon_info*, i32*, i32*)* @arizona_hpdet_do_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_hpdet_do_id(%struct.arizona_extcon_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arizona_extcon_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.arizona*, align 8
  %9 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %11 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %10, i32 0, i32 6
  %12 = load %struct.arizona*, %struct.arizona** %11, align 8
  store %struct.arizona* %12, %struct.arizona** %8, align 8
  %13 = load %struct.arizona*, %struct.arizona** %8, align 8
  %14 = getelementptr inbounds %struct.arizona, %struct.arizona* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.arizona*, %struct.arizona** %8, align 8
  %18 = getelementptr inbounds %struct.arizona, %struct.arizona* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %156

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %26 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %29 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32 %24, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %22
  %37 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %38 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = load %struct.arizona*, %struct.arizona** %8, align 8
  %43 = getelementptr inbounds %struct.arizona, %struct.arizona* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.arizona*, %struct.arizona** %8, align 8
  %47 = getelementptr inbounds %struct.arizona, %struct.arizona* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %50 = load i32, i32* @ARIZONA_ACCDET_MODE_MASK, align 4
  %51 = load i32, i32* @ARIZONA_ACCDET_SRC, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ARIZONA_ACCDET_MODE_HPR, align 4
  %54 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %55 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %53, %59
  %61 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %52, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gpio_set_value_cansleep(i32 %62, i32 1)
  %64 = load %struct.arizona*, %struct.arizona** %8, align 8
  %65 = getelementptr inbounds %struct.arizona, %struct.arizona* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %68 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %69 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %70 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %157

73:                                               ; preds = %36, %22
  %74 = load %struct.arizona*, %struct.arizona** %8, align 8
  %75 = getelementptr inbounds %struct.arizona, %struct.arizona* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %78 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %83 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %89 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ARIZONA_HPDET_MAX, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %73
  %99 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %100 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %98
  %104 = load %struct.arizona*, %struct.arizona** %8, align 8
  %105 = getelementptr inbounds %struct.arizona, %struct.arizona* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @dev_dbg(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %109 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  %110 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %111 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  %112 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %113 = call i32 @arizona_start_hpdet_acc_id(%struct.arizona_extcon_info* %112)
  %114 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %115 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @pm_runtime_put(i32 %116)
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %157

120:                                              ; preds = %98, %73
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %125 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 50
  br i1 %129, label %130, label %138

130:                                              ; preds = %123, %120
  %131 = load %struct.arizona*, %struct.arizona** %8, align 8
  %132 = getelementptr inbounds %struct.arizona, %struct.arizona* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32*, i32** %7, align 8
  store i32 1, i32* %135, align 4
  %136 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %137 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %136, i32 0, i32 3
  store i32 1, i32* %137, align 8
  br label %143

138:                                              ; preds = %123
  %139 = load %struct.arizona*, %struct.arizona** %8, align 8
  %140 = getelementptr inbounds %struct.arizona, %struct.arizona* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i8*, ...) @dev_dbg(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138, %130
  %144 = load %struct.arizona*, %struct.arizona** %8, align 8
  %145 = getelementptr inbounds %struct.arizona, %struct.arizona* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %148 = load i32, i32* @ARIZONA_ACCDET_SRC, align 4
  %149 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %150 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %149, i32 0, i32 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @regmap_update_bits(i32 %146, i32 %147, i32 %148, i32 %154)
  br label %156

156:                                              ; preds = %143, %3
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %103, %41
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @arizona_start_hpdet_acc_id(%struct.arizona_extcon_info*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
