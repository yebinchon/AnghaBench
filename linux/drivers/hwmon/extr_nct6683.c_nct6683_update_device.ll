; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6683_data = type { i32, i32, i32, i32, i32, i64, i8**, i8**, i8***, i8**, i32*, i8*** }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nct6683_data* (%struct.device*)* @nct6683_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nct6683_data* @nct6683_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nct6683_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.nct6683_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.nct6683_data* %10, %struct.nct6683_data** %3, align 8
  %11 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %12 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %16 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %24 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %173, label %27

27:                                               ; preds = %22, %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %64, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %31 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @get_in_reg(%struct.nct6683_data* %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @nct6683_read(%struct.nct6683_data* %46, i32 %47)
  %49 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %50 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %49, i32 0, i32 11
  %51 = load i8***, i8**** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8**, i8*** %51, i64 %53
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %48, i8** %58, align 8
  br label %59

59:                                               ; preds = %45, %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %35

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %28

67:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %121, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %71 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %124

74:                                               ; preds = %68
  %75 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %76 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %75, i32 0, i32 10
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @NCT6683_REG_MON(i32 %83)
  %85 = call i8* @nct6683_read16(%struct.nct6683_data* %82, i32 %84)
  %86 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %87 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %86, i32 0, i32 9
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %117, %74
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %120

95:                                               ; preds = %92
  %96 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @get_temp_reg(%struct.nct6683_data* %96, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @nct6683_read(%struct.nct6683_data* %103, i32 %104)
  %106 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %107 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %106, i32 0, i32 8
  %108 = load i8***, i8**** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8**, i8*** %108, i64 %110
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  store i8* %105, i8** %115, align 8
  br label %116

116:                                              ; preds = %102, %95
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %92

120:                                              ; preds = %92
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %68

124:                                              ; preds = %68
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %162, %124
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %128 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %127, i32 0, i32 7
  %129 = load i8**, i8*** %128, align 8
  %130 = call i32 @ARRAY_SIZE(i8** %129)
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %125
  %133 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %134 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %4, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  br label %162

141:                                              ; preds = %132
  %142 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @NCT6683_REG_FAN_RPM(i32 %143)
  %145 = call i8* @nct6683_read16(%struct.nct6683_data* %142, i32 %144)
  %146 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %147 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %146, i32 0, i32 7
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %145, i8** %151, align 8
  %152 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @NCT6683_REG_FAN_MIN(i32 %153)
  %155 = call i8* @nct6683_read16(%struct.nct6683_data* %152, i32 %154)
  %156 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %157 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %156, i32 0, i32 6
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  store i8* %155, i8** %161, align 8
  br label %162

162:                                              ; preds = %141, %140
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %125

165:                                              ; preds = %125
  %166 = load %struct.device*, %struct.device** %2, align 8
  %167 = call i32 @nct6683_update_pwm(%struct.device* %166)
  %168 = load i64, i64* @jiffies, align 8
  %169 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %170 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %169, i32 0, i32 5
  store i64 %168, i64* %170, align 8
  %171 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %172 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  br label %173

173:                                              ; preds = %165, %22
  %174 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %175 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %174, i32 0, i32 4
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  ret %struct.nct6683_data* %177
}

declare dso_local %struct.nct6683_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @get_in_reg(%struct.nct6683_data*, i32, i32) #1

declare dso_local i8* @nct6683_read(%struct.nct6683_data*, i32) #1

declare dso_local i8* @nct6683_read16(%struct.nct6683_data*, i32) #1

declare dso_local i32 @NCT6683_REG_MON(i32) #1

declare dso_local i32 @get_temp_reg(%struct.nct6683_data*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @NCT6683_REG_FAN_RPM(i32) #1

declare dso_local i32 @NCT6683_REG_FAN_MIN(i32) #1

declare dso_local i32 @nct6683_update_pwm(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
