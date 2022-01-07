; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_trigger.c_st_sensors_allocate_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_trigger.c_st_sensors_allocate_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32 }
%struct.iio_trigger_ops = type { i32 }
%struct.st_sensor_data = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, %struct.iio_trigger_ops* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s-trigger\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate iio trigger.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [96 x i8] c"falling/low specified for IRQ but hardware supports only rising/high: will request rising/high\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"interrupts on the falling edge or active low level\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"interrupts on the rising edge\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"interrupts active high level\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"unsupported IRQ trigger specified (%lx), enforce rising edge\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@st_sensors_irq_handler = common dso_local global i32 0, align 4
@st_sensors_irq_thread = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to request trigger IRQ.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to register iio trigger.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_allocate_trigger(%struct.iio_dev* %0, %struct.iio_trigger_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_trigger_ops*, align 8
  %6 = alloca %struct.st_sensor_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_trigger_ops* %1, %struct.iio_trigger_ops** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.st_sensor_data* %10, %struct.st_sensor_data** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_16__* @iio_trigger_alloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %16 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %15, i32 0, i32 1
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %16, align 8
  %17 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %18 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = icmp eq %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 1
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %193

27:                                               ; preds = %2
  %28 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %29 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %32 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_16__* %30, %struct.iio_dev* %31)
  %33 = load %struct.iio_trigger_ops*, %struct.iio_trigger_ops** %5, align 8
  %34 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %35 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  store %struct.iio_trigger_ops* %33, %struct.iio_trigger_ops** %37, align 8
  %38 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %39 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %42 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %47 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @irq_get_irq_data(i32 %48)
  %50 = call i64 @irqd_get_trigger_type(i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  switch i64 %51, label %103 [
    i64 131, label %52
    i64 129, label %52
    i64 128, label %95
    i64 130, label %99
  ]

52:                                               ; preds = %27, %27
  %53 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %54 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %53, i32 0, i32 3
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %52
  %61 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 1
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 131
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i64 128, i64* %7, align 8
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %68, 129
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i64 130, i64* %7, align 8
  br label %71

71:                                               ; preds = %70, %67
  br label %94

72:                                               ; preds = %52
  %73 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %74 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %75 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %74, i32 0, i32 3
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %81 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %80, i32 0, i32 3
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %73, i32 %79, i32 %85, i32 1)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %187

90:                                               ; preds = %72
  %91 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 1
  %93 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %71
  br label %108

95:                                               ; preds = %27
  %96 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 1
  %98 = call i32 @dev_info(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %108

99:                                               ; preds = %27
  %100 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 1
  %102 = call i32 @dev_info(i32* %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %108

103:                                              ; preds = %27
  %104 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 1
  %106 = load i64, i64* %7, align 8
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %106)
  store i64 128, i64* %7, align 8
  br label %108

108:                                              ; preds = %103, %99, %95, %94
  %109 = load i64, i64* %7, align 8
  %110 = icmp eq i64 %109, 131
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %7, align 8
  %113 = icmp eq i64 %112, 128
  br i1 %113, label %114, label %117

114:                                              ; preds = %111, %108
  %115 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %116 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %121

117:                                              ; preds = %111
  %118 = load i64, i64* @IRQF_ONESHOT, align 8
  %119 = load i64, i64* %7, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %123 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %128 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %127, i32 0, i32 3
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i64, i64* @IRQF_SHARED, align 8
  %137 = load i64, i64* %7, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %135, %126, %121
  %140 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %141 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @st_sensors_irq_handler, align 4
  %144 = load i32, i32* @st_sensors_irq_thread, align 4
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %147 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %146, i32 0, i32 1
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %152 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %151, i32 0, i32 1
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = call i32 @request_threaded_irq(i32 %142, i32 %143, i32 %144, i64 %145, i32 %150, %struct.TYPE_16__* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %139
  %158 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %159 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %158, i32 0, i32 1
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %187

161:                                              ; preds = %139
  %162 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %163 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %162, i32 0, i32 1
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = call i32 @iio_trigger_register(%struct.TYPE_16__* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %170 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %169, i32 0, i32 1
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %179

172:                                              ; preds = %161
  %173 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %174 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %173, i32 0, i32 1
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = call i32 @iio_trigger_get(%struct.TYPE_16__* %175)
  %177 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %178 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  store i32 0, i32* %3, align 4
  br label %193

179:                                              ; preds = %168
  %180 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %181 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %184 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %183, i32 0, i32 1
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = call i32 @free_irq(i32 %182, %struct.TYPE_16__* %185)
  br label %187

187:                                              ; preds = %179, %157, %89
  %188 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %189 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %188, i32 0, i32 1
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = call i32 @iio_trigger_free(%struct.TYPE_16__* %190)
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %187, %172, %21
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_16__* @iio_trigger_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_16__*, %struct.iio_dev*) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @st_sensors_write_data_with_mask(%struct.iio_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i64, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_16__*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_16__*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @iio_trigger_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
