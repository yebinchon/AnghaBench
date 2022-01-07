; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i32 (%struct.qib_devdata*)*, i32, i32 (%struct.qib_pportdata*, i32)*, %struct.qib_pportdata*, i32, %struct.TYPE_2__**, i32 }
%struct.qib_pportdata = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Reset on unit %u requested\0A\00", align 1
@QIB_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Invalid unit number %u or not initialized or not present\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LED_OVER_BOTH_OFF = common dso_local global i32 0, align 4
@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Reinitialize unit %u after reset failed with %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Reinitialized unit %u after resetting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_reset_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.qib_devdata* @qib_lookup(i32 %9)
  store %struct.qib_devdata* %10, %struct.qib_devdata** %5, align 8
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %12 = icmp ne %struct.qib_devdata* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %172

16:                                               ; preds = %1
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @qib_devinfo(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @QIB_PRESENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26, %16
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @qib_devinfo(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %172

41:                                               ; preds = %26
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 9
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = icmp ne %struct.TYPE_2__** %48, null
  br i1 %49, label %50, label %92

50:                                               ; preds = %41
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %88, %50
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 9
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 9
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69, %60
  br label %88

81:                                               ; preds = %69
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %83 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %82, i32 0, i32 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %172

88:                                               ; preds = %80
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %54

91:                                               ; preds = %54
  br label %92

92:                                               ; preds = %91, %41
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %140, %92
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %100 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %143

103:                                              ; preds = %97
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %105 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %104, i32 0, i32 7
  %106 = load %struct.qib_pportdata*, %struct.qib_pportdata** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %106, i64 %108
  store %struct.qib_pportdata* %109, %struct.qib_pportdata** %6, align 8
  %110 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %111 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %110, i32 0, i32 1
  %112 = call i64 @atomic_read(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %116 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %115, i32 0, i32 2
  %117 = call i32 @del_timer_sync(i32* %116)
  %118 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %119 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %118, i32 0, i32 1
  %120 = call i32 @atomic_set(i32* %119, i32 0)
  br label %121

121:                                              ; preds = %114, %103
  %122 = load i32, i32* @LED_OVER_BOTH_OFF, align 4
  %123 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %124 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %126 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %125, i32 0, i32 6
  %127 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %126, align 8
  %128 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %129 = call i32 %127(%struct.qib_pportdata* %128, i32 0)
  %130 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %131 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %121
  %137 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %138 = call i32 @qib_teardown_sdma(%struct.qib_pportdata* %137)
  br label %139

139:                                              ; preds = %136, %121
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %97

143:                                              ; preds = %97
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %145 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %144, i32 0, i32 4
  %146 = load i32 (%struct.qib_devdata*)*, i32 (%struct.qib_devdata*)** %145, align 8
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %148 = call i32 %146(%struct.qib_devdata* %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %153 = call i32 @qib_init(%struct.qib_devdata* %152, i32 1)
  store i32 %153, i32* %3, align 4
  br label %157

154:                                              ; preds = %143
  %155 = load i32, i32* @EAGAIN, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %3, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @qib_dev_err(%struct.qib_devdata* %161, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %163)
  br label %171

165:                                              ; preds = %157
  %166 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %167 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %2, align 4
  %170 = call i32 @qib_devinfo(i32 %168, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %165, %160
  br label %172

172:                                              ; preds = %171, %81, %33, %13
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.qib_devdata* @qib_lookup(i32) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qib_teardown_sdma(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_init(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
