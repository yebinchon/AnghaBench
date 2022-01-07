; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_pkt_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_pkt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i32*, i64 }

@EINVAL = common dso_local global i64 0, align 8
@DVB_RINGBUFFER_PKTHDRSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dvb_ringbuffer_pkt_read(%struct.dvb_ringbuffer* %0, i64 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.dvb_ringbuffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %14, align 8
  %23 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %24 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %29 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = urem i64 %27, %30
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %14, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %14, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %6, align 8
  br label %113

44:                                               ; preds = %5
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %14, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %52, %54
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %51, %44
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @DVB_RINGBUFFER_PKTHDRSIZE, align 8
  %59 = add i64 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %64 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = urem i64 %62, %65
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %68, %69
  %71 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %72 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ugt i64 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %56
  %76 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %77 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %78, %79
  br label %82

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81, %75
  %83 = phi i64 [ %80, %75 ], [ 0, %81 ]
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %89 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = bitcast i32* %92 to i64*
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @memcpy(i32* %87, i64* %93, i64 %94)
  %96 = load i64, i64* %13, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %10, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %12, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %102

102:                                              ; preds = %86, %82
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %105 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = bitcast i32* %108 to i64*
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @memcpy(i32* %103, i64* %109, i64 %110)
  %112 = load i64, i64* %11, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %102, %41
  %114 = load i64, i64* %6, align 8
  ret i64 %114
}

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
