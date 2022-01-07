; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_packet_sent_handler_vp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_packet_sent_handler_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_packet_sent_handler_data = type { i32, %struct.dsi_data* }
%struct.dsi_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dsi_packet_sent_handler_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_packet_sent_handler_vp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_packet_sent_handler_data*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.dsi_packet_sent_handler_data*
  store %struct.dsi_packet_sent_handler_data* %10, %struct.dsi_packet_sent_handler_data** %5, align 8
  %11 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %12 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %11, i32 0, i32 1
  %13 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  store %struct.dsi_data* %13, %struct.dsi_data** %6, align 8
  %14 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %18 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 30, i32 31
  store i32 %22, i32* %8, align 4
  %23 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @DSI_VC_TE(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @REG_GET(%struct.dsi_data* %23, i32 %25, i32 %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %32 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @complete(i32 %33)
  br label %35

35:                                               ; preds = %30, %2
  ret void
}

declare dso_local i64 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_TE(i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
