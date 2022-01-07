; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_allocate_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_allocate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }
%struct.fw_card = type { i32 }
%struct.fw_packet = type { i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"ERROR - corrupt request received - %08x %08x %08x\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@free_response_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_request* (%struct.fw_card*, %struct.fw_packet*)* @allocate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_request* @allocate_request(%struct.fw_card* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.fw_request*, align 8
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca %struct.fw_packet*, align 8
  %6 = alloca %struct.fw_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %5, align 8
  %10 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %11 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @HEADER_GET_TCODE(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %40 [
    i32 128, label %17
    i32 129, label %22
    i32 132, label %22
    i32 130, label %32
    i32 131, label %33
  ]

17:                                               ; preds = %2
  %18 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %19 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  store i32* %21, i32** %7, align 8
  store i32 4, i32* %8, align 4
  br label %58

22:                                               ; preds = %2, %2
  %23 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %24 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %27 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HEADER_GET_DATA_LENGTH(i32 %30)
  store i32 %31, i32* %8, align 4
  br label %58

32:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  store i32 4, i32* %8, align 4
  br label %58

33:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  %34 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %35 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @HEADER_GET_DATA_LENGTH(i32 %38)
  store i32 %39, i32* %8, align 4
  br label %58

40:                                               ; preds = %2
  %41 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %42 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %43 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %48 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %53 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fw_notice(%struct.fw_card* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %51, i32 %56)
  store %struct.fw_request* null, %struct.fw_request** %3, align 8
  br label %122

58:                                               ; preds = %33, %32, %22, %17
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 48, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call %struct.fw_request* @kmalloc(i32 %62, i32 %63)
  store %struct.fw_request* %64, %struct.fw_request** %6, align 8
  %65 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %66 = icmp eq %struct.fw_request* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store %struct.fw_request* null, %struct.fw_request** %3, align 8
  br label %122

68:                                               ; preds = %58
  %69 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %70 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %73 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 8
  %75 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %76 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %77 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @compute_split_timeout_timestamp(%struct.fw_card* %75, i32 %78)
  %80 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %81 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %84 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %87 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %90 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @free_response_callback, align 4
  %93 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %94 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %97 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %100 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %103 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %68
  %107 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %108 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @memcpy(i32 %109, i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %68
  %114 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %115 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %118 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @memcpy(i32 %116, i32* %119, i32 8)
  %121 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  store %struct.fw_request* %121, %struct.fw_request** %3, align 8
  br label %122

122:                                              ; preds = %113, %67, %40
  %123 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  ret %struct.fw_request* %123
}

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i32 @HEADER_GET_DATA_LENGTH(i32) #1

declare dso_local i32 @fw_notice(%struct.fw_card*, i8*, i32, i32, i32) #1

declare dso_local %struct.fw_request* @kmalloc(i32, i32) #1

declare dso_local i32 @compute_split_timeout_timestamp(%struct.fw_card*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
