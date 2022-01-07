; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, %struct.f54_data* }
%struct.f54_data = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32*, i32, i32, i32, i32, %struct.rmi_function* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32*, %struct.TYPE_10__* }
%struct.rmi_function = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rmi_f54_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rmi4-poller\00", align 1
@F54_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to register video dev.\0A\00", align 1
@rmi_f54_queue = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@rmi_f54_video_device = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VFL_DIR_RX = common dso_local global i32 0, align 4
@VFL_TYPE_TOUCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to register video subdevice.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f54_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f54_probe(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.f54_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %8 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %9 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(i32* %9, i32 112, i32 %10)
  %12 = bitcast i8* %11 to %struct.f54_data*
  store %struct.f54_data* %12, %struct.f54_data** %4, align 8
  %13 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %14 = icmp ne %struct.f54_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %181

18:                                               ; preds = %1
  %19 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %20 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %21 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %20, i32 0, i32 11
  store %struct.rmi_function* %19, %struct.rmi_function** %21, align 8
  %22 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %23 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %22, i32 0, i32 0
  %24 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %25 = call i32 @dev_set_drvdata(i32* %23, %struct.f54_data* %24)
  %26 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %27 = call i32 @rmi_f54_detect(%struct.rmi_function* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %181

32:                                               ; preds = %18
  %33 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %34 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %33, i32 0, i32 10
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %37 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %36, i32 0, i32 9
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %40 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %43 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %46 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @array3_size(i32 %47, i32 %48, i32 4)
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @devm_kzalloc(i32* %46, i32 %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %54 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %53, i32 0, i32 6
  store i32* %52, i32** %54, align 8
  %55 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %56 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %32
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %181

62:                                               ; preds = %32
  %63 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %64 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %63, i32 0, i32 1
  %65 = load i32, i32* @rmi_f54_work, align 4
  %66 = call i32 @INIT_DELAYED_WORK(i32* %64, i32 %65)
  %67 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %69 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %71 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %181

77:                                               ; preds = %62
  %78 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %79 = call i32 @rmi_f54_create_input_map(%struct.f54_data* %78)
  %80 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %81 = call i32 @rmi_f54_set_input(%struct.f54_data* %80, i32 0)
  %82 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %83 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @F54_NAME, align 4
  %87 = call i32 @strlcpy(i32 %85, i32 %86, i32 4)
  %88 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %89 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %88, i32 0, i32 0
  %90 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %91 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %90, i32 0, i32 2
  %92 = call i32 @v4l2_device_register(i32* %89, %struct.TYPE_10__* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %77
  %96 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %97 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %168

99:                                               ; preds = %77
  %100 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %101 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %100, i32 0, i32 5
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %104 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %103, i32 0, i32 4
  %105 = bitcast %struct.TYPE_9__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 bitcast (%struct.TYPE_9__* @rmi_f54_queue to i8*), i64 24, i1 false)
  %106 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %107 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %108 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  store %struct.f54_data* %106, %struct.f54_data** %109, align 8
  %110 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %111 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %110, i32 0, i32 5
  %112 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %113 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i32* %111, i32** %114, align 8
  %115 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %116 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %115, i32 0, i32 0
  %117 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %118 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32* %116, i32** %119, align 8
  %120 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %121 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %120, i32 0, i32 4
  %122 = call i32 @vb2_queue_init(%struct.TYPE_9__* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %99
  br label %164

126:                                              ; preds = %99
  %127 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %128 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %127, i32 0, i32 3
  %129 = bitcast %struct.TYPE_8__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 bitcast (%struct.TYPE_8__* @rmi_f54_video_device to i8*), i64 32, i1 false)
  %130 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %131 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %130, i32 0, i32 2
  %132 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %133 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %134, align 8
  %135 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %136 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %135, i32 0, i32 5
  %137 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %138 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  store i32* %136, i32** %139, align 8
  %140 = load i32, i32* @VFL_DIR_RX, align 4
  %141 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %142 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 8
  %144 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %145 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %144, i32 0, i32 4
  %146 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %147 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %148, align 8
  %149 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %150 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %149, i32 0, i32 3
  %151 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %152 = call i32 @video_set_drvdata(%struct.TYPE_8__* %150, %struct.f54_data* %151)
  %153 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %154 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %153, i32 0, i32 3
  %155 = load i32, i32* @VFL_TYPE_TOUCH, align 4
  %156 = call i32 @video_register_device(%struct.TYPE_8__* %154, i32 %155, i32 -1)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %126
  %160 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %161 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %160, i32 0, i32 0
  %162 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %164

163:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %181

164:                                              ; preds = %159, %125
  %165 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %166 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %165, i32 0, i32 2
  %167 = call i32 @v4l2_device_unregister(%struct.TYPE_10__* %166)
  br label %168

168:                                              ; preds = %164, %95
  %169 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %170 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %169, i32 0, i32 1
  %171 = call i32 @cancel_delayed_work_sync(i32* %170)
  %172 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %173 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @flush_workqueue(i32 %174)
  %176 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %177 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @destroy_workqueue(i32 %178)
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %168, %163, %74, %59, %30, %15
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.f54_data*) #1

declare dso_local i32 @rmi_f54_detect(%struct.rmi_function*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @rmi_f54_create_input_map(%struct.f54_data*) #1

declare dso_local i32 @rmi_f54_set_input(%struct.f54_data*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vb2_queue_init(%struct.TYPE_9__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.f54_data*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
