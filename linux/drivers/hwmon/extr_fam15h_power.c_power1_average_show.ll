; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_power1_average_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_power1_average_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fam15h_power_data = type { i64*, i64*, i64*, i64, i32, i32 }

@MAX_CUS = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @power1_average_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power1_average_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fam15h_power_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.fam15h_power_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.fam15h_power_data* %21, %struct.fam15h_power_data** %8, align 8
  %22 = load i32, i32* @MAX_CUS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @MAX_CUS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %29 = load i32, i32* @MAX_CUS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %32, i32* %16, align 4
  %33 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %34 = call i32 @read_registers(%struct.fam15h_power_data* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %192

38:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %45 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %25, i64 %52
  store i64 %50, i64* %53, align 8
  %54 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %55 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %28, i64 %62
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %43
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %39

67:                                               ; preds = %39
  %68 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %69 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @msecs_to_jiffies(i32 %70)
  %72 = call i64 @schedule_timeout_interruptible(i32 %71)
  store i64 %72, i64* %18, align 8
  %73 = load i64, i64* %18, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %192

76:                                               ; preds = %67
  %77 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %78 = call i32 @read_registers(%struct.fam15h_power_data* %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %192

82:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  store i64 0, i64* %14, align 8
  br label %83

83:                                               ; preds = %185, %82
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %188

87:                                               ; preds = %83
  %88 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %89 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %185

97:                                               ; preds = %87
  %98 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %99 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %25, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %104, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %97
  %111 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %112 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %115 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %113, %120
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %31, i64 %123
  store i64 %121, i64* %124, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %25, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %31, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, %128
  store i64 %133, i64* %131, align 8
  br label %150

134:                                              ; preds = %97
  %135 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %136 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %25, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %141, %145
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %31, i64 %148
  store i64 %146, i64* %149, align 8
  br label %150

150:                                              ; preds = %134, %110
  %151 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %152 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %28, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %157, %161
  store i64 %162, i64* %13, align 8
  %163 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %8, align 8
  %164 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %165, 1000
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %31, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = mul nsw i64 %171, %167
  store i64 %172, i64* %170, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %31, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %13, align 8
  %178 = call i32 @do_div(i64 %176, i64 %177)
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %31, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %14, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %14, align 8
  br label %185

185:                                              ; preds = %150, %96
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %83

188:                                              ; preds = %83
  %189 = load i8*, i8** %7, align 8
  %190 = load i64, i64* %14, align 8
  %191 = call i32 @sprintf(i8* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %190)
  store i32 %191, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %192

192:                                              ; preds = %188, %81, %75, %37
  %193 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.fam15h_power_data* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read_registers(%struct.fam15h_power_data*) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
