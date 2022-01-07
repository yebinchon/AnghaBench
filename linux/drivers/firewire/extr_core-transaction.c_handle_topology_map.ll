; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_handle_topology_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_handle_topology_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fw_card = type { i32* }
%struct.fw_request = type { i32 }

@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@topology_map_region = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @handle_topology_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_topology_map(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @TCODE_IS_READ_REQUEST(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %10
  %26 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %27 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %28 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  %29 = call i32 @fw_send_response(%struct.fw_card* %26, %struct.fw_request* %27, i32 %28)
  br label %62

30:                                               ; preds = %10
  %31 = load i64, i64* %17, align 8
  %32 = and i64 %31, 3
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %19, align 8
  %36 = and i64 %35, 3
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %40 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %41 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  %42 = call i32 @fw_send_response(%struct.fw_card* %39, %struct.fw_request* %40, i32 %41)
  br label %62

43:                                               ; preds = %34
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topology_map_region, i32 0, i32 0), align 8
  %46 = sub i64 %44, %45
  %47 = udiv i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %21, align 4
  %49 = load i8*, i8** %18, align 8
  %50 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %51 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i64, i64* %19, align 8
  %57 = call i32 @memcpy(i8* %49, i32* %55, i64 %56)
  %58 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %59 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %60 = load i32, i32* @RCODE_COMPLETE, align 4
  %61 = call i32 @fw_send_response(%struct.fw_card* %58, %struct.fw_request* %59, i32 %60)
  br label %62

62:                                               ; preds = %43, %38, %25
  ret void
}

declare dso_local i32 @TCODE_IS_READ_REQUEST(i32) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
