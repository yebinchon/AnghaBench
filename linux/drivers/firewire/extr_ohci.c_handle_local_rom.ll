; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_local_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_local_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32, i64 }
%struct.fw_packet = type { i32* }

@CSR_CONFIG_ROM = common dso_local global i32 0, align 4
@CONFIG_ROM_SIZE = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_ohci*, %struct.fw_packet*, i32)* @handle_local_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_local_rom(%struct.fw_ohci* %0, %struct.fw_packet* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_ohci*, align 8
  %5 = alloca %struct.fw_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_packet, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %4, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %12 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @HEADER_GET_TCODE(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @TCODE_IS_BLOCK_PACKET(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %22 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HEADER_GET_DATA_LENGTH(i32 %25)
  store i32 %26, i32* %9, align 4
  br label %28

27:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %39 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  %42 = call i32 @fw_fill_response(%struct.fw_packet* %7, i32* %40, i32 %41, i8* null, i32 0)
  br label %68

43:                                               ; preds = %28
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @TCODE_IS_READ_REQUEST(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %49 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  %52 = call i32 @fw_fill_response(%struct.fw_packet* %7, i32* %50, i32 %51, i8* null, i32 0)
  br label %67

53:                                               ; preds = %43
  %54 = load %struct.fw_packet*, %struct.fw_packet** %5, align 8
  %55 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @RCODE_COMPLETE, align 4
  %58 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %59 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %61, i64 %63
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @fw_fill_response(%struct.fw_packet* %7, i32* %56, i32 %57, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %53, %47
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %70 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %69, i32 0, i32 0
  %71 = call i32 @fw_core_handle_response(i32* %70, %struct.fw_packet* %7)
  ret void
}

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i64 @TCODE_IS_BLOCK_PACKET(i32) #1

declare dso_local i32 @HEADER_GET_DATA_LENGTH(i32) #1

declare dso_local i32 @fw_fill_response(%struct.fw_packet*, i32*, i32, i8*, i32) #1

declare dso_local i32 @TCODE_IS_READ_REQUEST(i32) #1

declare dso_local i32 @fw_core_handle_response(i32*, %struct.fw_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
