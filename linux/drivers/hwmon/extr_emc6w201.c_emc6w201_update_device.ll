; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_emc6w201_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_emc6w201_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emc6w201_data = type { i32, i32, i64, i8***, i8***, i8***, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@input = common dso_local global i64 0, align 8
@min = common dso_local global i64 0, align 8
@max = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.emc6w201_data* (%struct.device*)* @emc6w201_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.emc6w201_data* @emc6w201_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.emc6w201_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.emc6w201_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.emc6w201_data* %7, %struct.emc6w201_data** %3, align 8
  %8 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %9 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %8, i32 0, i32 6
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %12 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %16 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %24 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %161, label %27

27:                                               ; preds = %22, %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %71, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 6
  br i1 %30, label %31, label %74

31:                                               ; preds = %28
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @EMC6W201_REG_IN(i32 %33)
  %35 = call i8* @emc6w201_read8(%struct.i2c_client* %32, i32 %34)
  %36 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %37 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %36, i32 0, i32 5
  %38 = load i8***, i8**** %37, align 8
  %39 = load i64, i64* @input, align 8
  %40 = getelementptr inbounds i8**, i8*** %38, i64 %39
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %35, i8** %44, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @EMC6W201_REG_IN_LOW(i32 %46)
  %48 = call i8* @emc6w201_read8(%struct.i2c_client* %45, i32 %47)
  %49 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %50 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %49, i32 0, i32 5
  %51 = load i8***, i8**** %50, align 8
  %52 = load i64, i64* @min, align 8
  %53 = getelementptr inbounds i8**, i8*** %51, i64 %52
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %48, i8** %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @EMC6W201_REG_IN_HIGH(i32 %59)
  %61 = call i8* @emc6w201_read8(%struct.i2c_client* %58, i32 %60)
  %62 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %63 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %62, i32 0, i32 5
  %64 = load i8***, i8**** %63, align 8
  %65 = load i64, i64* @max, align 8
  %66 = getelementptr inbounds i8**, i8*** %64, i64 %65
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %61, i8** %70, align 8
  br label %71

71:                                               ; preds = %31
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %28

74:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %118, %74
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 6
  br i1 %77, label %78, label %121

78:                                               ; preds = %75
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @EMC6W201_REG_TEMP(i32 %80)
  %82 = call i8* @emc6w201_read8(%struct.i2c_client* %79, i32 %81)
  %83 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %84 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %83, i32 0, i32 4
  %85 = load i8***, i8**** %84, align 8
  %86 = load i64, i64* @input, align 8
  %87 = getelementptr inbounds i8**, i8*** %85, i64 %86
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %82, i8** %91, align 8
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @EMC6W201_REG_TEMP_LOW(i32 %93)
  %95 = call i8* @emc6w201_read8(%struct.i2c_client* %92, i32 %94)
  %96 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %97 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %96, i32 0, i32 4
  %98 = load i8***, i8**** %97, align 8
  %99 = load i64, i64* @min, align 8
  %100 = getelementptr inbounds i8**, i8*** %98, i64 %99
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  store i8* %95, i8** %104, align 8
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @EMC6W201_REG_TEMP_HIGH(i32 %106)
  %108 = call i8* @emc6w201_read8(%struct.i2c_client* %105, i32 %107)
  %109 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %110 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %109, i32 0, i32 4
  %111 = load i8***, i8**** %110, align 8
  %112 = load i64, i64* @max, align 8
  %113 = getelementptr inbounds i8**, i8*** %111, i64 %112
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %108, i8** %117, align 8
  br label %118

118:                                              ; preds = %78
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %75

121:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %152, %121
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 5
  br i1 %124, label %125, label %155

125:                                              ; preds = %122
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @EMC6W201_REG_FAN(i32 %127)
  %129 = call i8* @emc6w201_read16(%struct.i2c_client* %126, i32 %128)
  %130 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %131 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %130, i32 0, i32 3
  %132 = load i8***, i8**** %131, align 8
  %133 = load i64, i64* @input, align 8
  %134 = getelementptr inbounds i8**, i8*** %132, i64 %133
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  store i8* %129, i8** %138, align 8
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @EMC6W201_REG_FAN_MIN(i32 %140)
  %142 = call i8* @emc6w201_read16(%struct.i2c_client* %139, i32 %141)
  %143 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %144 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %143, i32 0, i32 3
  %145 = load i8***, i8**** %144, align 8
  %146 = load i64, i64* @min, align 8
  %147 = getelementptr inbounds i8**, i8*** %145, i64 %146
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %142, i8** %151, align 8
  br label %152

152:                                              ; preds = %125
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %122

155:                                              ; preds = %122
  %156 = load i64, i64* @jiffies, align 8
  %157 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %158 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  %159 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %160 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %155, %22
  %162 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  %163 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %162, i32 0, i32 1
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.emc6w201_data*, %struct.emc6w201_data** %3, align 8
  ret %struct.emc6w201_data* %165
}

declare dso_local %struct.emc6w201_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i8* @emc6w201_read8(%struct.i2c_client*, i32) #1

declare dso_local i32 @EMC6W201_REG_IN(i32) #1

declare dso_local i32 @EMC6W201_REG_IN_LOW(i32) #1

declare dso_local i32 @EMC6W201_REG_IN_HIGH(i32) #1

declare dso_local i32 @EMC6W201_REG_TEMP(i32) #1

declare dso_local i32 @EMC6W201_REG_TEMP_LOW(i32) #1

declare dso_local i32 @EMC6W201_REG_TEMP_HIGH(i32) #1

declare dso_local i8* @emc6w201_read16(%struct.i2c_client*, i32) #1

declare dso_local i32 @EMC6W201_REG_FAN(i32) #1

declare dso_local i32 @EMC6W201_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
