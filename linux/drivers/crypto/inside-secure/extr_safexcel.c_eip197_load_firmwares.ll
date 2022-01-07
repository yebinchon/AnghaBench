; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_load_firmwares.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_load_firmwares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ifpp.bin\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ipue.bin\00", align 1
@__const.eip197_load_firmwares.fw_name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)], align 16
@FW_NB = common dso_local global i32 0, align 4
@EIP197D_MRVL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"eip197d\00", align 1
@EIP197B_MRVL = common dso_local global i64 0, align 8
@EIP197_DEVBRD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"eip197b\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"inside-secure/%s/%s\00", align 1
@FW_IFPP = common dso_local global i64 0, align 8
@EIP197_PE_ICE_RAM_CTRL_PUE_PROG_EN = common dso_local global i32 0, align 4
@FW_IPUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Firmware loaded successfully\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Firmware set not (fully) present or init failed, falling back to BCLA mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"eip197_minifw\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Firmware load failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*)* @eip197_load_firmwares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eip197_load_firmwares(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [37 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  %17 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x i8*]* @__const.eip197_load_firmwares.fw_name to i8*), i64 16, i1 false)
  %18 = load i32, i32* @FW_NB, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca %struct.firmware*, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %23 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EIP197D_MRVL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %45

28:                                               ; preds = %1
  %29 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %30 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EIP197B_MRVL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %36 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EIP197_DEVBRD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %173

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %162, %45
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %96, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @FW_NB, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = getelementptr inbounds [37 x i8], [37 x i8]* %7, i64 0, i64 0
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @snprintf(i8* %52, i32 37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %53, i8* %57)
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.firmware*, %struct.firmware** %21, i64 %60
  %62 = getelementptr inbounds [37 x i8], [37 x i8]* %7, i64 0, i64 0
  %63 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %64 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @firmware_request_nowarn(%struct.firmware** %61, i8* %62, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %51
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %74 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @EIP197B_MRVL, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %69
  br label %145

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.firmware*, %struct.firmware** %21, i64 %81
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %88 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @firmware_request_nowarn(%struct.firmware** %82, i8* %86, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %145

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %51
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %47

99:                                               ; preds = %47
  %100 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %101 = call i32 @eip197_init_firmware(%struct.safexcel_crypto_priv* %100)
  %102 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %103 = load i64, i64* @FW_IFPP, align 8
  %104 = getelementptr inbounds %struct.firmware*, %struct.firmware** %21, i64 %103
  %105 = load %struct.firmware*, %struct.firmware** %104, align 8
  %106 = call i32 @eip197_write_firmware(%struct.safexcel_crypto_priv* %102, %struct.firmware* %105)
  store i32 %106, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %122, %99
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %110 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %107
  %115 = load i32, i32* @EIP197_PE_ICE_RAM_CTRL_PUE_PROG_EN, align 4
  %116 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %117 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %116)
  %118 = load i32, i32* %12, align 4
  %119 = call i64 @EIP197_PE_ICE_RAM_CTRL(i32 %118)
  %120 = add nsw i64 %117, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %107

125:                                              ; preds = %107
  %126 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %127 = load i64, i64* @FW_IPUE, align 8
  %128 = getelementptr inbounds %struct.firmware*, %struct.firmware** %21, i64 %127
  %129 = load %struct.firmware*, %struct.firmware** %128, align 8
  %130 = call i32 @eip197_write_firmware(%struct.safexcel_crypto_priv* %126, %struct.firmware* %129)
  store i32 %130, i32* %13, align 4
  %131 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i64 @eip197_start_firmware(%struct.safexcel_crypto_priv* %131, i32 %132, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %125
  %138 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %139 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dev_dbg(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %173

142:                                              ; preds = %125
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %142, %93, %78
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %156, %145
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.firmware*, %struct.firmware** %21, i64 %152
  %154 = load %struct.firmware*, %struct.firmware** %153, align 8
  %155 = call i32 @release_firmware(%struct.firmware* %154)
  br label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %146

159:                                              ; preds = %146
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %164 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dev_dbg(i32 %165, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* %15, align 4
  br label %46

167:                                              ; preds = %159
  %168 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %169 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_dbg(i32 %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %173

173:                                              ; preds = %167, %137, %41
  %174 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #3

declare dso_local i32 @firmware_request_nowarn(%struct.firmware**, i8*, i32) #3

declare dso_local i32 @eip197_init_firmware(%struct.safexcel_crypto_priv*) #3

declare dso_local i32 @eip197_write_firmware(%struct.safexcel_crypto_priv*, %struct.firmware*) #3

declare dso_local i32 @writel(i32, i64) #3

declare dso_local i64 @EIP197_PE(%struct.safexcel_crypto_priv*) #3

declare dso_local i64 @EIP197_PE_ICE_RAM_CTRL(i32) #3

declare dso_local i64 @eip197_start_firmware(%struct.safexcel_crypto_priv*, i32, i32, i32) #3

declare dso_local i32 @dev_dbg(i32, i8*) #3

declare dso_local i32 @release_firmware(%struct.firmware*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
