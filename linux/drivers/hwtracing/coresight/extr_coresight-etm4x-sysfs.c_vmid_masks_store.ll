; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_vmid_masks_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_vmid_masks_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i64, i32* }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%lx %lx\00", align 1
@ETMv4_EVENT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @vmid_masks_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmid_masks_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %24 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %25 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %30 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %4
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %164

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %13, i64* %14)
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %164

43:                                               ; preds = %36
  %44 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %45 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %44, i32 0, i32 1
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %48 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %100 [
    i32 1, label %50
    i32 2, label %55
    i32 3, label %60
    i32 4, label %65
    i32 5, label %69
    i32 6, label %77
    i32 7, label %85
    i32 8, label %93
  ]

50:                                               ; preds = %43
  %51 = load i64, i64* %13, align 8
  %52 = and i64 %51, 255
  %53 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %54 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %101

55:                                               ; preds = %43
  %56 = load i64, i64* %13, align 8
  %57 = and i64 %56, 65535
  %58 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %59 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %101

60:                                               ; preds = %43
  %61 = load i64, i64* %13, align 8
  %62 = and i64 %61, 16777215
  %63 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %64 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %101

65:                                               ; preds = %43
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %68 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %101

69:                                               ; preds = %43
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %72 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %14, align 8
  %74 = and i64 %73, 255
  %75 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %76 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %101

77:                                               ; preds = %43
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %80 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %14, align 8
  %82 = and i64 %81, 65535
  %83 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %84 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %101

85:                                               ; preds = %43
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %88 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %14, align 8
  %90 = and i64 %89, 16777215
  %91 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %92 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %101

93:                                               ; preds = %43
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %96 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %99 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %101

100:                                              ; preds = %43
  br label %101

101:                                              ; preds = %100, %93, %85, %77, %69, %65, %60, %55, %50
  %102 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %103 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %156, %101
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %108 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %159

111:                                              ; preds = %105
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* @ETMv4_EVENT_MASK, align 8
  %114 = and i64 %112, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %142, %111
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 8
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %124, 8
  %126 = zext i32 %125 to i64
  %127 = shl i64 255, %126
  %128 = xor i64 %127, -1
  %129 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %130 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = and i64 %136, %128
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  br label %139

139:                                              ; preds = %123, %119
  %140 = load i32, i32* %12, align 4
  %141 = ashr i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %116

145:                                              ; preds = %116
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.etmv4_config*, %struct.etmv4_config** %17, align 8
  %150 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %15, align 8
  br label %155

152:                                              ; preds = %145
  %153 = load i64, i64* %15, align 8
  %154 = lshr i64 %153, 8
  store i64 %154, i64* %15, align 8
  br label %155

155:                                              ; preds = %152, %148
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %105

159:                                              ; preds = %105
  %160 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %16, align 8
  %161 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %160, i32 0, i32 1
  %162 = call i32 @spin_unlock(i32* %161)
  %163 = load i64, i64* %9, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %159, %40, %33
  %165 = load i64, i64* %5, align 8
  ret i64 %165
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
