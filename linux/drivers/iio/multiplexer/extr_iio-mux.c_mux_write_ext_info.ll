; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_write_ext_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_write_ext_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mux = type { %struct.TYPE_8__*, %struct.TYPE_6__*, i32, %struct.iio_chan_spec* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @mux_write_ext_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mux_write_ext_info(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.mux*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %12, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call %struct.mux* @iio_priv(%struct.iio_dev* %21)
  store %struct.mux* %22, %struct.mux** %13, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %24 = load %struct.mux*, %struct.mux** %13, align 8
  %25 = getelementptr inbounds %struct.mux, %struct.mux* %24, i32 0, i32 3
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %25, align 8
  %27 = ptrtoint %struct.iio_chan_spec* %23 to i64
  %28 = ptrtoint %struct.iio_chan_spec* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %6, align 8
  br label %128

38:                                               ; preds = %5
  %39 = load %struct.mux*, %struct.mux** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i64 @iio_mux_select(%struct.mux* %39, i32 %40)
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %16, align 8
  store i64 %45, i64* %6, align 8
  br label %128

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %12, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kmemdup(%struct.device* %47, i8* %48, i64 %50, i32 %51)
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = load %struct.mux*, %struct.mux** %13, align 8
  %57 = call i32 @iio_mux_deselect(%struct.mux* %56)
  %58 = load i64, i64* @ENOMEM, align 8
  %59 = sub nsw i64 0, %58
  store i64 %59, i64* %6, align 8
  br label %128

60:                                               ; preds = %46
  %61 = load i8*, i8** %15, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.mux*, %struct.mux** %13, align 8
  %65 = getelementptr inbounds %struct.mux, %struct.mux* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mux*, %struct.mux** %13, align 8
  %68 = getelementptr inbounds %struct.mux, %struct.mux* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @iio_write_channel_ext_info(i32 %66, i32 %73, i8* %74, i64 %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %60
  %80 = load %struct.mux*, %struct.mux** %13, align 8
  %81 = call i32 @iio_mux_deselect(%struct.mux* %80)
  %82 = load %struct.device*, %struct.device** %12, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @devm_kfree(%struct.device* %82, i8* %83)
  %85 = load i64, i64* %16, align 8
  store i64 %85, i64* %6, align 8
  br label %128

86:                                               ; preds = %60
  %87 = load %struct.device*, %struct.device** %12, align 8
  %88 = load %struct.mux*, %struct.mux** %13, align 8
  %89 = getelementptr inbounds %struct.mux, %struct.mux* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @devm_kfree(%struct.device* %87, i8* %99)
  %101 = load i8*, i8** %15, align 8
  %102 = load %struct.mux*, %struct.mux** %13, align 8
  %103 = getelementptr inbounds %struct.mux, %struct.mux* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i8* %101, i8** %112, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.mux*, %struct.mux** %13, align 8
  %115 = getelementptr inbounds %struct.mux, %struct.mux* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i64 %113, i64* %124, align 8
  %125 = load %struct.mux*, %struct.mux** %13, align 8
  %126 = call i32 @iio_mux_deselect(%struct.mux* %125)
  %127 = load i64, i64* %16, align 8
  store i64 %127, i64* %6, align 8
  br label %128

128:                                              ; preds = %86, %79, %55, %44, %35
  %129 = load i64, i64* %6, align 8
  ret i64 %129
}

declare dso_local %struct.mux* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_mux_select(%struct.mux*, i32) #1

declare dso_local i8* @devm_kmemdup(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @iio_mux_deselect(%struct.mux*) #1

declare dso_local i64 @iio_write_channel_ext_info(i32, i32, i8*, i64) #1

declare dso_local i32 @devm_kfree(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
