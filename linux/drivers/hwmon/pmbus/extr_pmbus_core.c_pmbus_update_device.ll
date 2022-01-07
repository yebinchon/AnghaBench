; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pmbus_status = type { i32, i32, i32 }
%struct.pmbus_data = type { i32, i32, i64, %struct.pmbus_sensor*, i8**, i8* (%struct.i2c_client*, i32)*, %struct.pmbus_driver_info* }
%struct.pmbus_sensor = type { i32, i32, i32, i64, %struct.pmbus_sensor* }
%struct.i2c_client = type opaque
%struct.pmbus_driver_info = type { i32, i32* }
%struct.device = type { i32 }
%struct.i2c_client.0 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PB_STATUS_BASE = common dso_local global i32 0, align 4
@pmbus_status = common dso_local global %struct._pmbus_status* null, align 8
@PMBUS_HAVE_STATUS_INPUT = common dso_local global i32 0, align 4
@PMBUS_STATUS_INPUT = common dso_local global i32 0, align 4
@PB_STATUS_INPUT_BASE = common dso_local global i64 0, align 8
@PMBUS_HAVE_STATUS_VMON = common dso_local global i32 0, align 4
@PMBUS_VIRT_STATUS_VMON = common dso_local global i32 0, align 4
@PB_STATUS_VMON_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmbus_data* (%struct.device*)* @pmbus_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmbus_data* @pmbus_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client.0*, align 8
  %4 = alloca %struct.pmbus_data*, align 8
  %5 = alloca %struct.pmbus_driver_info*, align 8
  %6 = alloca %struct.pmbus_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._pmbus_status*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i2c_client.0* @to_i2c_client(i32 %12)
  store %struct.i2c_client.0* %13, %struct.i2c_client.0** %3, align 8
  %14 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %15 = call %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client.0* %14)
  store %struct.pmbus_data* %15, %struct.pmbus_data** %4, align 8
  %16 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %17 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %16, i32 0, i32 6
  %18 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %17, align 8
  store %struct.pmbus_driver_info* %18, %struct.pmbus_driver_info** %5, align 8
  %19 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %20 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %24 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @time_after(i64 %22, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %32 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %182, label %35

35:                                               ; preds = %30, %1
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %102, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %39 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %36
  %43 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %44 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %43, i32 0, i32 5
  %45 = load i8* (%struct.i2c_client*, i32)*, i8* (%struct.i2c_client*, i32)** %44, align 8
  %46 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %47 = bitcast %struct.i2c_client.0* %46 to %struct.i2c_client*
  %48 = load i32, i32* %7, align 4
  %49 = call i8* %45(%struct.i2c_client* %47, i32 %48)
  %50 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %51 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %50, i32 0, i32 4
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* @PB_STATUS_BASE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  store i8* %49, i8** %57, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %98, %42
  %59 = load i32, i32* %8, align 4
  %60 = load %struct._pmbus_status*, %struct._pmbus_status** @pmbus_status, align 8
  %61 = call i32 @ARRAY_SIZE(%struct._pmbus_status* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %58
  %64 = load %struct._pmbus_status*, %struct._pmbus_status** @pmbus_status, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct._pmbus_status, %struct._pmbus_status* %64, i64 %66
  store %struct._pmbus_status* %67, %struct._pmbus_status** %9, align 8
  %68 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %69 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct._pmbus_status*, %struct._pmbus_status** %9, align 8
  %76 = getelementptr inbounds %struct._pmbus_status, %struct._pmbus_status* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %63
  br label %98

81:                                               ; preds = %63
  %82 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct._pmbus_status*, %struct._pmbus_status** %9, align 8
  %85 = getelementptr inbounds %struct._pmbus_status, %struct._pmbus_status* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @_pmbus_read_byte_data(%struct.i2c_client.0* %82, i32 %83, i32 %86)
  %88 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %89 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %88, i32 0, i32 4
  %90 = load i8**, i8*** %89, align 8
  %91 = load %struct._pmbus_status*, %struct._pmbus_status** %9, align 8
  %92 = getelementptr inbounds %struct._pmbus_status, %struct._pmbus_status* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %90, i64 %96
  store i8* %87, i8** %97, align 8
  br label %98

98:                                               ; preds = %81, %80
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %58

101:                                              ; preds = %58
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %36

105:                                              ; preds = %36
  %106 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %107 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PMBUS_HAVE_STATUS_INPUT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %105
  %115 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %116 = load i32, i32* @PMBUS_STATUS_INPUT, align 4
  %117 = call i8* @_pmbus_read_byte_data(%struct.i2c_client.0* %115, i32 0, i32 %116)
  %118 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %119 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %118, i32 0, i32 4
  %120 = load i8**, i8*** %119, align 8
  %121 = load i64, i64* @PB_STATUS_INPUT_BASE, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8* %117, i8** %122, align 8
  br label %123

123:                                              ; preds = %114, %105
  %124 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %125 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PMBUS_HAVE_STATUS_VMON, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %134 = load i32, i32* @PMBUS_VIRT_STATUS_VMON, align 4
  %135 = call i8* @_pmbus_read_byte_data(%struct.i2c_client.0* %133, i32 0, i32 %134)
  %136 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %137 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %136, i32 0, i32 4
  %138 = load i8**, i8*** %137, align 8
  %139 = load i64, i64* @PB_STATUS_VMON_BASE, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8* %135, i8** %140, align 8
  br label %141

141:                                              ; preds = %132, %123
  %142 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %143 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %142, i32 0, i32 3
  %144 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %143, align 8
  store %struct.pmbus_sensor* %144, %struct.pmbus_sensor** %6, align 8
  br label %145

145:                                              ; preds = %170, %141
  %146 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %147 = icmp ne %struct.pmbus_sensor* %146, null
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  %149 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %150 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %155 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %153, %148
  %159 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %160 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %161 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %164 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @_pmbus_read_word_data(%struct.i2c_client.0* %159, i32 %162, i32 %165)
  %167 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %168 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %158, %153
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %172 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %171, i32 0, i32 4
  %173 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %172, align 8
  store %struct.pmbus_sensor* %173, %struct.pmbus_sensor** %6, align 8
  br label %145

174:                                              ; preds = %145
  %175 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %176 = call i32 @pmbus_clear_faults(%struct.i2c_client.0* %175)
  %177 = load i64, i64* @jiffies, align 8
  %178 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %179 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %181 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %174, %30
  %183 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %184 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %183, i32 0, i32 1
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  ret %struct.pmbus_data* %186
}

declare dso_local %struct.i2c_client.0* @to_i2c_client(i32) #1

declare dso_local %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client.0*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct._pmbus_status*) #1

declare dso_local i8* @_pmbus_read_byte_data(%struct.i2c_client.0*, i32, i32) #1

declare dso_local i32 @_pmbus_read_word_data(%struct.i2c_client.0*, i32, i32) #1

declare dso_local i32 @pmbus_clear_faults(%struct.i2c_client.0*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
