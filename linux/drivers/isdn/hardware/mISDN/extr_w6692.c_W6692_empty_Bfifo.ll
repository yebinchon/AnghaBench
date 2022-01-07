; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_empty_Bfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_empty_Bfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_ch = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, %struct.w6692_hw* }
%struct.w6692_hw = type { i8*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: empty_Bfifo %d\0A\00", align 1
@ISDN_P_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: empty_Bfifo ISDN_P_NONE\0A\00", align 1
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RACK = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@FLG_RX_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%s.B%d: No bufferspace for %d bytes\0A\00", align 1
@W_B_RFIFO = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_DFIFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"B%1d-recv %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_ch*, i32)* @W6692_empty_Bfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_empty_Bfifo(%struct.w6692_ch* %0, i32 %1) #0 {
  %3 = alloca %struct.w6692_ch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.w6692_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.w6692_ch* %0, %struct.w6692_ch** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %9 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = load %struct.w6692_hw*, %struct.w6692_hw** %10, align 8
  store %struct.w6692_hw* %11, %struct.w6692_hw** %5, align 8
  %12 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %13 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %18 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ISDN_P_NONE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %28 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %32 = load i32, i32* @W_B_CMDR, align 4
  %33 = load i32, i32* @W_B_CMDR_RACK, align 4
  %34 = load i32, i32* @W_B_CMDR_RACT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @WriteW6692B(%struct.w6692_ch* %31, i32 %32, i32 %35)
  %37 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %38 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %44 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @skb_trim(i64 %46, i32 0)
  br label %48

48:                                               ; preds = %42, %26
  br label %149

49:                                               ; preds = %2
  %50 = load i32, i32* @FLG_RX_OFF, align 4
  %51 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %52 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = call i64 @test_bit(i32 %50, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %59 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %64 = load i32, i32* @W_B_CMDR, align 4
  %65 = load i32, i32* @W_B_CMDR_RACK, align 4
  %66 = load i32, i32* @W_B_CMDR_RACT, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @WriteW6692B(%struct.w6692_ch* %63, i32 %64, i32 %67)
  br label %149

69:                                               ; preds = %49
  %70 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %71 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %70, i32 0, i32 0
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @bchannel_get_rxbuf(%struct.TYPE_2__* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %69
  %77 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %78 = load i32, i32* @W_B_CMDR, align 4
  %79 = load i32, i32* @W_B_CMDR_RACK, align 4
  %80 = load i32, i32* @W_B_CMDR_RACT, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @WriteW6692B(%struct.w6692_ch* %77, i32 %78, i32 %81)
  %83 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %84 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %90 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @skb_trim(i64 %92, i32 0)
  br label %94

94:                                               ; preds = %88, %76
  %95 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %96 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %99 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 %101, i32 %102)
  br label %149

104:                                              ; preds = %69
  %105 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %106 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32* @skb_put(i64 %108, i32 %109)
  store i32* %110, i32** %6, align 8
  %111 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %112 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @W_B_RFIFO, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @insb(i64 %115, i32* %116, i32 %117)
  %119 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %120 = load i32, i32* @W_B_CMDR, align 4
  %121 = load i32, i32* @W_B_CMDR_RACK, align 4
  %122 = load i32, i32* @W_B_CMDR_RACT, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @WriteW6692B(%struct.w6692_ch* %119, i32 %120, i32 %123)
  %125 = load i32, i32* @debug, align 4
  %126 = load i32, i32* @DEBUG_HW_DFIFO, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %104
  %130 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %131 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %134 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %138 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @snprintf(i32 %132, i32 63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %136, i8* %139, i32 %140)
  %142 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %143 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @print_hex_dump_bytes(i32 %144, i32 %145, i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %48, %56, %94, %129, %104
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

declare dso_local i32 @skb_trim(i64, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bchannel_get_rxbuf(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*, i32, i32) #1

declare dso_local i32* @skb_put(i64, i32) #1

declare dso_local i32 @insb(i64, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
