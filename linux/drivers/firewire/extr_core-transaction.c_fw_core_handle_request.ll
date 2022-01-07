; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_core_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_core_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_packet = type { i64, i32* }
%struct.fw_request = type { i32 }

@ACK_PENDING = common dso_local global i64 0, align 8
@ACK_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_core_handle_request(%struct.fw_card* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca %struct.fw_packet*, align 8
  %5 = alloca %struct.fw_request*, align 8
  %6 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %4, align 8
  %7 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %8 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACK_PENDING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %14 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACK_COMPLETE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %73

19:                                               ; preds = %12, %2
  %20 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %21 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @HEADER_GET_TCODE(i32 %24)
  %26 = call i64 @TCODE_IS_LINK_INTERNAL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %30 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %31 = call i32 @fw_cdev_handle_phy_packet(%struct.fw_card* %29, %struct.fw_packet* %30)
  br label %73

32:                                               ; preds = %19
  %33 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %34 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %35 = call %struct.fw_request* @allocate_request(%struct.fw_card* %33, %struct.fw_packet* %34)
  store %struct.fw_request* %35, %struct.fw_request** %5, align 8
  %36 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %37 = icmp eq %struct.fw_request* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %73

39:                                               ; preds = %32
  %40 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %41 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @HEADER_GET_OFFSET_HIGH(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 32
  %48 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %49 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %47, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %57 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @is_in_fcp_region(i64 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %39
  %62 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %63 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %64 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @handle_exclusive_region_request(%struct.fw_card* %62, %struct.fw_packet* %63, %struct.fw_request* %64, i64 %65)
  br label %73

67:                                               ; preds = %39
  %68 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %69 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %70 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @handle_fcp_region_request(%struct.fw_card* %68, %struct.fw_packet* %69, %struct.fw_request* %70, i64 %71)
  br label %73

73:                                               ; preds = %18, %28, %38, %67, %61
  ret void
}

declare dso_local i64 @TCODE_IS_LINK_INTERNAL(i32) #1

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i32 @fw_cdev_handle_phy_packet(%struct.fw_card*, %struct.fw_packet*) #1

declare dso_local %struct.fw_request* @allocate_request(%struct.fw_card*, %struct.fw_packet*) #1

declare dso_local i64 @HEADER_GET_OFFSET_HIGH(i32) #1

declare dso_local i32 @is_in_fcp_region(i64, i32) #1

declare dso_local i32 @handle_exclusive_region_request(%struct.fw_card*, %struct.fw_packet*, %struct.fw_request*, i64) #1

declare dso_local i32 @handle_fcp_region_request(%struct.fw_card*, %struct.fw_packet*, %struct.fw_request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
