; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_handle_cmd_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_handle_cmd_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_packet = type { i64 }
%struct.message = type { i32, i32, i32, i32 }

@PACKET_DEV_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Received unexpected write response: length=%x\0A\00", align 1
@PACKET_DEV_TPAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"modeswitch done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*, %struct.spi_packet*, %struct.message*)* @applespi_handle_cmd_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_handle_cmd_response(%struct.applespi_data* %0, %struct.spi_packet* %1, %struct.message* %2) #0 {
  %4 = alloca %struct.applespi_data*, align 8
  %5 = alloca %struct.spi_packet*, align 8
  %6 = alloca %struct.message*, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %4, align 8
  store %struct.spi_packet* %1, %struct.spi_packet** %5, align 8
  store %struct.message* %2, %struct.message** %6, align 8
  %7 = load %struct.spi_packet*, %struct.spi_packet** %5, align 8
  %8 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PACKET_DEV_INFO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.message*, %struct.message** %6, align 8
  %14 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = icmp eq i32 %16, 4128
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.message*, %struct.message** %6, align 8
  %20 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %23 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %25 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %24, i32 0, i32 1
  %26 = call i32 @schedule_work(i32* %25)
  br label %67

27:                                               ; preds = %12, %3
  %28 = load %struct.message*, %struct.message** %6, align 8
  %29 = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %35 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.message*, %struct.message** %6, align 8
  %39 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = call i32 @dev_warn_ratelimited(i32* %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %67

43:                                               ; preds = %27
  %44 = load %struct.spi_packet*, %struct.spi_packet** %5, align 8
  %45 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PACKET_DEV_TPAD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.message*, %struct.message** %6, align 8
  %51 = getelementptr inbounds %struct.message, %struct.message* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = icmp eq i32 %53, 594
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.message*, %struct.message** %6, align 8
  %57 = getelementptr inbounds %struct.message, %struct.message* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %63 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %18, %33, %61, %55, %49, %43
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
