; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_ctxid_masks_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_ctxid_masks_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i64, i32* }

@current = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%lx %lx\00", align 1
@ETMv4_EVENT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ctxid_masks_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctxid_masks_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.etmv4_drvdata*, align 8
  %17 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %20)
  store %struct.etmv4_drvdata* %21, %struct.etmv4_drvdata** %16, align 8
  %22 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %23 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %22, i32 0, i32 3
  store %struct.etmv4_config* %23, %struct.etmv4_config** %17, align 8
  %24 = load i32, i32* @current, align 4
  %25 = call i32* @task_active_pid_ns(i32 %24)
  %26 = icmp ne i32* %25, @init_pid_ns
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %171

30:                                               ; preds = %4
  %31 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %32 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %37 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %30
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %171

43:                                               ; preds = %35
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %13, i64* %14)
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %171

50:                                               ; preds = %43
  %51 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %52 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %51, i32 0, i32 1
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %55 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %107 [
    i32 1, label %57
    i32 2, label %62
    i32 3, label %67
    i32 4, label %72
    i32 5, label %76
    i32 6, label %84
    i32 7, label %92
    i32 8, label %100
  ]

57:                                               ; preds = %50
  %58 = load i64, i64* %13, align 8
  %59 = and i64 %58, 255
  %60 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %61 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %108

62:                                               ; preds = %50
  %63 = load i64, i64* %13, align 8
  %64 = and i64 %63, 65535
  %65 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %66 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %108

67:                                               ; preds = %50
  %68 = load i64, i64* %13, align 8
  %69 = and i64 %68, 16777215
  %70 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %71 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %108

72:                                               ; preds = %50
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %75 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %108

76:                                               ; preds = %50
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %79 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %14, align 8
  %81 = and i64 %80, 255
  %82 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %83 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %108

84:                                               ; preds = %50
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %87 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = and i64 %88, 65535
  %90 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %91 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %108

92:                                               ; preds = %50
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %95 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %14, align 8
  %97 = and i64 %96, 16777215
  %98 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %99 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %108

100:                                              ; preds = %50
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %103 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %106 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  br label %108

107:                                              ; preds = %50
  br label %108

108:                                              ; preds = %107, %100, %92, %84, %76, %72, %67, %62, %57
  %109 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %110 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %163, %108
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %115 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %166

118:                                              ; preds = %112
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* @ETMv4_EVENT_MASK, align 8
  %121 = and i64 %119, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %149, %118
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 8
  br i1 %125, label %126, label %152

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %131, 8
  %133 = zext i32 %132 to i64
  %134 = shl i64 255, %133
  %135 = xor i64 %134, -1
  %136 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %137 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = and i64 %143, %135
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  br label %146

146:                                              ; preds = %130, %126
  %147 = load i32, i32* %12, align 4
  %148 = ashr i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %123

152:                                              ; preds = %123
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %157 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %15, align 8
  br label %162

159:                                              ; preds = %152
  %160 = load i64, i64* %15, align 8
  %161 = lshr i64 %160, 8
  store i64 %161, i64* %15, align 8
  br label %162

162:                                              ; preds = %159, %155
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %112

166:                                              ; preds = %112
  %167 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %168 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %167, i32 0, i32 1
  %169 = call i32 @spin_unlock(i32* %168)
  %170 = load i64, i64* %9, align 8
  store i64 %170, i64* %5, align 8
  br label %171

171:                                              ; preds = %166, %47, %40, %27
  %172 = load i64, i64* %5, align 8
  ret i64 %172
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32* @task_active_pid_ns(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
