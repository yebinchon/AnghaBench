; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_local_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_local_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.context, %struct.context }
%struct.fw_packet = type { i64*, i32, i32 (%struct.fw_packet*, i32*, i32)* }

@ACK_PENDING = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM_END = common dso_local global i32 0, align 4
@ACK_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.fw_packet*)* @handle_local_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_local_request(%struct.context* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.fw_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %4, align 8
  %7 = load %struct.context*, %struct.context** %3, align 8
  %8 = load %struct.context*, %struct.context** %3, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = icmp eq %struct.context* %7, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @ACK_PENDING, align 4
  %15 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %16 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %18 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %17, i32 0, i32 2
  %19 = load i32 (%struct.fw_packet*, i32*, i32)*, i32 (%struct.fw_packet*, i32*, i32)** %18, align 8
  %20 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %21 = load %struct.context*, %struct.context** %3, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %26 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %19(%struct.fw_packet* %20, i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %13, %2
  %30 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %31 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @HEADER_GET_OFFSET_HIGH(i64 %34)
  %36 = shl i64 %35, 32
  %37 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %38 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %36, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %29
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @CSR_CONFIG_ROM_END, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.context*, %struct.context** %3, align 8
  %56 = getelementptr inbounds %struct.context, %struct.context* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @handle_local_rom(%struct.TYPE_3__* %57, %struct.fw_packet* %58, i32 %59)
  br label %93

61:                                               ; preds = %50, %29
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %70 [
    i32 130, label %63
    i32 131, label %63
    i32 129, label %63
    i32 128, label %63
  ]

63:                                               ; preds = %61, %61, %61, %61
  %64 = load %struct.context*, %struct.context** %3, align 8
  %65 = getelementptr inbounds %struct.context, %struct.context* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @handle_local_lock(%struct.TYPE_3__* %66, %struct.fw_packet* %67, i32 %68)
  br label %92

70:                                               ; preds = %61
  %71 = load %struct.context*, %struct.context** %3, align 8
  %72 = load %struct.context*, %struct.context** %3, align 8
  %73 = getelementptr inbounds %struct.context, %struct.context* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = icmp eq %struct.context* %71, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.context*, %struct.context** %3, align 8
  %79 = getelementptr inbounds %struct.context, %struct.context* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %83 = call i32 @fw_core_handle_request(i32* %81, %struct.fw_packet* %82)
  br label %91

84:                                               ; preds = %70
  %85 = load %struct.context*, %struct.context** %3, align 8
  %86 = getelementptr inbounds %struct.context, %struct.context* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %90 = call i32 @fw_core_handle_response(i32* %88, %struct.fw_packet* %89)
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.context*, %struct.context** %3, align 8
  %95 = load %struct.context*, %struct.context** %3, align 8
  %96 = getelementptr inbounds %struct.context, %struct.context* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = icmp eq %struct.context* %94, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %93
  %101 = load i32, i32* @ACK_COMPLETE, align 4
  %102 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %103 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %105 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %104, i32 0, i32 2
  %106 = load i32 (%struct.fw_packet*, i32*, i32)*, i32 (%struct.fw_packet*, i32*, i32)** %105, align 8
  %107 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %108 = load %struct.context*, %struct.context** %3, align 8
  %109 = getelementptr inbounds %struct.context, %struct.context* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %113 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %106(%struct.fw_packet* %107, i32* %111, i32 %114)
  br label %116

116:                                              ; preds = %100, %93
  ret void
}

declare dso_local i64 @HEADER_GET_OFFSET_HIGH(i64) #1

declare dso_local i32 @handle_local_rom(%struct.TYPE_3__*, %struct.fw_packet*, i32) #1

declare dso_local i32 @handle_local_lock(%struct.TYPE_3__*, %struct.fw_packet*, i32) #1

declare dso_local i32 @fw_core_handle_request(i32*, %struct.fw_packet*) #1

declare dso_local i32 @fw_core_handle_response(i32*, %struct.fw_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
