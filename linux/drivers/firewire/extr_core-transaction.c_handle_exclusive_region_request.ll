; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_handle_exclusive_region_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_handle_exclusive_region_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_packet = type { i32, i32* }
%struct.fw_request = type { i32, i32 }
%struct.fw_address_handler = type { i32, i32 (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i32, i32, i32)* }

@TCODE_LOCK_REQUEST = common dso_local global i32 0, align 4
@address_handler_list = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_packet*, %struct.fw_request*, i64)* @handle_exclusive_region_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_exclusive_region_request(%struct.fw_card* %0, %struct.fw_packet* %1, %struct.fw_request* %2, i64 %3) #0 {
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca %struct.fw_packet*, align 8
  %7 = alloca %struct.fw_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fw_address_handler*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %5, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %6, align 8
  store %struct.fw_request* %2, %struct.fw_request** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %14 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @HEADER_GET_DESTINATION(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %20 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @HEADER_GET_SOURCE(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %26 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @HEADER_GET_TCODE(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @TCODE_LOCK_REQUEST, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %36 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @HEADER_GET_EXTENDED_TCODE(i32 %39)
  %41 = add nsw i32 16, %40
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %34, %4
  %43 = call i32 (...) @rcu_read_lock()
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %46 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.fw_address_handler* @lookup_enclosing_address_handler(i32* @address_handler_list, i64 %44, i32 %47)
  store %struct.fw_address_handler* %48, %struct.fw_address_handler** %9, align 8
  %49 = load %struct.fw_address_handler*, %struct.fw_address_handler** %9, align 8
  %50 = icmp ne %struct.fw_address_handler* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %42
  %52 = load %struct.fw_address_handler*, %struct.fw_address_handler** %9, align 8
  %53 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %52, i32 0, i32 1
  %54 = load i32 (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i32, i32, i32)*, i32 (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i32, i32, i32)** %53, align 8
  %55 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %56 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.fw_packet*, %struct.fw_packet** %6, align 8
  %61 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %65 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %68 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fw_address_handler*, %struct.fw_address_handler** %9, align 8
  %71 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %54(%struct.fw_card* %55, %struct.fw_request* %56, i32 %57, i32 %58, i32 %59, i32 %62, i64 %63, i32 %66, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %51, %42
  %75 = call i32 (...) @rcu_read_unlock()
  %76 = load %struct.fw_address_handler*, %struct.fw_address_handler** %9, align 8
  %77 = icmp ne %struct.fw_address_handler* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %80 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %81 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  %82 = call i32 @fw_send_response(%struct.fw_card* %79, %struct.fw_request* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  ret void
}

declare dso_local i32 @HEADER_GET_DESTINATION(i32) #1

declare dso_local i32 @HEADER_GET_SOURCE(i32) #1

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i32 @HEADER_GET_EXTENDED_TCODE(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fw_address_handler* @lookup_enclosing_address_handler(i32*, i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
