; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_new_client_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_new_client_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, %struct.TYPE_5__, %struct.i2c_adapter*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid %d-bit I2C address 0x%02hx\0A\00", align 1
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@i2c_bus_type = common dso_local global i32 0, align 4
@i2c_client_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to add properties to client %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"client [%s] registered with bus id %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to register i2c client %s at 0x%02x (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.i2c_client* @kzalloc(i32 72, i32 %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = icmp ne %struct.i2c_client* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.i2c_client* @ERR_PTR(i32 %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %3, align 8
  br label %197

16:                                               ; preds = %2
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 4
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %19, align 8
  %20 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 8
  %26 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %16
  %46 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @i2c_dev_irq_from_resources(i32 %48, i32 %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 5
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %16
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strlcpy(i32 %58, i32 %61, i32 4)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @i2c_check_addr_validity(i32 %65, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %55
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %73, i32 0, i32 0
  %75 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 10, i32 7
  %83 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85)
  br label %192

87:                                               ; preds = %55
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %89 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %90 = call i32 @i2c_encode_flags_to_addr(%struct.i2c_client* %89)
  %91 = call i32 @i2c_check_addr_busy(%struct.i2c_adapter* %88, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %181

95:                                               ; preds = %87
  %96 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 4
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %97, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %98, i32 0, i32 0
  %100 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  store i32* %99, i32** %102, align 8
  %103 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  store i32* @i2c_bus_type, i32** %105, align 8
  %106 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i32* @i2c_client_type, i32** %108, align 8
  %109 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %110 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @of_node_get(i32 %111)
  %113 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %117 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %123 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %124 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %125 = call i32 @i2c_dev_set_name(%struct.i2c_adapter* %122, %struct.i2c_client* %123, %struct.i2c_board_info* %124)
  %126 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %127 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %95
  %131 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 3
  %133 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %134 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_add_properties(%struct.TYPE_5__* %132, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %130
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  %142 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %145)
  br label %176

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147, %95
  %149 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 3
  %151 = call i32 @device_register(%struct.TYPE_5__* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %166

155:                                              ; preds = %148
  %156 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %156, i32 0, i32 0
  %158 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 3
  %163 = call i32 @dev_name(%struct.TYPE_5__* %162)
  %164 = call i32 @dev_dbg(i32* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %163)
  %165 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %165, %struct.i2c_client** %3, align 8
  br label %197

166:                                              ; preds = %154
  %167 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %168 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 3
  %174 = call i32 @device_remove_properties(%struct.TYPE_5__* %173)
  br label %175

175:                                              ; preds = %171, %166
  br label %176

176:                                              ; preds = %175, %139
  %177 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %178 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @of_node_put(i32 %179)
  br label %181

181:                                              ; preds = %176, %94
  %182 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %182, i32 0, i32 0
  %184 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %183, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %186, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %181, %72
  %193 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %194 = call i32 @kfree(%struct.i2c_client* %193)
  %195 = load i32, i32* %7, align 4
  %196 = call %struct.i2c_client* @ERR_PTR(i32 %195)
  store %struct.i2c_client* %196, %struct.i2c_client** %3, align 8
  br label %197

197:                                              ; preds = %192, %155, %12
  %198 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  ret %struct.i2c_client* %198
}

declare dso_local %struct.i2c_client* @kzalloc(i32, i32) #1

declare dso_local %struct.i2c_client* @ERR_PTR(i32) #1

declare dso_local i64 @i2c_dev_irq_from_resources(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @i2c_check_addr_validity(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @i2c_check_addr_busy(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_encode_flags_to_addr(%struct.i2c_client*) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @i2c_dev_set_name(%struct.i2c_adapter*, %struct.i2c_client*, %struct.i2c_board_info*) #1

declare dso_local i32 @device_add_properties(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @device_remove_properties(%struct.TYPE_5__*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
