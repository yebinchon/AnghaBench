; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fw_card*, i32*)* }
%struct.fw_request = type { i64, i32, i32*, i32* }

@.str = private unnamed_addr constant [33 x i8] c"invalid for FCP address handlers\00", align 1
@ACK_PENDING = common dso_local global i64 0, align 8
@RCODE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_send_response(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca %struct.fw_request*, align 8
  %6 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store %struct.fw_request* %1, %struct.fw_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %8 = icmp ne %struct.fw_request* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ONCE(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %66

14:                                               ; preds = %3
  %15 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %16 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACK_PENDING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %22 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @HEADER_DESTINATION_IS_BROADCAST(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20, %14
  %29 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %30 = call i32 @kfree(%struct.fw_request* %29)
  br label %66

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RCODE_COMPLETE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %37 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %36, i32 0, i32 1
  %38 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %39 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %43 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %46 = call i32 @fw_get_response_length(%struct.fw_request* %45)
  %47 = call i32 @fw_fill_response(i32* %37, i32* %40, i32 %41, i32* %44, i32 %46)
  br label %56

48:                                               ; preds = %31
  %49 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %50 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %49, i32 0, i32 1
  %51 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %52 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @fw_fill_response(i32* %50, i32* %53, i32 %54, i32* null, i32 0)
  br label %56

56:                                               ; preds = %48, %35
  %57 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %58 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.fw_card*, i32*)*, i32 (%struct.fw_card*, i32*)** %60, align 8
  %62 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %63 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %64 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %63, i32 0, i32 1
  %65 = call i32 %61(%struct.fw_card* %62, i32* %64)
  br label %66

66:                                               ; preds = %56, %28, %13
  ret void
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @HEADER_DESTINATION_IS_BROADCAST(i32) #1

declare dso_local i32 @kfree(%struct.fw_request*) #1

declare dso_local i32 @fw_fill_response(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @fw_get_response_length(%struct.fw_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
