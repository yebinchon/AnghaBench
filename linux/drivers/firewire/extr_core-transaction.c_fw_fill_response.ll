; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_fill_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_fill_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_packet = type { i32*, i32, i64, i32, i8* }

@RETRY_1 = common dso_local global i32 0, align 4
@TCODE_WRITE_RESPONSE = common dso_local global i32 0, align 4
@TCODE_READ_QUADLET_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wrong tcode %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_fill_response(%struct.fw_packet* %0, i32* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.fw_packet*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fw_packet* %0, %struct.fw_packet** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HEADER_GET_TCODE(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @HEADER_GET_TLABEL(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @HEADER_GET_DESTINATION(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HEADER_GET_SOURCE(i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @HEADER_GET_EXTENDED_TCODE(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @RETRY_1, align 4
  %37 = call i32 @HEADER_RETRY(i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @HEADER_TLABEL(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @HEADER_DESTINATION(i32 %41)
  %43 = or i32 %40, %42
  %44 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %45 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @HEADER_SOURCE(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @HEADER_RCODE(i32 %50)
  %52 = or i32 %49, %51
  %53 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %54 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %58 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %131 [
    i32 128, label %62
    i32 129, label %62
    i32 130, label %75
    i32 131, label %104
    i32 132, label %104
  ]

62:                                               ; preds = %5, %5
  %63 = load i32, i32* @TCODE_WRITE_RESPONSE, align 4
  %64 = call i32 @HEADER_TCODE(i32 %63)
  %65 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %66 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %72 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %71, i32 0, i32 1
  store i32 12, i32* %72, align 8
  %73 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %74 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  br label %134

75:                                               ; preds = %5
  %76 = load i32, i32* @TCODE_READ_QUADLET_RESPONSE, align 4
  %77 = call i32 @HEADER_TCODE(i32 %76)
  %78 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %79 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load i8*, i8** %9, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %91 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %89, i32* %93, align 4
  br label %99

94:                                               ; preds = %75
  %95 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %96 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %86
  %100 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %101 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %100, i32 0, i32 1
  store i32 16, i32* %101, align 8
  %102 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %103 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  br label %134

104:                                              ; preds = %5, %5
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 2
  %107 = call i32 @HEADER_TCODE(i32 %106)
  %108 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %109 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %107
  store i32 %113, i32* %111, align 4
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @HEADER_DATA_LENGTH(i64 %114)
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @HEADER_EXTENDED_TCODE(i32 %116)
  %118 = or i32 %115, %117
  %119 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %120 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 %118, i32* %122, align 4
  %123 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %124 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %123, i32 0, i32 1
  store i32 16, i32* %124, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %127 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %130 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %134

131:                                              ; preds = %5
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %131, %104, %99, %62
  %135 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %136 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %135, i32 0, i32 3
  store i32 0, i32* %136, align 8
  ret void
}

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i32 @HEADER_GET_TLABEL(i32) #1

declare dso_local i32 @HEADER_GET_DESTINATION(i32) #1

declare dso_local i32 @HEADER_GET_SOURCE(i32) #1

declare dso_local i32 @HEADER_GET_EXTENDED_TCODE(i32) #1

declare dso_local i32 @HEADER_RETRY(i32) #1

declare dso_local i32 @HEADER_TLABEL(i32) #1

declare dso_local i32 @HEADER_DESTINATION(i32) #1

declare dso_local i32 @HEADER_SOURCE(i32) #1

declare dso_local i32 @HEADER_RCODE(i32) #1

declare dso_local i32 @HEADER_TCODE(i32) #1

declare dso_local i32 @HEADER_DATA_LENGTH(i64) #1

declare dso_local i32 @HEADER_EXTENDED_TCODE(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
