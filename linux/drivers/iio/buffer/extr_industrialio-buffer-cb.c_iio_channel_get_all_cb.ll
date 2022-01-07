; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-cb.c_iio_channel_get_all_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-cb.c_iio_channel_get_all_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_cb_buffer = type { i32 (i8*, i8*)*, %struct.iio_channel*, %struct.TYPE_6__, %struct.TYPE_4__*, i8* }
%struct.iio_channel = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iio_cb_access = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_cb_buffer* @iio_channel_get_all_cb(%struct.device* %0, i32 (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.iio_cb_buffer*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_cb_buffer*, align 8
  %10 = alloca %struct.iio_channel*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.iio_cb_buffer* @kzalloc(i32 56, i32 %11)
  store %struct.iio_cb_buffer* %12, %struct.iio_cb_buffer** %9, align 8
  %13 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %14 = icmp eq %struct.iio_cb_buffer* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.iio_cb_buffer* @ERR_PTR(i32 %17)
  store %struct.iio_cb_buffer* %18, %struct.iio_cb_buffer** %4, align 8
  br label %129

19:                                               ; preds = %3
  %20 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %21 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %20, i32 0, i32 2
  %22 = call i32 @iio_buffer_init(%struct.TYPE_6__* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %25 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %27 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %28 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %27, i32 0, i32 0
  store i32 (i8*, i8*)* %26, i32 (i8*, i8*)** %28, align 8
  %29 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %30 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32* @iio_cb_access, i32** %31, align 8
  %32 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %33 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call %struct.iio_channel* @iio_channel_get_all(%struct.device* %36)
  %38 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %39 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %38, i32 0, i32 1
  store %struct.iio_channel* %37, %struct.iio_channel** %39, align 8
  %40 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %41 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %40, i32 0, i32 1
  %42 = load %struct.iio_channel*, %struct.iio_channel** %41, align 8
  %43 = call i64 @IS_ERR(%struct.iio_channel* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %19
  %46 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %47 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %46, i32 0, i32 1
  %48 = load %struct.iio_channel*, %struct.iio_channel** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.iio_channel* %48)
  store i32 %49, i32* %8, align 4
  br label %124

50:                                               ; preds = %19
  %51 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %52 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %51, i32 0, i32 1
  %53 = load %struct.iio_channel*, %struct.iio_channel** %52, align 8
  %54 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %53, i64 0
  %55 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %58 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %57, i32 0, i32 3
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %58, align 8
  %59 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %60 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @bitmap_zalloc(i32 %63, i32 %64)
  %66 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %67 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32* %65, i32** %68, align 8
  %69 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %50
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %119

77:                                               ; preds = %50
  %78 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %79 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %78, i32 0, i32 1
  %80 = load %struct.iio_channel*, %struct.iio_channel** %79, align 8
  %81 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %80, i64 0
  store %struct.iio_channel* %81, %struct.iio_channel** %10, align 8
  br label %82

82:                                               ; preds = %98, %77
  %83 = load %struct.iio_channel*, %struct.iio_channel** %10, align 8
  %84 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %87, label %111

87:                                               ; preds = %82
  %88 = load %struct.iio_channel*, %struct.iio_channel** %10, align 8
  %89 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %92 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = icmp ne %struct.TYPE_4__* %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %113

98:                                               ; preds = %87
  %99 = load %struct.iio_channel*, %struct.iio_channel** %10, align 8
  %100 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %105 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @set_bit(i32 %103, i32* %107)
  %109 = load %struct.iio_channel*, %struct.iio_channel** %10, align 8
  %110 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %109, i32 1
  store %struct.iio_channel* %110, %struct.iio_channel** %10, align 8
  br label %82

111:                                              ; preds = %82
  %112 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  store %struct.iio_cb_buffer* %112, %struct.iio_cb_buffer** %4, align 8
  br label %129

113:                                              ; preds = %95
  %114 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %115 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @bitmap_free(i32* %117)
  br label %119

119:                                              ; preds = %113, %74
  %120 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %121 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %120, i32 0, i32 1
  %122 = load %struct.iio_channel*, %struct.iio_channel** %121, align 8
  %123 = call i32 @iio_channel_release_all(%struct.iio_channel* %122)
  br label %124

124:                                              ; preds = %119, %45
  %125 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %9, align 8
  %126 = call i32 @kfree(%struct.iio_cb_buffer* %125)
  %127 = load i32, i32* %8, align 4
  %128 = call %struct.iio_cb_buffer* @ERR_PTR(i32 %127)
  store %struct.iio_cb_buffer* %128, %struct.iio_cb_buffer** %4, align 8
  br label %129

129:                                              ; preds = %124, %111, %15
  %130 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %4, align 8
  ret %struct.iio_cb_buffer* %130
}

declare dso_local %struct.iio_cb_buffer* @kzalloc(i32, i32) #1

declare dso_local %struct.iio_cb_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @iio_buffer_init(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.iio_channel* @iio_channel_get_all(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iio_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.iio_channel*) #1

declare dso_local i32* @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bitmap_free(i32*) #1

declare dso_local i32 @iio_channel_release_all(%struct.iio_channel*) #1

declare dso_local i32 @kfree(%struct.iio_cb_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
