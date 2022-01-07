; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_io_read_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_io_read_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, i32, %struct.dvb_ca_slot* }
%struct.dvb_ca_slot = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DVB_CA_SLOTSTATE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32*, i32*)* @dvb_ca_en50221_io_read_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_io_read_condition(%struct.dvb_ca_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca %struct.dvb_ca_slot*, align 8
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %88, %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ false, %19 ], [ %28, %25 ]
  br i1 %30, label %31, label %97

31:                                               ; preds = %29
  %32 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %32, i32 0, i32 2
  %34 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %34, i64 %36
  store %struct.dvb_ca_slot* %37, %struct.dvb_ca_slot** %15, align 8
  %38 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %15, align 8
  %39 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DVB_CA_SLOTSTATE_RUNNING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %88

44:                                               ; preds = %31
  %45 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %15, align 8
  %46 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %102

51:                                               ; preds = %44
  %52 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %15, align 8
  %53 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %52, i32 0, i32 1
  %54 = call i32 @dvb_ringbuffer_pkt_next(%struct.TYPE_3__* %53, i32 -1, i64* %11)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %82, %51
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %87

58:                                               ; preds = %55
  %59 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %15, align 8
  %60 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %59, i32 0, i32 1
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %63 = call i32 @dvb_ringbuffer_pkt_read(%struct.TYPE_3__* %60, i32 %61, i32 0, i32* %62, i32 2)
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  store i32 1, i32* %13, align 4
  br label %87

82:                                               ; preds = %74, %69
  %83 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %15, align 8
  %84 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %83, i32 0, i32 1
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @dvb_ringbuffer_pkt_next(%struct.TYPE_3__* %84, i32 %85, i64* %11)
  store i32 %86, i32* %10, align 4
  br label %55

87:                                               ; preds = %79, %55
  br label %88

88:                                               ; preds = %87, %43
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %92 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %90, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %19

97:                                               ; preds = %29
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %100 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %50
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @dvb_ringbuffer_pkt_next(%struct.TYPE_3__*, i32, i64*) #1

declare dso_local i32 @dvb_ringbuffer_pkt_read(%struct.TYPE_3__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
