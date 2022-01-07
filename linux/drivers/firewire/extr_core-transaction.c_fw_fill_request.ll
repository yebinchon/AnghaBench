; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_fill_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_fill_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_packet = type { i32*, i32, i64, i32, i32, i32, i64, i8* }

@TCODE_STREAM_DATA = common dso_local global i32 0, align 4
@RETRY_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wrong tcode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_packet*, i32, i32, i32, i32, i32, i32, i64, i8*, i64)* @fw_fill_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_fill_request(%struct.fw_packet* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i8* %8, i64 %9) #0 {
  %11 = alloca %struct.fw_packet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.fw_packet* %0, %struct.fw_packet** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i8* %8, i8** %19, align 8
  store i64 %9, i64* %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %10
  %26 = load i64, i64* %20, align 8
  %27 = call i32 @HEADER_DATA_LENGTH(i64 %26)
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %31 = call i32 @HEADER_TCODE(i32 %30)
  %32 = or i32 %29, %31
  %33 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %34 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %38 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %37, i32 0, i32 1
  store i32 4, i32* %38, align 8
  %39 = load i8*, i8** %19, align 8
  %40 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %41 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* %20, align 8
  %43 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %44 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %139

45:                                               ; preds = %10
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 16
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, -17
  store i32 %50, i32* %21, align 4
  store i32 132, i32* %12, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* @RETRY_X, align 4
  %54 = call i32 @HEADER_RETRY(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @HEADER_TLABEL(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @HEADER_TCODE(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @HEADER_DESTINATION(i32 %61)
  %63 = or i32 %60, %62
  %64 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %65 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load i64, i64* %18, align 8
  %69 = lshr i64 %68, 32
  %70 = call i32 @HEADER_OFFSET_HIGH(i64 %69)
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @HEADER_SOURCE(i32 %71)
  %73 = or i32 %70, %72
  %74 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %75 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load i64, i64* %18, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %81 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %135 [
    i32 128, label %85
    i32 132, label %98
    i32 129, label %98
    i32 130, label %116
    i32 131, label %121
  ]

85:                                               ; preds = %52
  %86 = load i8*, i8** %19, align 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %91 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %89, i32* %93, align 4
  %94 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %95 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %94, i32 0, i32 1
  store i32 16, i32* %95, align 8
  %96 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %97 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %138

98:                                               ; preds = %52, %52
  %99 = load i64, i64* %20, align 8
  %100 = call i32 @HEADER_DATA_LENGTH(i64 %99)
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @HEADER_EXTENDED_TCODE(i32 %101)
  %103 = or i32 %100, %102
  %104 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %105 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 %103, i32* %107, align 4
  %108 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %109 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %108, i32 0, i32 1
  store i32 16, i32* %109, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %112 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* %20, align 8
  %114 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %115 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  br label %138

116:                                              ; preds = %52
  %117 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %118 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %117, i32 0, i32 1
  store i32 12, i32* %118, align 8
  %119 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %120 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  br label %138

121:                                              ; preds = %52
  %122 = load i64, i64* %20, align 8
  %123 = call i32 @HEADER_DATA_LENGTH(i64 %122)
  %124 = load i32, i32* %21, align 4
  %125 = call i32 @HEADER_EXTENDED_TCODE(i32 %124)
  %126 = or i32 %123, %125
  %127 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %128 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32 %126, i32* %130, align 4
  %131 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %132 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %131, i32 0, i32 1
  store i32 16, i32* %132, align 8
  %133 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %134 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  br label %138

135:                                              ; preds = %52
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %135, %121, %116, %98, %85
  br label %139

139:                                              ; preds = %138, %25
  %140 = load i32, i32* %17, align 4
  %141 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %142 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %145 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %147 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %146, i32 0, i32 6
  store i64 0, i64* %147, align 8
  %148 = load %struct.fw_packet*, %struct.fw_packet** %11, align 8
  %149 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %148, i32 0, i32 5
  store i32 0, i32* %149, align 8
  ret void
}

declare dso_local i32 @HEADER_DATA_LENGTH(i64) #1

declare dso_local i32 @HEADER_TCODE(i32) #1

declare dso_local i32 @HEADER_RETRY(i32) #1

declare dso_local i32 @HEADER_TLABEL(i32) #1

declare dso_local i32 @HEADER_DESTINATION(i32) #1

declare dso_local i32 @HEADER_OFFSET_HIGH(i64) #1

declare dso_local i32 @HEADER_SOURCE(i32) #1

declare dso_local i32 @HEADER_EXTENDED_TCODE(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
