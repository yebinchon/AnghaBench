; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_dump_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_dump_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etb_drvdata = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ETB_RAM_READ_POINTER = common dso_local global i64 0, align 8
@ETB_RAM_WRITE_POINTER = common dso_local global i64 0, align 8
@ETB_FRAME_SIZE_WORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"write_ptr: %lu not aligned to formatter frame size\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"frameoff: %lu, frame_endoff: %lu\0A\00", align 1
@ETB_STATUS_REG = common dso_local global i64 0, align 8
@ETB_STATUS_RAM_FULL = common dso_local global i32 0, align 4
@ETB_RAM_READ_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etb_drvdata*)* @etb_dump_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etb_dump_hw(%struct.etb_drvdata* %0) #0 {
  %2 = alloca %struct.etb_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  store %struct.etb_drvdata* %0, %struct.etb_drvdata** %2, align 8
  store i32 0, i32* %3, align 4
  %13 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %14 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %12, align 8
  %17 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %18 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @CS_UNLOCK(i64 %19)
  %21 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %22 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %28 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ETB_RAM_WRITE_POINTER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %1
  %42 = load %struct.device*, %struct.device** %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.device*, %struct.device** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %41, %1
  %56 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %57 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ETB_STATUS_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl_relaxed(i64 %60)
  %62 = load i32, i32* @ETB_STATUS_RAM_FULL, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %67 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i32 0, i64 %70)
  br label %80

72:                                               ; preds = %55
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %75 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 %73, i64 %78)
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %82 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %7, align 4
  %84 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %85 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %102, %80
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %93 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ETB_RAM_READ_DATA_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @readl_relaxed(i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32* %101, i32** %5, align 8
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %87

105:                                              ; preds = %87
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %110 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @coresight_insert_barrier_packet(i32* %111)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %117, 4
  %119 = load i32*, i32** %5, align 8
  %120 = sext i32 %118 to i64
  %121 = sub i64 0, %120
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32* %122, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %136, %116
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %5, align 8
  store i32 0, i32* %128, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %5, align 8
  store i32 0, i32* %130, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %5, align 8
  store i32 0, i32* %132, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %5, align 8
  store i32 0, i32* %134, align 4
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %123

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139, %113
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %143 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel_relaxed(i32 %141, i64 %146)
  %148 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %149 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @CS_LOCK(i64 %150)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @coresight_insert_barrier_packet(i32*) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
