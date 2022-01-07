; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_flash_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_flash_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Entering bootloader mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to enter bootloader mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Program & Verify, page size: %d, packet size: %d\0A\00", align 1
@MIP4_BL_PAGE_SIZE = common dso_local global i64 0, align 8
@MIP4_BL_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Exiting bootloader mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to exit bootloader mode: %d\0A\00", align 1
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*, i32*, i32, i32)* @mip4_flash_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_flash_fw(%struct.mip4_ts* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mip4_ts*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %16 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %15, i32 0, i32 5
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %22 = call i32 @mip4_bl_enter(%struct.mip4_ts* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %180

31:                                               ; preds = %4
  %32 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %33 = call i32 @mip4_bl_get_address(%struct.mip4_ts* %32, i32* %12)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %84

37:                                               ; preds = %31
  %38 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i64, i64* @MIP4_BL_PAGE_SIZE, align 8
  %41 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %77, %37
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i64, i64* @MIP4_BL_PAGE_SIZE, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @mip4_bl_program_page(%struct.mip4_ts* %51, i32 %52, i32* %56, i64 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %83

63:                                               ; preds = %50
  %64 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i64, i64* @MIP4_BL_PAGE_SIZE, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @mip4_bl_verify_page(%struct.mip4_ts* %64, i32 %65, i32* %69, i64 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %83

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* @MIP4_BL_PAGE_SIZE, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  br label %44

83:                                               ; preds = %75, %62, %44
  br label %84

84:                                               ; preds = %83, %36
  %85 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %89 = call i32 @mip4_bl_exit(%struct.mip4_ts* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %99, %92
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %104 = call i32 @mip4_power_off(%struct.mip4_ts* %103)
  %105 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %106 = call i32 @mip4_power_on(%struct.mip4_ts* %105)
  %107 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %108 = call i32 @mip4_query_device(%struct.mip4_ts* %107)
  %109 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %110 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %113 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %114 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @input_set_abs_params(i32 %111, i32 %112, i32 0, i32 %115, i32 0, i32 0)
  %117 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %118 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %121 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %122 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @input_set_abs_params(i32 %119, i32 %120, i32 0, i32 %123, i32 0, i32 0)
  %125 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %126 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ABS_X, align 4
  %129 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %130 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @input_set_abs_params(i32 %127, i32 %128, i32 0, i32 %131, i32 0, i32 0)
  %133 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %134 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ABS_Y, align 4
  %137 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %138 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @input_set_abs_params(i32 %135, i32 %136, i32 0, i32 %139, i32 0, i32 0)
  %141 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %142 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %145 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %146 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @input_abs_set_res(i32 %143, i32 %144, i32 %147)
  %149 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %150 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %153 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %154 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @input_abs_set_res(i32 %151, i32 %152, i32 %155)
  %157 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %158 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ABS_X, align 4
  %161 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %162 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @input_abs_set_res(i32 %159, i32 %160, i32 %163)
  %165 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %166 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ABS_Y, align 4
  %169 = load %struct.mip4_ts*, %struct.mip4_ts** %6, align 8
  %170 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @input_abs_set_res(i32 %167, i32 %168, i32 %171)
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %102
  %176 = load i32, i32* %13, align 4
  br label %178

177:                                              ; preds = %102
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %176, %175 ], [ 0, %177 ]
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %25
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mip4_bl_enter(%struct.mip4_ts*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mip4_bl_get_address(%struct.mip4_ts*, i32*) #1

declare dso_local i32 @mip4_bl_program_page(%struct.mip4_ts*, i32, i32*, i64, i32) #1

declare dso_local i32 @mip4_bl_verify_page(%struct.mip4_ts*, i32, i32*, i64, i32) #1

declare dso_local i32 @mip4_bl_exit(%struct.mip4_ts*) #1

declare dso_local i32 @mip4_power_off(%struct.mip4_ts*) #1

declare dso_local i32 @mip4_power_on(%struct.mip4_ts*) #1

declare dso_local i32 @mip4_query_device(%struct.mip4_ts*) #1

declare dso_local i32 @input_set_abs_params(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
