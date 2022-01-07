; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 (i32, i64, i32*, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: B%1d %d\0A\00", align 1
@FLG_RX_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s.B%d: No bufferspace for %d bytes\0A\00", align 1
@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPACX_RFIFOB = common dso_local global i64 0, align 8
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"B%1d-recv %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*, i32)* @hscx_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_empty_fifo(%struct.hscx_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.hscx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hscx_hw* %0, %struct.hscx_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %8 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %13 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %15, i32 %16)
  %18 = load i32, i32* @FLG_RX_OFF, align 4
  %19 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %20 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = call i64 @test_bit(i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %27 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %32 = call i32 @hscx_cmdr(%struct.hscx_hw* %31, i32 128)
  br label %149

33:                                               ; preds = %2
  %34 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %35 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %34, i32 0, i32 2
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bchannel_get_rxbuf(%struct.TYPE_4__* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %42 = call i32 @hscx_cmdr(%struct.hscx_hw* %41, i32 128)
  %43 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %44 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %50 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @skb_trim(i64 %52, i32 0)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %56 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %61 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %63, i32 %64)
  br label %149

66:                                               ; preds = %33
  %67 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %68 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32* @skb_put(i64 %70, i32 %71)
  store i32* %72, i32** %5, align 8
  %73 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %74 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %66
  %82 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %83 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %85, align 8
  %87 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %88 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %93 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IPACX_RFIFOB, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 %86(i32 %91, i64 %96, i32* %97, i32 %98)
  br label %117

100:                                              ; preds = %66
  %101 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %102 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %104, align 8
  %106 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %107 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %112 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 %105(i32 %110, i64 %113, i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %100, %81
  %118 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %119 = call i32 @hscx_cmdr(%struct.hscx_hw* %118, i32 128)
  %120 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %121 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %117
  %128 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %129 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %132 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %136 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @snprintf(i32 %130, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %134, i8* %139, i32 %140)
  %142 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %143 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @print_hex_dump_bytes(i32 %144, i32 %145, i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %24, %54, %127, %117
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hscx_cmdr(%struct.hscx_hw*, i32) #1

declare dso_local i32 @bchannel_get_rxbuf(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @skb_trim(i64, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*, i32, i32) #1

declare dso_local i32* @skb_put(i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
