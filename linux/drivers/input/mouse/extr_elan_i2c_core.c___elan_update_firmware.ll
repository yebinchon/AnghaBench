; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c___elan_update_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c___elan_update_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32, %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*, i32*)*, i32 (%struct.i2c_client*, i32, i32*)* }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32* }

@ETP_IAP_START_ADDR = common dso_local global i32 0, align 4
@ETP_FW_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"write page %d fail: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"checksum diff sw=[%04X], fw=[%04X]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*, %struct.firmware*)* @__elan_update_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__elan_update_firmware(%struct.elan_tp_data* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elan_tp_data*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %17 = load %struct.elan_tp_data*, %struct.elan_tp_data** %4, align 8
  %18 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %17, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.elan_tp_data*, %struct.elan_tp_data** %4, align 8
  %23 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %25, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = call i32 %26(%struct.i2c_client* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %145

33:                                               ; preds = %2
  %34 = load %struct.firmware*, %struct.firmware** %5, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @ETP_IAP_START_ADDR, align 4
  %38 = mul nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i32 @get_unaligned_le16(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %42, 2
  %44 = load i32, i32* @ETP_FW_PAGE_SIZE, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %103, %33
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.elan_tp_data*, %struct.elan_tp_data** %4, align 8
  %50 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  %54 = load %struct.firmware*, %struct.firmware** %5, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ETP_FW_PAGE_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %16, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %82, %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ETP_FW_PAGE_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %9, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load %struct.elan_tp_data*, %struct.elan_tp_data** %4, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @elan_write_fw_block(%struct.elan_tp_data* %86, i32* %87, i32 %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %145

99:                                               ; preds = %85
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %47

106:                                              ; preds = %47
  %107 = call i32 @msleep(i32 600)
  %108 = load %struct.elan_tp_data*, %struct.elan_tp_data** %4, align 8
  %109 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32 (%struct.i2c_client*, i32*)*, i32 (%struct.i2c_client*, i32*)** %111, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %114 = load %struct.elan_tp_data*, %struct.elan_tp_data** %4, align 8
  %115 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %114, i32 0, i32 2
  %116 = call i32 %112(%struct.i2c_client* %113, i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %145

121:                                              ; preds = %106
  %122 = load %struct.elan_tp_data*, %struct.elan_tp_data** %4, align 8
  %123 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32 (%struct.i2c_client*, i32, i32*)*, i32 (%struct.i2c_client*, i32, i32*)** %125, align 8
  %127 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %128 = call i32 %126(%struct.i2c_client* %127, i32 1, i32* %14)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %145

133:                                              ; preds = %121
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load %struct.device*, %struct.device** %7, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %145

144:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %137, %131, %119, %93, %31
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @elan_write_fw_block(%struct.elan_tp_data*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
