; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_host_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_host_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32, i64 }
%struct.dw_mipi_dsi = type { %struct.dw_mipi_dsi*, i32 }
%struct.mipi_dsi_packet = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to create packet: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @dw_mipi_dsi_host_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_host_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.dw_mipi_dsi*, align 8
  %7 = alloca %struct.mipi_dsi_packet, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %10 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %11 = call %struct.dw_mipi_dsi* @host_to_dsi(%struct.mipi_dsi_host* %10)
  store %struct.dw_mipi_dsi* %11, %struct.dw_mipi_dsi** %6, align 8
  %12 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %13 = call i32 @mipi_dsi_create_packet(%struct.mipi_dsi_packet* %7, %struct.mipi_dsi_msg* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %18 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %86

23:                                               ; preds = %2
  %24 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %25 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %26 = call i32 @dw_mipi_message_config(%struct.dw_mipi_dsi* %24, %struct.mipi_dsi_msg* %25)
  %27 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %28 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %27, i32 0, i32 0
  %29 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %28, align 8
  %30 = icmp ne %struct.dw_mipi_dsi* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %33 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %32, i32 0, i32 0
  %34 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %33, align 8
  %35 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %36 = call i32 @dw_mipi_message_config(%struct.dw_mipi_dsi* %34, %struct.mipi_dsi_msg* %35)
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %39 = call i32 @dw_mipi_dsi_write(%struct.dw_mipi_dsi* %38, %struct.mipi_dsi_packet* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %86

44:                                               ; preds = %37
  %45 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %46 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %45, i32 0, i32 0
  %47 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %46, align 8
  %48 = icmp ne %struct.dw_mipi_dsi* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %51 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %50, i32 0, i32 0
  %52 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %51, align 8
  %53 = call i32 @dw_mipi_dsi_write(%struct.dw_mipi_dsi* %52, %struct.mipi_dsi_packet* %7)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %86

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %61 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %66 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %71 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %72 = call i32 @dw_mipi_dsi_read(%struct.dw_mipi_dsi* %70, %struct.mipi_dsi_msg* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %86

77:                                               ; preds = %69
  %78 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %79 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %9, align 4
  br label %84

81:                                               ; preds = %64, %59
  %82 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %75, %56, %42, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.dw_mipi_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @mipi_dsi_create_packet(%struct.mipi_dsi_packet*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dw_mipi_message_config(%struct.dw_mipi_dsi*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @dw_mipi_dsi_write(%struct.dw_mipi_dsi*, %struct.mipi_dsi_packet*) #1

declare dso_local i32 @dw_mipi_dsi_read(%struct.dw_mipi_dsi*, %struct.mipi_dsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
