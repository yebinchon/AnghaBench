; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_local_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_local_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }
%struct.fw_packet = type { i32*, i32* }

@TCODE_LOCK_REQUEST = common dso_local global i32 0, align 4
@EXTCODE_COMPARE_SWAP = common dso_local global i32 0, align 4
@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@CSR_BUS_MANAGER_ID = common dso_local global i32 0, align 4
@OHCI1394_CSRData = common dso_local global i32 0, align 4
@OHCI1394_CSRCompareData = common dso_local global i32 0, align 4
@OHCI1394_CSRControl = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"swap not done (CSR lock timeout)\0A\00", align 1
@RCODE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_ohci*, %struct.fw_packet*, i32)* @handle_local_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_local_lock(%struct.fw_ohci* %0, %struct.fw_packet* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_ohci*, align 8
  %5 = alloca %struct.fw_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_packet, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %4, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %18 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @HEADER_GET_TCODE(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %24 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @HEADER_GET_DATA_LENGTH(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %30 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  %32 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %33 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @HEADER_GET_EXTENDED_TCODE(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @TCODE_LOCK_REQUEST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %3
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @EXTCODE_COMPARE_SWAP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  store i32 %56, i32* %16, align 4
  br label %69

57:                                               ; preds = %45, %41, %3
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %68

62:                                               ; preds = %57
  %63 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %64 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  %67 = call i32 @fw_fill_response(%struct.fw_packet* %7, i32* %65, i32 %66, i32* null, i32 0)
  br label %117

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CSR_BUS_MANAGER_ID, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sdiv i32 %72, 4
  store i32 %73, i32* %11, align 4
  %74 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %75 = load i32, i32* @OHCI1394_CSRData, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @reg_write(%struct.fw_ohci* %74, i32 %75, i32 %76)
  %78 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %79 = load i32, i32* @OHCI1394_CSRCompareData, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @reg_write(%struct.fw_ohci* %78, i32 %79, i32 %80)
  %82 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %83 = load i32, i32* @OHCI1394_CSRControl, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @reg_write(%struct.fw_ohci* %82, i32 %83, i32 %84)
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %106, %69
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 20
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %91 = load i32, i32* @OHCI1394_CSRControl, align 4
  %92 = call i32 @reg_read(%struct.fw_ohci* %90, i32 %91)
  %93 = and i32 %92, -2147483648
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %97 = load i32, i32* @OHCI1394_CSRData, align 4
  %98 = call i32 @reg_read(%struct.fw_ohci* %96, i32 %97)
  %99 = call i32 @cpu_to_be32(i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %101 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @RCODE_COMPLETE, align 4
  %104 = call i32 @fw_fill_response(%struct.fw_packet* %7, i32* %102, i32 %103, i32* %14, i32 4)
  br label %117

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %86

109:                                              ; preds = %86
  %110 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %111 = call i32 @ohci_err(%struct.fw_ohci* %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %112 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %113 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @RCODE_BUSY, align 4
  %116 = call i32 @fw_fill_response(%struct.fw_packet* %7, i32* %114, i32 %115, i32* null, i32 0)
  br label %117

117:                                              ; preds = %109, %95, %62
  %118 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %119 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %118, i32 0, i32 0
  %120 = call i32 @fw_core_handle_response(i32* %119, %struct.fw_packet* %7)
  ret void
}

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i32 @HEADER_GET_DATA_LENGTH(i32) #1

declare dso_local i32 @HEADER_GET_EXTENDED_TCODE(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fw_fill_response(%struct.fw_packet*, i32*, i32, i32*, i32) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ohci_err(%struct.fw_ohci*, i8*) #1

declare dso_local i32 @fw_core_handle_response(i32*, %struct.fw_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
