; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i32, i32 }
%struct.i2c_msg = type { i32, i64*, i64, i32 }

@MAX_ARG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Need to increase arg length\0A\00", align 1
@SDVO_I2C_ARG_0 = common dso_local global i64 0, align 8
@SDVO_I2C_OPCODE = common dso_local global i64 0, align 8
@SDVO_I2C_CMD_STATUS = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"I2c transfer returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"I2c transfer returned %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, i64, i8*, i32)* @psb_intel_sdvo_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_write_cmd(%struct.psb_intel_sdvo* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psb_intel_sdvo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.psb_intel_sdvo* %0, %struct.psb_intel_sdvo** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @MAX_ARG_LEN, align 4
  %18 = mul nsw i32 %17, 2
  %19 = add nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @MAX_ARG_LEN, align 4
  %24 = add nsw i32 %23, 3
  %25 = zext i32 %24 to i64
  %26 = alloca %struct.i2c_msg, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MAX_ARG_LEN, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %195

32:                                               ; preds = %4
  %33 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @psb_intel_sdvo_debug_write(%struct.psb_intel_sdvo* %33, i64 %34, i8* %35, i32 %36)
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %86, %32
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %44 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %47
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %51
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 2
  store i64 0, i64* %53, align 16
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %55
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  store i32 2, i32* %57, align 16
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %22, i64 %60
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  store i64* %61, i64** %65, align 8
  %66 = load i64, i64* @SDVO_I2C_ARG_0, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 2, %70
  %72 = add nsw i32 %71, 0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %22, i64 %73
  store i64 %69, i64* %74, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = bitcast i8* %75 to i64*
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %22, i64 %84
  store i64 %80, i64* %85, align 8
  br label %86

86:                                               ; preds = %42
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %38

89:                                               ; preds = %38
  %90 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %91 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %94
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i32 0, i32 3
  store i32 %92, i32* %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %98
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 2
  store i64 0, i64* %100, align 16
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %102
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 0
  store i32 2, i32* %104, align 16
  %105 = load i32, i32* %14, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %22, i64 %107
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %110
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 1
  store i64* %108, i64** %112, align 8
  %113 = load i64, i64* @SDVO_I2C_OPCODE, align 8
  %114 = load i32, i32* %14, align 4
  %115 = mul nsw i32 2, %114
  %116 = add nsw i32 %115, 0
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %22, i64 %117
  store i64 %113, i64* %118, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i32, i32* %14, align 4
  %121 = mul nsw i32 2, %120
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %22, i64 %123
  store i64 %119, i64* %124, align 8
  %125 = load i64, i64* @SDVO_I2C_CMD_STATUS, align 8
  store i64 %125, i64* %12, align 8
  %126 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %127 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %131
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 3
  store i32 %128, i32* %133, align 8
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %136
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 0, i32 2
  store i64 0, i64* %138, align 16
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %141
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 0
  store i32 1, i32* %143, align 16
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %146
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 1
  store i64* %12, i64** %148, align 8
  %149 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %150 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %154
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i32 0, i32 3
  store i32 %151, i32* %156, align 8
  %157 = load i64, i64* @I2C_M_RD, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %160
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 2
  store i64 %157, i64* %162, align 16
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %165
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i32 0, i32 0
  store i32 1, i32* %167, align 16
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %170
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i32 0, i32 1
  store i64* %12, i64** %172, align 8
  %173 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %174 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 3
  %178 = call i32 @i2c_transfer(i32 %175, %struct.i2c_msg* %26, i32 %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %89
  %182 = load i32, i32* %15, align 4
  %183 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %195

184:                                              ; preds = %89
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 3
  %188 = icmp ne i32 %185, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 3
  %193 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %192)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %195

194:                                              ; preds = %184
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %195

195:                                              ; preds = %194, %189, %181, %30
  %196 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i32 @psb_intel_sdvo_debug_write(%struct.psb_intel_sdvo*, i64, i8*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
