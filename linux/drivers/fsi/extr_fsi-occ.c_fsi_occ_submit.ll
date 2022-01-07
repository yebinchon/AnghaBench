; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_fsi_occ_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_fsi_occ_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.occ = type { i32, i32 }
%struct.occ_response = type { i64, %struct.occ_response*, i32, i32 }

@OCC_TIMEOUT_MS = common dso_local global i32 0, align 4
@OCC_CMD_IN_PRG_WAIT_MS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Bad resplen %zd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCC_SRAM_CMD_ADDR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@OCC_SRAM_RSP_ADDR = common dso_local global i64 0, align 8
@OCC_RESP_CMD_IN_PRG = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"resp timeout status=%02x resp seq_no=%d our seq_no=%d\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"resp_status=%02x resp_data_len=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsi_occ_submit(%struct.device* %0, i8* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.occ*, align 8
  %15 = alloca %struct.occ_response*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load i32, i32* @OCC_TIMEOUT_MS, align 4
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* @OCC_CMD_IN_PRG_WAIT_MS, align 4
  %23 = call i64 @msecs_to_jiffies(i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call %struct.occ* @dev_get_drvdata(%struct.device* %24)
  store %struct.occ* %25, %struct.occ** %14, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.occ_response*
  store %struct.occ_response* %27, %struct.occ_response** %15, align 8
  %28 = load %struct.occ*, %struct.occ** %14, align 8
  %29 = icmp ne %struct.occ* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %168

33:                                               ; preds = %5
  %34 = load i64*, i64** %11, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %35, 7
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %168

44:                                               ; preds = %33
  %45 = load %struct.occ*, %struct.occ** %14, align 8
  %46 = getelementptr inbounds %struct.occ, %struct.occ* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %16, align 8
  %51 = load %struct.occ*, %struct.occ** %14, align 8
  %52 = load i32, i32* @OCC_SRAM_CMD_ADDR, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @occ_putsram(%struct.occ* %51, i32 %52, i8* %53, i64 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %163

59:                                               ; preds = %44
  %60 = load %struct.occ*, %struct.occ** %14, align 8
  %61 = call i32 @occ_trigger_attn(%struct.occ* %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %163

65:                                               ; preds = %59
  %66 = load i64, i64* @jiffies, align 8
  store i64 %66, i64* %18, align 8
  br label %67

67:                                               ; preds = %114, %65
  %68 = load %struct.occ*, %struct.occ** %14, align 8
  %69 = load i64, i64* @OCC_SRAM_RSP_ADDR, align 8
  %70 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %71 = call i32 @occ_getsram(%struct.occ* %68, i64 %69, %struct.occ_response* %70, i32 8)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %163

75:                                               ; preds = %67
  %76 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %77 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @OCC_RESP_CMD_IN_PRG, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %83 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %19, align 4
  %90 = load i64, i64* @jiffies, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %91, %92
  %94 = call i64 @time_after(i64 %90, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %87
  %97 = load %struct.occ*, %struct.occ** %14, align 8
  %98 = getelementptr inbounds %struct.occ, %struct.occ* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %101 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %104 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %102, i64 %105, i64 %106)
  br label %163

108:                                              ; preds = %87
  %109 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %110 = call i32 @set_current_state(i32 %109)
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @schedule_timeout(i64 %111)
  br label %113

113:                                              ; preds = %108, %81
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %19, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %67, label %117

117:                                              ; preds = %114
  %118 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %119 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %118, i32 0, i32 3
  %120 = call i32 @get_unaligned_be16(i32* %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 7
  %123 = sext i32 %122 to i64
  %124 = load i64*, i64** %11, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ugt i64 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i32, i32* @EMSGSIZE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %19, align 4
  br label %163

130:                                              ; preds = %117
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %133 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* %17, align 4
  %137 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %135, i32 %136)
  %138 = load i32, i32* %17, align 4
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %155

140:                                              ; preds = %130
  %141 = load %struct.occ*, %struct.occ** %14, align 8
  %142 = load i64, i64* @OCC_SRAM_RSP_ADDR, align 8
  %143 = add nsw i64 %142, 8
  %144 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %145 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %144, i32 0, i32 1
  %146 = load %struct.occ_response*, %struct.occ_response** %145, align 8
  %147 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %146, i64 3
  %148 = load i32, i32* %17, align 4
  %149 = sub nsw i32 %148, 1
  %150 = call i32 @occ_getsram(%struct.occ* %141, i64 %143, %struct.occ_response* %147, i32 %149)
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %163

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %130
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 7
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %11, align 8
  store i64 %158, i64* %159, align 8
  %160 = load %struct.occ_response*, %struct.occ_response** %15, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @occ_verify_checksum(%struct.occ_response* %160, i32 %161)
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %155, %153, %127, %96, %74, %64, %58
  %164 = load %struct.occ*, %struct.occ** %14, align 8
  %165 = getelementptr inbounds %struct.occ, %struct.occ* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i32, i32* %19, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %163, %37, %30
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.occ* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @occ_putsram(%struct.occ*, i32, i8*, i64) #1

declare dso_local i32 @occ_trigger_attn(%struct.occ*) #1

declare dso_local i32 @occ_getsram(%struct.occ*, i64, %struct.occ_response*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @occ_verify_checksum(%struct.occ_response*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
