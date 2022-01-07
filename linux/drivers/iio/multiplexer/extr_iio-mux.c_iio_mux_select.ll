; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_iio_mux_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_iio_mux_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux = type { i32, i32, i32, %struct.iio_chan_spec*, %struct.mux_child* }
%struct.iio_chan_spec = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.mux_child = type { %struct.mux_ext_info_cache* }
%struct.mux_ext_info_cache = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux*, i32)* @iio_mux_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_mux_select(%struct.mux* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mux_child*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mux_ext_info_cache*, align 8
  store %struct.mux* %0, %struct.mux** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mux*, %struct.mux** %4, align 8
  %13 = getelementptr inbounds %struct.mux, %struct.mux* %12, i32 0, i32 4
  %14 = load %struct.mux_child*, %struct.mux_child** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %14, i64 %16
  store %struct.mux_child* %17, %struct.mux_child** %6, align 8
  %18 = load %struct.mux*, %struct.mux** %4, align 8
  %19 = getelementptr inbounds %struct.mux, %struct.mux* %18, i32 0, i32 3
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i64 %22
  store %struct.iio_chan_spec* %23, %struct.iio_chan_spec** %7, align 8
  %24 = load %struct.mux*, %struct.mux** %4, align 8
  %25 = getelementptr inbounds %struct.mux, %struct.mux* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @mux_control_select(i32 %26, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.mux*, %struct.mux** %4, align 8
  %35 = getelementptr inbounds %struct.mux, %struct.mux* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %117

37:                                               ; preds = %2
  %38 = load %struct.mux*, %struct.mux** %4, align 8
  %39 = getelementptr inbounds %struct.mux, %struct.mux* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %117

47:                                               ; preds = %37
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %110

52:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %106, %52
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %109

63:                                               ; preds = %53
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %10, align 8
  %72 = load %struct.mux_child*, %struct.mux_child** %6, align 8
  %73 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %72, i32 0, i32 0
  %74 = load %struct.mux_ext_info_cache*, %struct.mux_ext_info_cache** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mux_ext_info_cache, %struct.mux_ext_info_cache* %74, i64 %76
  store %struct.mux_ext_info_cache* %77, %struct.mux_ext_info_cache** %11, align 8
  %78 = load %struct.mux_ext_info_cache*, %struct.mux_ext_info_cache** %11, align 8
  %79 = getelementptr inbounds %struct.mux_ext_info_cache, %struct.mux_ext_info_cache* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  br label %106

83:                                               ; preds = %63
  %84 = load %struct.mux*, %struct.mux** %4, align 8
  %85 = getelementptr inbounds %struct.mux, %struct.mux* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.mux_ext_info_cache*, %struct.mux_ext_info_cache** %11, align 8
  %89 = getelementptr inbounds %struct.mux_ext_info_cache, %struct.mux_ext_info_cache* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mux_ext_info_cache*, %struct.mux_ext_info_cache** %11, align 8
  %92 = getelementptr inbounds %struct.mux_ext_info_cache, %struct.mux_ext_info_cache* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @iio_write_channel_ext_info(i32 %86, i8* %87, i32 %90, i64 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %83
  %98 = load %struct.mux*, %struct.mux** %4, align 8
  %99 = getelementptr inbounds %struct.mux, %struct.mux* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mux_control_deselect(i32 %100)
  %102 = load %struct.mux*, %struct.mux** %4, align 8
  %103 = getelementptr inbounds %struct.mux, %struct.mux* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %117

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %105, %82
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %53

109:                                              ; preds = %53
  br label %110

110:                                              ; preds = %109, %47
  %111 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %112 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load %struct.mux*, %struct.mux** %4, align 8
  %116 = getelementptr inbounds %struct.mux, %struct.mux* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %110, %97, %46, %33
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @mux_control_select(i32, i64) #1

declare dso_local i32 @iio_write_channel_ext_info(i32, i8*, i32, i64) #1

declare dso_local i32 @mux_control_deselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
