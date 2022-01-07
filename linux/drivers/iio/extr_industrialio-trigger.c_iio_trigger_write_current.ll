; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_write_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_write_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i64, i32, i32, %struct.iio_trigger*, %struct.TYPE_3__*, i32, i64 }
%struct.iio_trigger = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.iio_trigger*, %struct.iio_dev*)* }
%struct.TYPE_3__ = type { i32 (%struct.iio_dev*, %struct.iio_trigger*)* }

@INDIO_BUFFER_TRIGGERED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@INDIO_EVENT_TRIGGERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_trigger_write_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iio_trigger_write_current(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.iio_trigger*, align 8
  %12 = alloca %struct.iio_trigger*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 3
  %18 = load %struct.iio_trigger*, %struct.iio_trigger** %17, align 8
  store %struct.iio_trigger* %18, %struct.iio_trigger** %11, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 5
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INDIO_BUFFER_TRIGGERED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 5
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i64, i64* @EBUSY, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %161

33:                                               ; preds = %4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 5
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i64, i64* @EPERM, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %161

44:                                               ; preds = %33
  %45 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 5
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = call %struct.iio_trigger* @iio_trigger_acquire_by_name(i8* %48)
  store %struct.iio_trigger* %49, %struct.iio_trigger** %12, align 8
  %50 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %51 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %52 = icmp eq %struct.iio_trigger* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  br label %152

56:                                               ; preds = %44
  %57 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %58 = icmp ne %struct.iio_trigger* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.iio_dev*, %struct.iio_trigger*)*, i32 (%struct.iio_dev*, %struct.iio_trigger*)** %63, align 8
  %65 = icmp ne i32 (%struct.iio_dev*, %struct.iio_trigger*)* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.iio_dev*, %struct.iio_trigger*)*, i32 (%struct.iio_dev*, %struct.iio_trigger*)** %70, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %73 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %74 = call i32 %71(%struct.iio_dev* %72, %struct.iio_trigger* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %152

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %59, %56
  %80 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %81 = icmp ne %struct.iio_trigger* %80, null
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %84 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %89 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.iio_trigger*, %struct.iio_dev*)*, i32 (%struct.iio_trigger*, %struct.iio_dev*)** %91, align 8
  %93 = icmp ne i32 (%struct.iio_trigger*, %struct.iio_dev*)* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %96 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.iio_trigger*, %struct.iio_dev*)*, i32 (%struct.iio_trigger*, %struct.iio_dev*)** %98, align 8
  %100 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %102 = call i32 %99(%struct.iio_trigger* %100, %struct.iio_dev* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %152

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %87, %82, %79
  %108 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %109 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 3
  store %struct.iio_trigger* %108, %struct.iio_trigger** %110, align 8
  %111 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %112 = icmp ne %struct.iio_trigger* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %115 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @INDIO_EVENT_TRIGGERED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %122 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @iio_trigger_detach_poll_func(%struct.iio_trigger* %121, i32 %124)
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %128 = call i32 @iio_trigger_put(%struct.iio_trigger* %127)
  br label %129

129:                                              ; preds = %126, %107
  %130 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 3
  %132 = load %struct.iio_trigger*, %struct.iio_trigger** %131, align 8
  %133 = icmp ne %struct.iio_trigger* %132, null
  br i1 %133, label %134, label %150

134:                                              ; preds = %129
  %135 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %136 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @INDIO_EVENT_TRIGGERED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %143 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %142, i32 0, i32 3
  %144 = load %struct.iio_trigger*, %struct.iio_trigger** %143, align 8
  %145 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %146 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @iio_trigger_attach_poll_func(%struct.iio_trigger* %144, i32 %147)
  br label %149

149:                                              ; preds = %141, %134
  br label %150

150:                                              ; preds = %149, %129
  %151 = load i64, i64* %9, align 8
  store i64 %151, i64* %5, align 8
  br label %161

152:                                              ; preds = %105, %77, %53
  %153 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %154 = icmp ne %struct.iio_trigger* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.iio_trigger*, %struct.iio_trigger** %12, align 8
  %157 = call i32 @iio_trigger_put(%struct.iio_trigger* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %5, align 8
  br label %161

161:                                              ; preds = %158, %150, %38, %27
  %162 = load i64, i64* %5, align 8
  ret i64 %162
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.iio_trigger* @iio_trigger_acquire_by_name(i8*) #1

declare dso_local i32 @iio_trigger_detach_poll_func(%struct.iio_trigger*, i32) #1

declare dso_local i32 @iio_trigger_put(%struct.iio_trigger*) #1

declare dso_local i32 @iio_trigger_attach_poll_func(%struct.iio_trigger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
