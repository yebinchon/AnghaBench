; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, i32, i32, %struct.etm_config }
%struct.etm_config = type { i64, i32, i32 }

@ETM_MODE_ALL = common dso_local global i64 0, align 8
@ETM_MODE_EXCLUDE = common dso_local global i32 0, align 4
@ETMTECR1_INC_EXC = common dso_local global i32 0, align 4
@ETM_MODE_CYCACC = common dso_local global i32 0, align 4
@ETMCR_CYC_ACC = common dso_local global i32 0, align 4
@ETM_MODE_STALL = common dso_local global i32 0, align 4
@ETMCCR_FIFOFULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"stall mode not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETMCR_STALL_MODE = common dso_local global i32 0, align 4
@ETM_MODE_TIMESTAMP = common dso_local global i32 0, align 4
@ETMCCER_TIMESTAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"timestamp not supported\0A\00", align 1
@ETMCR_TIMESTAMP_EN = common dso_local global i32 0, align 4
@ETM_MODE_CTXID = common dso_local global i32 0, align 4
@ETMCR_CTXID_SIZE = common dso_local global i32 0, align 4
@ETM_MODE_BBROAD = common dso_local global i32 0, align 4
@ETMCR_BRANCH_BROADCAST = common dso_local global i32 0, align 4
@ETM_MODE_RET_STACK = common dso_local global i32 0, align 4
@ETMCR_RETURN_STACK = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_KERN = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.etm_drvdata*, align 8
  %13 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %16)
  store %struct.etm_drvdata* %17, %struct.etm_drvdata** %12, align 8
  %18 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %19 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %18, i32 0, i32 3
  store %struct.etm_config* %19, %struct.etm_config** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 16, i64* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %229

26:                                               ; preds = %4
  %27 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %28 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @ETM_MODE_ALL, align 8
  %32 = and i64 %30, %31
  %33 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %34 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %36 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETM_MODE_EXCLUDE, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %37, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load i32, i32* @ETMTECR1_INC_EXC, align 4
  %44 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %45 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %26
  %49 = load i32, i32* @ETMTECR1_INC_EXC, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %52 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %57 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @ETM_MODE_CYCACC, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %58, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @ETMCR_CYC_ACC, align 4
  %65 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %66 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %76

69:                                               ; preds = %55
  %70 = load i32, i32* @ETMCR_CYC_ACC, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %73 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %63
  %77 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %78 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @ETM_MODE_STALL, align 4
  %81 = sext i32 %80 to i64
  %82 = and i64 %79, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %76
  %85 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %86 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ETMCCR_FIFOFULL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = call i32 @dev_warn(%struct.device* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %224

96:                                               ; preds = %84
  %97 = load i32, i32* @ETMCR_STALL_MODE, align 4
  %98 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %99 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %109

102:                                              ; preds = %76
  %103 = load i32, i32* @ETMCR_STALL_MODE, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %106 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %102, %96
  %110 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %111 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @ETM_MODE_TIMESTAMP, align 4
  %114 = sext i32 %113 to i64
  %115 = and i64 %112, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %109
  %118 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %119 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ETMCCER_TIMESTAMP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @dev_warn(%struct.device* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %224

129:                                              ; preds = %117
  %130 = load i32, i32* @ETMCR_TIMESTAMP_EN, align 4
  %131 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %132 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %142

135:                                              ; preds = %109
  %136 = load i32, i32* @ETMCR_TIMESTAMP_EN, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %139 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %129
  %143 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %144 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @ETM_MODE_CTXID, align 4
  %147 = sext i32 %146 to i64
  %148 = and i64 %145, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load i32, i32* @ETMCR_CTXID_SIZE, align 4
  %152 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %153 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %163

156:                                              ; preds = %142
  %157 = load i32, i32* @ETMCR_CTXID_SIZE, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %160 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %156, %150
  %164 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %165 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @ETM_MODE_BBROAD, align 4
  %168 = sext i32 %167 to i64
  %169 = and i64 %166, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = load i32, i32* @ETMCR_BRANCH_BROADCAST, align 4
  %173 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %174 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %184

177:                                              ; preds = %163
  %178 = load i32, i32* @ETMCR_BRANCH_BROADCAST, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %181 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %177, %171
  %185 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %186 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @ETM_MODE_RET_STACK, align 4
  %189 = sext i32 %188 to i64
  %190 = and i64 %187, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load i32, i32* @ETMCR_RETURN_STACK, align 4
  %194 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %195 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %205

198:                                              ; preds = %184
  %199 = load i32, i32* @ETMCR_RETURN_STACK, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %202 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %198, %192
  %206 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %207 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* @ETM_MODE_EXCL_KERN, align 4
  %210 = load i32, i32* @ETM_MODE_EXCL_USER, align 4
  %211 = or i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = and i64 %208, %212
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %205
  %216 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %217 = call i32 @etm_config_trace_mode(%struct.etm_config* %216)
  br label %218

218:                                              ; preds = %215, %205
  %219 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %220 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %219, i32 0, i32 2
  %221 = call i32 @spin_unlock(i32* %220)
  %222 = load i64, i64* %9, align 8
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %5, align 4
  br label %229

224:                                              ; preds = %124, %91
  %225 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %226 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %225, i32 0, i32 2
  %227 = call i32 @spin_unlock(i32* %226)
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %224, %218, %24
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @etm_config_trace_mode(%struct.etm_config*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
